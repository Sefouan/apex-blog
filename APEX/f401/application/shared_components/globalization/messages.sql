prompt --application/shared_components/globalization/messages
begin
null;
end;
/
begin
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(7036756648298659)
,p_name=>'BLOG_GENERIC_ERROR'
,p_message_text=>'Ooops... We are sorry! Unexpected internal error have occurred.'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(26263231362694367)
,p_name=>'BLOG_MSG_NO_DATA_FOUND'
,p_message_text=>'No Records Found'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(7042120500196275)
,p_name=>'BLOG_RSS_TITLE'
,p_message_text=>'%0 &raquo; Feed'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(30074031496663213)
,p_name=>'BLOG_TXT_CATEGORY'
,p_message_text=>'Category'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(31915575291785585)
,p_name=>'BLOG_TXT_MODERATE_ENABLED'
,p_message_text=>'Comment moderation has been enabled. All comments must be approved by the blog author.'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(24586810319770154)
,p_name=>'BLOG_TXT_POSTED_BY'
,p_message_text=>'Posted by'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(24586617313766281)
,p_name=>'BLOG_TXT_POSTED_ON'
,p_message_text=>'Posted on'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(24586418712760715)
,p_name=>'BLOG_TXT_READ_MORE'
,p_message_text=>'Continue Reading'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(24587228624778564)
,p_name=>'BLOG_TXT_TAGS'
,p_message_text=>'Tags'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(26884343793378938)
,p_name=>'BLOG_VALIDATION_ERR_COMMENT_HTML'
,p_message_text=>'Check that allowed HTML tags are entered properly.'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(26897874228793079)
,p_name=>'BLOG_VALIDATION_ERR_COMMENT_LENGTH'
,p_message_text=>'Comment is too long.'
);
end;
/
