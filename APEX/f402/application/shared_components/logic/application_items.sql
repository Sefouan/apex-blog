prompt --application/shared_components/logic/application_items
begin
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(6653797369625590)
,p_name=>'G_APP_DESC'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(8615126468915955)
,p_name=>'G_APP_NAME'
,p_protection_level=>'I'
,p_item_comment=>'Application name'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(8905163685110392)
,p_name=>'G_BLOGGER_ID'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(27184479427659749)
,p_name=>'G_BLOGGER_NAME'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(20114488870624156)
,p_name=>'G_BLOG_STATIC_FILES'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(8614919463913657)
,p_name=>'G_POST_TITLE_DATE_FORMAT'
,p_protection_level=>'I'
,p_item_comment=>'Post title date format in details view'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(4233652519065297)
,p_name=>'G_PUB_APP_ID'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(9007343053756881)
,p_name=>'G_USER_DATE_TIME_FORMAT'
,p_protection_level=>'I'
,p_item_comment=>'Application date time format'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(19066396643849216)
,p_name=>'G_USER_INPUT_DATE_TIME_FORMAT'
,p_protection_level=>'I'
);
end;
/
