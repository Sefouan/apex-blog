prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(6877050287267426)
,p_name=>'Links'
,p_alias=>'LINKS'
,p_step_title=>'Links | &G_APP_NAME.'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(20718112665951240)
,p_html_page_header=>'"BLOG_CANONICAL_LINK_TAB"'
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(6905258727754156)
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'LAINFJAR'
,p_last_upd_yyyymmddhh24miss=>'20200519073002'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25312381302124218)
,p_plug_name=>'Links Container'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody:margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(6802870362267386)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>9
,p_plug_display_column=>1
,p_plug_display_point=>'BODY'
,p_translate_title=>'N'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_caching=>'CACHE'
,p_plug_caching_max_age_in_sec=>31536000
,p_plug_cache_when_cond_type=>'PLSQL_EXPRESSION'
,p_plug_cache_when_condition_e1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_util.get_build_option_status(',
'   p_application_id => :APP_ID',
'  ,p_build_option_name => ''BLOG_FEATURE_SEARCH_LINKS''',
') = ''EXCLUDE''',
''))
,p_plug_cache_depends_on_items=>'APP_REQUEST_DATA_HASH'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6899425042645290)
,p_name=>'Links'
,p_parent_plug_id=>wwv_flow_api.id(25312381302124218)
,p_template=>wwv_flow_api.id(6802870362267386)
,p_display_sequence=>20
,p_region_css_classes=>'z-MediaList'
,p_region_sub_css_classes=>'z-hidden'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--stacked:t-Region--scrollBody:t-Form--noPadding:t-Form--large:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-MediaList--stack:t-MediaList--iconsRounded:t-Report--hideNoPagination'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with list_data as (',
'  select',
'     v1.group_id',
'    ,v1.group_title',
'    ,v1.link_title',
'    ,v1.link_desc',
'    ,v1.link_url',
'    ,v1.group_display_seq',
'    ,v1.display_seq',
'    ,row_number() over( partition by v1.group_title order by v1.display_seq ) as rn',
'  from blog_v_links v1',
'  where 1 = 1',
'  and (',
'    :P10_SEARCH_LINKS is null or',
'    (',
'      :P10_SEARCH_LINKS is not null and',
'      (',
'        instr( upper( v1.link_title ), upper( :P10_SEARCH_LINKS ) ) > 0 or',
'        instr( upper( v1.link_desc ), upper( :P10_SEARCH_LINKS ) ) > 0',
'      )',
'    )',
'  )',
')',
'select',
'   q1.group_title         as link_group',
'  ,q1.link_title          as list_title',
'  ,q1.link_desc           as list_text',
'  ,null                   as list_class',
'  ,null                   as list_badge',
'  ,''fa fa-external-link''  as icon_class',
'  ,''u-color-''',
'   || to_char( mod( q1.rn * -1 + 1, 45 ) * -1 + 1 )',
'   || ''-bg''               as icon_color_class',
'  ,q1.link_url            as link',
'  ,''target="_blank"''      as link_attr',
'  ,null                   as link_class',
'  ,q1.group_display_seq   as group_display_seq',
'  ,q1.display_seq         as display_seq',
'  ,1                      as display_order',
'from list_data q1',
'',
'union all',
'-- When no data found',
'select',
'   v2.group_title         as link_group',
'  ,null                   as list_title',
'  ,txt.nodatafound        as list_text',
'  ,''z-noDataFound''        as list_class',
'  ,null                   as list_badge',
'  ,''z-hidden''             as icon_class',
'  ,''z-hidden''             as icon_color_class',
'  ,null                   as link',
'  ,null                   as link_attr',
'  ,null                   as link_class',
'  ,v2.group_display_seq   as group_display_seq',
'  ,null                   as display_seq',
'  ,2                      as display_order',
'from blog_v_link_groups v2',
'cross join (',
'  select apex_lang.message( ''BLOG_MSG_NO_DATA_FOUND'') as nodatafound',
'  from dual',
') txt',
'where 1 = 1',
'and :P10_SEARCH_LINKS is not null',
'and not exists(',
'  select 1',
'  from list_data x1',
'  where 1 = 1',
'  and x1.group_id = v2.group_id',
')',
'order by display_order',
'  ,group_display_seq',
'  ,display_seq'))
,p_optimizer_hint=>'APEX$USE_NO_PAGINATION'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10_SEARCH_LINKS'
,p_query_row_template=>wwv_flow_api.id(6815219261267393)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'1'
,p_query_no_data_found=>'&APP_TEXT$BLOG_MSG_NO_DATA_FOUND.'
,p_query_row_count_max=>100
,p_break_type_flag=>'REPEAT_HEADINGS_ON_BREAK_1'
,p_break_repeat_heading_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<h3 class="z-listStacked--Header z-MediaList">#COLUMN_VALUE#</h3>',
'<ul class="t-MediaList t-MediaList--showDesc t-MediaList--showIcons t-MediaList--stack t-MediaList--iconsRounded">'))
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3879733779180114)
,p_query_column_id=>1
,p_column_alias=>'LINK_GROUP'
,p_column_display_sequence=>1
,p_column_heading=>'Link Group'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6932489553156637)
,p_query_column_id=>2
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>2
,p_column_heading=>'List Title'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6932717290156639)
,p_query_column_id=>3
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>3
,p_column_heading=>'List Text'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6933094682156643)
,p_query_column_id=>4
,p_column_alias=>'LIST_CLASS'
,p_column_display_sequence=>6
,p_column_heading=>'List Class'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6933440945156647)
,p_query_column_id=>5
,p_column_alias=>'LIST_BADGE'
,p_column_display_sequence=>9
,p_column_heading=>'List Badge'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6933378544156646)
,p_query_column_id=>6
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>8
,p_column_heading=>'Icon Class'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6933158603156644)
,p_query_column_id=>7
,p_column_alias=>'ICON_COLOR_CLASS'
,p_column_display_sequence=>7
,p_column_heading=>'Icon Color Class'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6932917055156641)
,p_query_column_id=>8
,p_column_alias=>'LINK'
,p_column_display_sequence=>4
,p_column_heading=>'Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6933569048156648)
,p_query_column_id=>9
,p_column_alias=>'LINK_ATTR'
,p_column_display_sequence=>10
,p_column_heading=>'Link Attr'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6932948311156642)
,p_query_column_id=>10
,p_column_alias=>'LINK_CLASS'
,p_column_display_sequence=>5
,p_column_heading=>'Link Class'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25312116470124216)
,p_query_column_id=>11
,p_column_alias=>'GROUP_DISPLAY_SEQ'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25312210436124217)
,p_query_column_id=>12
,p_column_alias=>'DISPLAY_SEQ'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26380880399542601)
,p_query_column_id=>13
,p_column_alias=>'DISPLAY_ORDER'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25311756072124212)
,p_plug_name=>'Search from Links'
,p_parent_plug_id=>wwv_flow_api.id(25312381302124218)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--stacked:t-Region--scrollBody:t-Form--large:t-Form--stretchInputs:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(6802870362267386)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_required_patch=>wwv_flow_api.id(25684767186283357)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25675531094209086)
,p_name=>'P10_SEARCH_LINKS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(25311756072124212)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Links Search'
,p_placeholder=>'Search on links...'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6854381477267413)
,p_item_css_classes=>'padding-sm'
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_restricted_characters=>'NO_SPECIAL_CHAR_NL'
,p_required_patch=>wwv_flow_api.id(25684767186283357)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'SEARCH'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(25680634479245323)
,p_name=>'Perform Search'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_SEARCH_LINKS'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.which === apex.jQuery.ui.keyCode.ENTER'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
,p_required_patch=>wwv_flow_api.id(25684767186283357)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25681057447245326)
,p_event_id=>wwv_flow_api.id(25680634479245323)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6899425042645290)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25681512200245326)
,p_event_id=>wwv_flow_api.id(25680634479245323)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
end;
/
