prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'BLOG_040000')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Blog Public Pages')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'BLOG')
,p_application_group=>3742713376965422
,p_application_group_name=>'BLOG_040000'
,p_application_group_comment=>'APEX Blog'
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'A62184636C79274387CBB6C9840762CA531D62DEA8CD2BD8BA55E607E36A7AF2'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'19.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>'Application created from create application wizard 2019.04.21.'
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(25278990329788475)
,p_application_tab_set=>1
,p_logo_type=>'C'
,p_logo=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span class="z-app-logo">',
'  <span class="z-app-name">&G_APP_NAME.</span>',
'  <small class="z-app-desc">&G_APP_DESC.</small>',
'</span>'))
,p_app_builder_icon_name=>'app-icon.svg'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'DD.MM.YYYY'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_deep_linking=>'Y'
,p_rejoin_existing_sessions=>'P'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_error_handling_function=>'#OWNER#.blog_util.apex_error_handler'
,p_substitution_string_01=>'G_PUB_APP_ID'
,p_substitution_value_01=>'YES'
,p_last_updated_by=>'LAINFJAR'
,p_last_upd_yyyymmddhh24miss=>'20200701092918'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>98
,p_ui_type_name => null
);
end;
/
