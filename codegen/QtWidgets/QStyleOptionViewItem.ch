%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

/*
enum QStyleOptionViewItem::StyleOptionType
*/
#define QStyleOptionViewItem_Type                                    QStyleOption_SO_ViewItem

/*
enum QStyleOptionViewItem::StyleOptionVersion
*/
#define QStyleOptionViewItem_Version                                 4

/*
enum QStyleOptionViewItem::Position
*/
#define QStyleOptionViewItem_Left                                    0
#define QStyleOptionViewItem_Right                                   1
#define QStyleOptionViewItem_Top                                     2
#define QStyleOptionViewItem_Bottom                                  3

/*
enum QStyleOptionViewItem::ViewItemFeature
flags QStyleOptionViewItem::ViewItemFeatures
*/
#define QStyleOptionViewItem_None                                    0x00
#define QStyleOptionViewItem_WrapText                                0x01
#define QStyleOptionViewItem_Alternate                               0x02
#define QStyleOptionViewItem_HasCheckIndicator                       0x04
#define QStyleOptionViewItem_HasDisplay                              0x08
#define QStyleOptionViewItem_HasDecoration                           0x10

/*
enum QStyleOptionViewItem::ViewItemPosition
*/
#define QStyleOptionViewItem_Invalid                                 0
#define QStyleOptionViewItem_Beginning                               1
#define QStyleOptionViewItem_Middle                                  2
#define QStyleOptionViewItem_End                                     3
#define QStyleOptionViewItem_OnlyOne                                 4
