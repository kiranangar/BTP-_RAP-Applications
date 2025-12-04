CLASS zcl_demo_data_provider DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_demo_data_provider IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.



    DATA(ls_ebr_header) = VALUE zebr_header(
     ebr_uuid =  '1'
    batch_number = 'BATCH-2024-001'
    product_id = 'PROD-12345'
    product_name = 'Aspirin 500mg Tablets'
    production_order = 'PO-2024-001'
    plant = 'P001'
    creation_date = '20240115'
    creation_time = '083000'
    status = 'COMPLETED'
    created_by = 'JSMITH'
    created_at = '2024-01-15T08:30:00'
    last_changed_by = 'JSMITH'
    last_changed_at = '2024-01-15T16:45:00'
    ).

    INSERT zebr_header FROM @ls_ebr_header.
    IF sy-subrc = 0.
        out->write( 'Success' ).
    ENDIF.
    DATA(ls_ebr_material) = VALUE zebr_material(

        material_uuid = 'm1'
        ebr_uuid = '1'
        material_id = 'MAT-001'
        material_description = 'Active Pharmaceutical Ingredient'
        quantity = 100
        unit_of_measure = 'KG'
        batch = 'MATBAT-001'
        storage_location = 'WH01'
        created_at = '2024-01-15T08:30:00'
     ).


    INSERT zebr_material FROM @ls_ebr_material.
    IF sy-subrc = 0.
        out->write( 'Success' ).
    ENDIF.

    DATA(ls_ebr_prodord) = VALUE zebr_prodord(

        prodord_uuid = 'po1'
        ebr_uuid = '1'
        order_type = 'PROD'
        planned_start_date = '20240115'
        planned_start_time = '080000'
        planned_end_date = '20240115'
        planned_end_time = '160000'
        actual_start_date = '20240115'
        actual_start_time = '083000'
        actual_end_date = '20240115'
        actual_end_time = '164500'
        work_center = 'WC-001'
        operation_number = '0010'
    ).

    INSERT zebr_prodord FROM @ls_ebr_prodord.
    IF sy-subrc = 0.
        out->write( 'Success' ).
    ENDIF.


    DATA(ls_ebr_params) = VALUE zebr_params(


        param_uuid = 'pp1'
        ebr_uuid = '1'
        parameter_name = 'Temperature'
        parameter_value = '25.5'
        unit_of_measure = '°C'
        timestamp = '2024-01-15T10:00:00'
        source_system = 'MES'
        operation_number = '0010'
      ).

    INSERT zebr_params FROM @ls_ebr_params.
    IF sy-subrc = 0.
        out->write( 'Success' ).
    ENDIF.

    ls_ebr_params = VALUE zebr_params(
        param_uuid = 'pp2'
        ebr_uuid = '1'
        parameter_name = 'Pressure'
        parameter_value = '1.2'
        unit_of_measure = 'bar'
        timestamp = '2024-01-15T10:00:00'
        source_system = 'MES'
        operation_number = '0010'
  ).
    INSERT zebr_params FROM @ls_ebr_params.
    IF sy-subrc = 0.
        out->write( 'Success' ).
    ENDIF.

    DATA(ls_ebr_quality) = VALUE zebr_quality(
          quality_uuid = 'q1'
          ebr_uuid = '1'
          inspection_lot = 'IL-001'
          characteristic = 'Purity'
          qc_result = '99.5'
          target_value = '99.0'
          lower_limit = '98.5'
          upper_limit = '100.0'
          inspection_date = '20240115'
          inspection_time = '150000'
          inspector = 'QCINSP01'
          status = 'PASSED'
      ).
    INSERT zebr_quality FROM @ls_ebr_quality.
    IF sy-subrc = 0.
        out->write( 'Success' ).
    ENDIF.

    DATA(ls_ebr_deviations) = VALUE zebr_deviation(

        deviation_uuid = 'd1'
        ebr_uuid = '1'
        deviation_description = 'Temperature spike during mixing phase'
        deviation_type = 'PROCESS'
        severity = 'MEDIUM'
        reported_by = 'OPERATOR01'
        report_date = '20240115'
        report_time = '113000'
        status = 'RESOLVED'
        resolution = 'Adjusted cooling system parameters'
        resolved_by = 'MAINT01'
        resolution_date = '20240115'
        resolution_time = '120000'
      ).

    INSERT zebr_deviation FROM @ls_ebr_deviations.
        IF sy-subrc = 0.
        out->write( 'Success' ).
    ENDIF.

    DATA(ls_signature) = VALUE zebr_signature(


      signature_uuid = 's1'
      ebr_uuid = '1'
      user_id = 'JSMITH'
      user_name = 'John Smith'
      signature_purpose = 'REVIEW'
      signature_meaning = 'Reviewed and verified batch record'
      timestamp = '2024-01-15T17:00:00'
      ip_address = '192.168.1.100'
      signature_reason = 'Batch completion review'

      ).
    INSERT zebr_signature FROM @ls_signature.
        IF sy-subrc = 0.
        out->write( 'Success' ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
