CLASS lhc_ZI_EBR_HEADER DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR BatchRecord RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR BatchRecord RESULT result.
    METHODS approve FOR MODIFY
      IMPORTING keys FOR ACTION batchrecord~approve RESULT result.

    METHODS complete FOR MODIFY
      IMPORTING keys FOR ACTION batchrecord~complete RESULT result.

    METHODS reject FOR MODIFY
      IMPORTING keys FOR ACTION batchrecord~reject RESULT result.

    METHODS sync_to_cpi FOR MODIFY
      IMPORTING keys FOR ACTION batchrecord~sync_to_cpi RESULT result.

    METHODS set_tenant FOR DETERMINE ON MODIFY
      IMPORTING keys FOR batchrecord~set_tenant.

    METHODS set_timestamps FOR DETERMINE ON MODIFY
      IMPORTING keys FOR batchrecord~set_timestamps.

    METHODS set_uuid FOR DETERMINE ON MODIFY
      IMPORTING keys FOR batchrecord~set_uuid.

    METHODS set_version FOR DETERMINE ON MODIFY
      IMPORTING keys FOR batchrecord~set_version.

*    METHODS validate_batch_number FOR VALIDATE ON SAVE
*      IMPORTING keys FOR batchrecord~validate_batch_number.
*
*    METHODS validate_status_transition FOR VALIDATE ON SAVE
*      IMPORTING keys FOR batchrecord~validate_status_transition.
*
*    METHODS validate_tenant_access FOR VALIDATE ON SAVE
*      IMPORTING keys FOR batchrecord~validate_tenant_access.

ENDCLASS.

CLASS lhc_ZI_EBR_HEADER IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD approve.
  ENDMETHOD.

  METHOD complete.
  ENDMETHOD.

  METHOD reject.
  ENDMETHOD.

  METHOD sync_to_cpi.
  ENDMETHOD.

  METHOD set_tenant.
  ENDMETHOD.

  METHOD set_timestamps.
  ENDMETHOD.

  METHOD set_uuid.
   " Generate UUID v4 for cloud-safe unique identification
   " DATA(lo_uuid) = cl_uuid_factory=>create_system_uuid( ).
   " rv_uuid = lo_uuid->get_uuid( ).
  ENDMETHOD.

  METHOD set_version.
  ENDMETHOD.

*  METHOD validate_batch_number.
*  ENDMETHOD.
*
*  METHOD validate_status_transition.
*  ENDMETHOD.
*
*  METHOD validate_tenant_access.
*  ENDMETHOD.

ENDCLASS.
