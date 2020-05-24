prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(6876779235267426)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_api.id(27920818779089933)
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(8590719729560000)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Info'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6892786786267448)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6893288762267448)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(6892786786267448)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6893638948267449)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_api.id(6892786786267448)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/