prompt --application/shared_components/user_interface/lovs/link_status
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(36215367226602541)
,p_lov_name=>'LINK_STATUS'
,p_lov_query=>'.'||wwv_flow_api.id(36215367226602541)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(36215627435602551)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Enabled'
,p_lov_return_value=>'ENABLED'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(36216068240602552)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Disabled'
,p_lov_return_value=>'DISABLED'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(36216465067602552)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Link Collection is Disabled'
,p_lov_return_value=>'GROUP_DISABLED'
);
end;
/
