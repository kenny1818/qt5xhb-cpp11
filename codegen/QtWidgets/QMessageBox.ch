%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

/*
enum QMessageBox::ButtonRole
*/
#define QMessageBox_InvalidRole                                      -1
#define QMessageBox_AcceptRole                                       0
#define QMessageBox_RejectRole                                       1
#define QMessageBox_DestructiveRole                                  2
#define QMessageBox_ActionRole                                       3
#define QMessageBox_HelpRole                                         4
#define QMessageBox_YesRole                                          5
#define QMessageBox_NoRole                                           6
#define QMessageBox_ResetRole                                        7
#define QMessageBox_ApplyRole                                        8
#define QMessageBox_NRoles                                           9

/*
enum QMessageBox::Icon
*/
#define QMessageBox_NoIcon                                           0
#define QMessageBox_Information                                      1
#define QMessageBox_Warning                                          2
#define QMessageBox_Critical                                         3
#define QMessageBox_Question                                         4

/*
enum QMessageBox::StandardButton
flags QMessageBox::StandardButtons
*/
#define QMessageBox_NoButton                                         0x00000000
#define QMessageBox_Ok                                               0x00000400
#define QMessageBox_Save                                             0x00000800
#define QMessageBox_SaveAll                                          0x00001000
#define QMessageBox_Open                                             0x00002000
#define QMessageBox_Yes                                              0x00004000
#define QMessageBox_YesToAll                                         0x00008000
#define QMessageBox_No                                               0x00010000
#define QMessageBox_NoToAll                                          0x00020000
#define QMessageBox_Abort                                            0x00040000
#define QMessageBox_Retry                                            0x00080000
#define QMessageBox_Ignore                                           0x00100000
#define QMessageBox_Close                                            0x00200000
#define QMessageBox_Cancel                                           0x00400000
#define QMessageBox_Discard                                          0x00800000
#define QMessageBox_Help                                             0x01000000
#define QMessageBox_Apply                                            0x02000000
#define QMessageBox_Reset                                            0x04000000
#define QMessageBox_RestoreDefaults                                  0x08000000
#define QMessageBox_FirstButton                                      QMessageBox_Ok              // internal
#define QMessageBox_LastButton                                       QMessageBox_RestoreDefaults // internal
#define QMessageBox_YesAll                                           QMessageBox_YesToAll        // obsolete
#define QMessageBox_NoAll                                            QMessageBox_NoToAll         // obsolete
#define QMessageBox_Default                                          0x00000100                  // obsolete
#define QMessageBox_Escape                                           0x00000200                  // obsolete
#define QMessageBox_FlagMask                                         0x00000300                  // obsolete
#define QMessageBox_ButtonMask                                       ~QMessageBox_FlagMask       // obsolete
