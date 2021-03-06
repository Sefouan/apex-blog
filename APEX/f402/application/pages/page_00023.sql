prompt --application/pages/page_00023
begin
wwv_flow_api.create_page(
 p_id=>23
,p_user_interface_id=>wwv_flow_api.id(8571044485518264)
,p_name=>'Confirm Overwrite File(s)'
,p_alias=>'OVERWRITE-FILES'
,p_page_mode=>'MODAL'
,p_step_title=>'Confirm'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(18976025248736506)
,p_step_template=>wwv_flow_api.id(8456403392518180)
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding'
,p_protection_level=>'C'
,p_last_updated_by=>'LAINFJAR'
,p_last_upd_yyyymmddhh24miss=>'20200512192517'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(20788260829204935)
,p_name=>'Existing Files'
,p_template=>wwv_flow_api.id(8475523710518195)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff:t-Report--inline:t-Report--hideNoPagination'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select file_name',
'  ,file_desc',
'from blog_v_temp_files',
'where 1 = 1',
'and id is not null',
'order by seq_id'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(8519378220518224)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'&APP_TEXT$BLOG_MSG_NO_DATA_FOUND.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20870375702655427)
,p_query_column_id=>1
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20871057366655434)
,p_query_column_id=>2
,p_column_alias=>'FILE_DESC'
,p_column_display_sequence=>2
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42276090132632147)
,p_plug_name=>'Confirm Message'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning:t-Alert--removeHeading:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(8471603023518189)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>'&APP_TEXT$BLOG_CONFIRM_FILE_OVERWRITE.'
,p_translate_title=>'N'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51179944494147454)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding'
,p_plug_template=>wwv_flow_api.id(8476383962518195)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_translate_title=>'N'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(20848395555229650)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(51179944494147454)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(8549262062518244)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-remove'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(20848785633229650)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(51179944494147454)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(8549262062518244)
,p_button_image_alt=>'Replace File(s)'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(20849195464231343)
,p_name=>'Close Dialog'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(20848395555229650)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20849511490231343)
,p_event_id=>wwv_flow_api.id(20849195464231343)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(20871644238655440)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process File Upload'
,p_process_sql_clob=>'#OWNER#.blog_cm.merge_files;'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24909805179771837)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'File(s) uploaded'
);
end;
/
