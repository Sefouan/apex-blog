prompt --application/pages/page_20012
begin
wwv_flow_api.create_page(
 p_id=>20012
,p_user_interface_id=>wwv_flow_api.id(8571044485518264)
,p_name=>'Basic Settings'
,p_alias=>'BASIC-SETTINGS'
,p_page_mode=>'MODAL'
,p_step_title=>'Basic Settings'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(8574375481518289)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'blog.admin.tagsIG.initOnPageLoad({',
'  regionID: "preferences"',
'  ,btnSave: "btn-ig-save"',
'});'))
,p_step_template=>wwv_flow_api.id(8456403392518180)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_protection_level=>'C'
,p_last_updated_by=>'LAINFJAR'
,p_last_upd_yyyymmddhh24miss=>'20200517103357'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27272383079075402)
,p_plug_name=>'Preferences'
,p_region_name=>'preferences'
,p_region_css_classes=>'z-config-ig'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(8495746153518209)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v1.id            as id',
'  ,v1.row_version       as row_version',
'  ,v1.is_nullable       as is_nullable',
'  ,v1.data_type         as data_type',
'  ,v1.post_expression   as post_expression',
'  ,v1.display_seq       as display_seq',
'  ,v1.attribute_desc    as attribute_name',
'  ,v1.attribute_value   as attribute_value',
'  ,v1.attribute_group   as attribute_group',
'  ,v1.changed_by        as changed_by',
'  ,v1.changed_on        as changed_on',
'from #OWNER#.blog_v_all_settings v1',
'where 1 = 1',
'and v1.group_name != ''INTERNAL''',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(27273666138075415)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(27273715372075416)
,p_name=>'ROW_VERSION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROW_VERSION'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(27273843526075417)
,p_name=>'CHANGED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHANGED_ON'
,p_data_type=>'TIMESTAMP_LTZ'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Changed'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_stretch=>'A'
,p_attribute_02=>'VALUE'
,p_format_mask=>'&G_USER_DATE_TIME_FORMAT.'
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>'blog.admin.configIG.initColumn'
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(27273923510075418)
,p_name=>'CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_stretch=>'A'
,p_attribute_02=>'VALUE'
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>'blog.admin.configIG.initColumn'
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(27274008313075419)
,p_name=>'DISPLAY_SEQ'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISPLAY_SEQ'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Sequence'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>false
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(27274156249075420)
,p_name=>'ATTRIBUTE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ATTRIBUTE_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Attribute Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_stretch=>'A'
,p_attribute_02=>'VALUE'
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>'blog.admin.configIG.initColumn'
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(27274299493075421)
,p_name=>'ATTRIBUTE_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ATTRIBUTE_VALUE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Attribute Value'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_stretch=>'A'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>16000
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>'blog.admin.configIG.initColumn'
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(27274656113075425)
,p_name=>'DATA_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATA_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(27275024747075429)
,p_name=>'IS_NULLABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_NULLABLE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(27863103480256830)
,p_name=>'ATTRIBUTE_GROUP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ATTRIBUTE_GROUP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Options'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>false
,p_is_primary_key=>false
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(31248517613982925)
,p_name=>'POST_EXPRESSION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POST_EXPRESSION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(27273553203075414)
,p_internal_uid=>27273553203075414
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'COLUMN'
,p_row_version_column=>'ROW_VERSION'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_fixed_header=>'NONE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>'blog.admin.configIG.initRegion'
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(27305085557698518)
,p_interactive_grid_id=>wwv_flow_api.id(27273553203075414)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(27305179764698519)
,p_report_id=>wwv_flow_api.id(27305085557698518)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27305635511698520)
,p_view_id=>wwv_flow_api.id(27305179764698519)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(27273666138075415)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27306101204698522)
,p_view_id=>wwv_flow_api.id(27305179764698519)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(27273715372075416)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27306661998698523)
,p_view_id=>wwv_flow_api.id(27305179764698519)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(27273843526075417)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>102
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27307154357698525)
,p_view_id=>wwv_flow_api.id(27305179764698519)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(27273923510075418)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>107
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27307971348698527)
,p_view_id=>wwv_flow_api.id(27305179764698519)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(27274008313075419)
,p_is_visible=>false
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27308473644698528)
,p_view_id=>wwv_flow_api.id(27305179764698519)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(27274156249075420)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>326
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27308994449698530)
,p_view_id=>wwv_flow_api.id(27305179764698519)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(27274299493075421)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>329
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27320546428776393)
,p_view_id=>wwv_flow_api.id(27305179764698519)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(27274656113075425)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27331691183910886)
,p_view_id=>wwv_flow_api.id(27305179764698519)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(27275024747075429)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(28295161229136601)
,p_view_id=>wwv_flow_api.id(27305179764698519)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(27863103480256830)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(31502629727548843)
,p_view_id=>wwv_flow_api.id(27305179764698519)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(31248517613982925)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80220063138113444)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding'
,p_plug_template=>wwv_flow_api.id(8476383962518195)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_translate_title=>'N'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27224922474281870)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(80220063138113444)
,p_button_name=>'CLOSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(8549262062518244)
,p_button_image_alt=>'Close'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-remove'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27324432937857302)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(80220063138113444)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(8549262062518244)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'js-actionButton'
,p_icon_css_classes=>'fa-save'
,p_button_cattributes=>'data-action="btn-ig-save"'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(27275185259075430)
,p_tabular_form_region_id=>wwv_flow_api.id(27272383079075402)
,p_validation_name=>'Is not null'
,p_validation_sequence=>10
,p_validation=>'ATTRIBUTE_VALUE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please fill out this field.'
,p_validation_condition=>'IS_NULLABLE'
,p_validation_condition2=>'0'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'ATTRIBUTE_VALUE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(27274827107075427)
,p_tabular_form_region_id=>wwv_flow_api.id(27272383079075402)
,p_validation_name=>'Is Integer'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return #OWNER#.blog_cm.is_integer(',
'   p_value => :ATTRIBUTE_VALUE',
'  ,p_err_mesg => ''BLOG_VALIDATION_ERR_IS_INTEGER''',
');'))
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'DATA_TYPE'
,p_validation_condition2=>'INTEGER'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'ATTRIBUTE_VALUE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(27274966551075428)
,p_tabular_form_region_id=>wwv_flow_api.id(27272383079075402)
,p_validation_name=>'Is date format'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return #OWNER#.blog_cm.is_date_format(',
'   p_value => :ATTRIBUTE_VALUE',
'  ,p_err_mesg => ''BLOG_VALIDATION_ERR_IS_DATE_FORMAT''',
');'))
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'DATA_TYPE'
,p_validation_condition2=>'DATE_FORMAT'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'ATTRIBUTE_VALUE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(27275284361075431)
,p_tabular_form_region_id=>wwv_flow_api.id(27272383079075402)
,p_validation_name=>'Is URL'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return #OWNER#.blog_cm.is_url(',
'   p_value => :ATTRIBUTE_VALUE',
'  ,p_err_mesg => ''BLOG_VALIDATION_ERR_IS_URL''',
');'))
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'DATA_TYPE'
,p_validation_condition2=>'URL'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'ATTRIBUTE_VALUE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(31248169277982921)
,p_tabular_form_region_id=>wwv_flow_api.id(27272383079075402)
,p_validation_name=>'Is email'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return #OWNER#.blog_cm.is_email(',
'   p_value => :ATTRIBUTE_VALUE',
'  ,p_err_mesg => ''BLOG_VALIDATION_ERR_IS_EMAIL''',
');'))
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'DATA_TYPE'
,p_validation_condition2=>'EMAIL'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'ATTRIBUTE_VALUE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27225137385283233)
,p_name=>'Close Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(27224922474281870)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27225583723283233)
,p_event_id=>wwv_flow_api.id(27225137385283233)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27863673994256835)
,p_name=>'Process After Changes'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(27272383079075402)
,p_bind_type=>'bind'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridsave'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27863757403256836)
,p_event_id=>wwv_flow_api.id(27863673994256835)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_util.cache_purge_by_page(',
'   p_application => :G_PUB_APP_ID',
'  ,p_page => 0',
');',
''))
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31248780098982927)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(27272383079075402)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Trim attribute value'
,p_process_sql_clob=>':ATTRIBUTE_VALUE := trim(:ATTRIBUTE_VALUE);'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31248479488982924)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(27272383079075402)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Run post expression'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':ATTRIBUTE_VALUE := apex_plugin_util.get_plsql_expression_result(',
'    p_plsql_expression => :POST_EXPRESSION',
');',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'POST_EXPRESSION'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_exec_cond_for_each_row=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27274503365075424)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(27272383079075402)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Preferences - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/