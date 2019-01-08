%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

$header

/*
enum QNetworkRequest::Attribute
*/
#define QNetworkRequest_HttpStatusCodeAttribute                      0
#define QNetworkRequest_HttpReasonPhraseAttribute                    1
#define QNetworkRequest_RedirectionTargetAttribute                   2
#define QNetworkRequest_ConnectionEncryptedAttribute                 3
#define QNetworkRequest_CacheLoadControlAttribute                    4
#define QNetworkRequest_CacheSaveControlAttribute                    5
#define QNetworkRequest_SourceIsFromCacheAttribute                   6
#define QNetworkRequest_DoNotBufferUploadDataAttribute               7
#define QNetworkRequest_HttpPipeliningAllowedAttribute               8
#define QNetworkRequest_HttpPipeliningWasUsedAttribute               9
#define QNetworkRequest_CustomVerbAttribute                          10
#define QNetworkRequest_CookieLoadControlAttribute                   11
#define QNetworkRequest_AuthenticationReuseAttribute                 12
#define QNetworkRequest_CookieSaveControlAttribute                   13
#define QNetworkRequest_MaximumDownloadBufferSizeAttribute           14
#define QNetworkRequest_DownloadBufferAttribute                      15
#define QNetworkRequest_SynchronousRequestAttribute                  16
#define QNetworkRequest_BackgroundRequestAttribute                   17
#define QNetworkRequest_SpdyAllowedAttribute                         18
#define QNetworkRequest_SpdyWasUsedAttribute                         19
#define QNetworkRequest_EmitAllUploadProgressSignalsAttribute        20
#define QNetworkRequest_FollowRedirectsAttribute                     21
#define QNetworkRequest_HTTP2AllowedAttribute                        22
#define QNetworkRequest_HTTP2WasUsedAttribute                        23
#define QNetworkRequest_OriginalContentLengthAttribute               24
#define QNetworkRequest_RedirectPolicyAttribute                      25
#define QNetworkRequest_User                                         1000
#define QNetworkRequest_UserMax                                      32767

/*
enum QNetworkRequest::CacheLoadControl
*/
#define QNetworkRequest_AlwaysNetwork                                0
#define QNetworkRequest_PreferNetwork                                1
#define QNetworkRequest_PreferCache                                  2
#define QNetworkRequest_AlwaysCache                                  3

/*
enum QNetworkRequest::KnownHeaders
*/
#define QNetworkRequest_ContentTypeHeader                            0
#define QNetworkRequest_ContentLengthHeader                          1
#define QNetworkRequest_LocationHeader                               2
#define QNetworkRequest_LastModifiedHeader                           3
#define QNetworkRequest_CookieHeader                                 4
#define QNetworkRequest_SetCookieHeader                              5
#define QNetworkRequest_ContentDispositionHeader                     6
#define QNetworkRequest_UserAgentHeader                              7
#define QNetworkRequest_ServerHeader                                 8

/*
enum QNetworkRequest::LoadControl
*/
#define QNetworkRequest_Automatic                                    0
#define QNetworkRequest_Manual                                       1

/*
enum QNetworkRequest::Priority
*/
#define QNetworkRequest_HighPriority                                 1
#define QNetworkRequest_NormalPriority                               3
#define QNetworkRequest_LowPriority                                  5

/*
enum QNetworkRequest::RedirectPolicy
*/
#define QNetworkRequest_ManualRedirectPolicy                         0
#define QNetworkRequest_NoLessSafeRedirectPolicy                     1
#define QNetworkRequest_SameOriginRedirectPolicy                     2
#define QNetworkRequest_UserVerifiedRedirectPolicy                   3
