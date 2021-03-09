from transforms.api import transform, Input, Output
from pcornet.utils import add_site_id_col, add_mapped_vocab_code_col, create_datetime_col
from pcornet.site_specific_utils import apply_site_parsing_logic


@transform(
    processed=Output('/UNITE/Data Ingestion & OMOP Mapping/Source Data Model: PCORnet/Site 793/transform/03 - prepared/med_admin'),
    my_input=Input('/UNITE/Data Ingestion & OMOP Mapping/Source Data Model: PCORnet/Site 793/transform/02 - clean/med_admin'),
    site_id_df=Input('/UNITE/Data Ingestion & OMOP Mapping/raw_data/data partner id tables/Data Partner IDs - Site 793'),
    mapping_table=Input('/UNITE/Data Ingestion & OMOP Mapping/Source Data Model: PCORnet/Reference Tables/Vocab ID Mapping/pcornet_vocab_id_mapping_table')
)
def compute_function(my_input, site_id_df, mapping_table, processed):

    processed_df = my_input.dataframe()

    # Add a "data_partner_id" column with the site's id to enable downstream primary key generation
    processed_df = add_site_id_col(processed_df, site_id_df)

    # Apply site-specific parsing logic (if applicable)
    processed_df = apply_site_parsing_logic(processed_df, site_id_df)

    processed_df = create_datetime_col(processed_df, "medadmin_start_date", "medadmin_start_time", "MEDADMIN_START_DATETIME")
    processed_df = create_datetime_col(processed_df, "medadmin_stop_date", "medadmin_stop_time", "MEDADMIN_STOP_DATETIME")

    # Map the vocab code in source_vocab_col to a vocabulary_id that appears in the concept table using the mapping spreadsheet
    mapping_table = mapping_table.dataframe()
    processed_df = add_mapped_vocab_code_col(
        processed_df, mapping_table,
        domain="MED_ADMIN",
        source_vocab_col="medadmin_type",
        mapped_col_name="mapped_medadmin_type"
    )

    processed.write_dataframe(processed_df)