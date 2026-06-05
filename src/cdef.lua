require("ffi").cdef[[
typedef struct FILE FILE;
typedef struct ImDrawChannel ImDrawChannel;
typedef struct ImDrawCmd ImDrawCmd;
typedef struct ImDrawData ImDrawData;
typedef struct ImDrawList ImDrawList;
typedef struct ImDrawListSharedData ImDrawListSharedData;
typedef struct ImDrawListSplitter ImDrawListSplitter;
typedef struct ImDrawVert ImDrawVert;
typedef struct ImFont ImFont;
typedef struct ImFontAtlas ImFontAtlas;
typedef struct ImFontAtlasBuilder ImFontAtlasBuilder;
typedef struct ImFontAtlasRect ImFontAtlasRect;
typedef struct ImFontBaked ImFontBaked;
typedef struct ImFontConfig ImFontConfig;
typedef struct ImFontGlyph ImFontGlyph;
typedef struct ImFontGlyphRangesBuilder ImFontGlyphRangesBuilder;
typedef struct ImFontLoader ImFontLoader;
typedef struct ImTextureData ImTextureData;
typedef struct ImTextureRect ImTextureRect;
typedef struct ImColor_c ImColor_c;
typedef struct ImGuiContext ImGuiContext;
typedef struct ImGuiIO ImGuiIO;
typedef struct ImGuiInputTextCallbackData ImGuiInputTextCallbackData;
typedef struct ImGuiKeyData ImGuiKeyData;
typedef struct ImGuiListClipper ImGuiListClipper;
typedef struct ImGuiMultiSelectIO ImGuiMultiSelectIO;
typedef struct ImGuiOnceUponAFrame ImGuiOnceUponAFrame;
typedef struct ImGuiPayload ImGuiPayload;
typedef struct ImGuiPlatformIO ImGuiPlatformIO;
typedef struct ImGuiPlatformImeData ImGuiPlatformImeData;
typedef struct ImGuiSelectionBasicStorage ImGuiSelectionBasicStorage;
typedef struct ImGuiSelectionExternalStorage ImGuiSelectionExternalStorage;
typedef struct ImGuiSelectionRequest ImGuiSelectionRequest;
typedef struct ImGuiSizeCallbackData ImGuiSizeCallbackData;
typedef struct ImGuiStorage ImGuiStorage;
typedef struct ImGuiStoragePair ImGuiStoragePair;
typedef struct ImGuiStyle ImGuiStyle;
typedef struct ImGuiTableSortSpecs ImGuiTableSortSpecs;
typedef struct ImGuiTableColumnSortSpecs ImGuiTableColumnSortSpecs;
typedef struct ImGuiTextBuffer ImGuiTextBuffer;
typedef struct ImGuiTextFilter ImGuiTextFilter;
typedef struct ImGuiViewport ImGuiViewport;
typedef struct ImBitVector ImBitVector;
typedef struct ImRect_c ImRect_c;
typedef struct ImGuiTextIndex ImGuiTextIndex;
typedef struct ImDrawDataBuilder ImDrawDataBuilder;
typedef struct ImFontAtlasPostProcessData ImFontAtlasPostProcessData;
typedef struct ImFontAtlasRectEntry ImFontAtlasRectEntry;
typedef struct ImGuiBoxSelectState ImGuiBoxSelectState;
typedef struct ImGuiColorMod ImGuiColorMod;
typedef struct ImGuiContextHook ImGuiContextHook;
typedef struct ImGuiDataTypeInfo ImGuiDataTypeInfo;
typedef struct ImGuiDeactivatedItemData ImGuiDeactivatedItemData;
typedef struct ImGuiErrorRecoveryState ImGuiErrorRecoveryState;
typedef struct ImGuiGroupData ImGuiGroupData;
typedef struct ImGuiInputTextState ImGuiInputTextState;
typedef struct ImGuiInputTextDeactivateData ImGuiInputTextDeactivateData;
typedef struct ImGuiLastItemData ImGuiLastItemData;
typedef struct ImGuiLocEntry ImGuiLocEntry;
typedef struct ImGuiMenuColumns ImGuiMenuColumns;
typedef struct ImGuiMultiSelectState ImGuiMultiSelectState;
typedef struct ImGuiMultiSelectTempData ImGuiMultiSelectTempData;
typedef struct ImGuiNavItemData ImGuiNavItemData;
typedef struct ImGuiMetricsConfig ImGuiMetricsConfig;
typedef struct ImGuiNextWindowData ImGuiNextWindowData;
typedef struct ImGuiNextItemData ImGuiNextItemData;
typedef struct ImGuiOldColumnData ImGuiOldColumnData;
typedef struct ImGuiOldColumns ImGuiOldColumns;
typedef struct ImGuiPopupData ImGuiPopupData;
typedef struct ImGuiSettingsHandler ImGuiSettingsHandler;
typedef struct ImGuiStyleMod ImGuiStyleMod;
typedef struct ImGuiStyleVarInfo ImGuiStyleVarInfo;
typedef struct ImGuiTabBar ImGuiTabBar;
typedef struct ImGuiTabItem ImGuiTabItem;
typedef struct ImGuiTable ImGuiTable;
typedef struct ImGuiTableHeaderData ImGuiTableHeaderData;
typedef struct ImGuiTableColumn ImGuiTableColumn;
typedef struct ImGuiTableInstanceData ImGuiTableInstanceData;
typedef struct ImGuiTableTempData ImGuiTableTempData;
typedef struct ImGuiTableSettings ImGuiTableSettings;
typedef struct ImGuiTableColumnsSettings ImGuiTableColumnsSettings;
typedef struct ImGuiTreeNodeStackData ImGuiTreeNodeStackData;
typedef struct ImGuiTypingSelectState ImGuiTypingSelectState;
typedef struct ImGuiTypingSelectRequest ImGuiTypingSelectRequest;
typedef struct ImGuiWindow ImGuiWindow;
typedef struct ImGuiWindowTempData ImGuiWindowTempData;
typedef struct ImGuiWindowSettings ImGuiWindowSettings;
typedef struct STB_TexteditState STB_TexteditState;
typedef struct stbrp_node stbrp_node;
typedef unsigned int ImGuiID;
typedef signed char ImS8;
typedef unsigned char ImU8;
typedef signed short ImS16;
typedef unsigned short ImU16;
typedef signed int ImS32;
typedef unsigned int ImU32;
typedef signed long long ImS64;
typedef unsigned long long ImU64;
struct ImDrawChannel;
struct ImDrawCmd;
struct ImDrawData;
struct ImDrawList;
struct ImDrawListSharedData;
struct ImDrawListSplitter;
struct ImDrawVert;
struct ImFont;
struct ImFontAtlas;
struct ImFontAtlasBuilder;
struct ImFontAtlasRect;
struct ImFontBaked;
struct ImFontConfig;
struct ImFontGlyph;
struct ImFontGlyphRangesBuilder;
struct ImFontLoader;
struct ImTextureData;
struct ImTextureRect;
struct ImColor_c;
struct ImGuiContext;
struct ImGuiIO;
struct ImGuiInputTextCallbackData;
struct ImGuiKeyData;
struct ImGuiListClipper;
struct ImGuiMultiSelectIO;
struct ImGuiOnceUponAFrame;
struct ImGuiPayload;
struct ImGuiPlatformIO;
struct ImGuiPlatformImeData;
struct ImGuiSelectionBasicStorage;
struct ImGuiSelectionExternalStorage;
struct ImGuiSelectionRequest;
struct ImGuiSizeCallbackData;
struct ImGuiStorage;
struct ImGuiStoragePair;
struct ImGuiStyle;
struct ImGuiTableSortSpecs;
struct ImGuiTableColumnSortSpecs;
struct ImGuiTextBuffer;
struct ImGuiTextFilter;
struct ImGuiViewport;
typedef int ImGuiCol;
typedef int ImGuiCond;
typedef int ImGuiDataType;
typedef int ImGuiMouseButton;
typedef int ImGuiMouseCursor;
typedef int ImGuiStyleVar;
typedef int ImGuiTableBgTarget;
typedef int ImDrawFlags;
typedef int ImDrawListFlags;
typedef int ImDrawTextFlags;
typedef int ImFontFlags;
typedef int ImFontAtlasFlags;
typedef int ImGuiBackendFlags;
typedef int ImGuiButtonFlags;
typedef int ImGuiChildFlags;
typedef int ImGuiColorEditFlags;
typedef int ImGuiConfigFlags;
typedef int ImGuiComboFlags;
typedef int ImGuiDragDropFlags;
typedef int ImGuiFocusedFlags;
typedef int ImGuiHoveredFlags;
typedef int ImGuiInputFlags;
typedef int ImGuiInputTextFlags;
typedef int ImGuiItemFlags;
typedef int ImGuiKeyChord;
typedef int ImGuiListClipperFlags;
typedef int ImGuiPopupFlags;
typedef int ImGuiMultiSelectFlags;
typedef int ImGuiSelectableFlags;
typedef int ImGuiSliderFlags;
typedef int ImGuiTabBarFlags;
typedef int ImGuiTabItemFlags;
typedef int ImGuiTableFlags;
typedef int ImGuiTableColumnFlags;
typedef int ImGuiTableRowFlags;
typedef int ImGuiTreeNodeFlags;
typedef int ImGuiViewportFlags;
typedef int ImGuiWindowFlags;
typedef unsigned int ImWchar32;
typedef unsigned short ImWchar16;
typedef ImWchar16 ImWchar;
typedef ImS64 ImGuiSelectionUserData;
typedef int (*ImGuiInputTextCallback)(ImGuiInputTextCallbackData* data);
typedef void (*ImGuiSizeCallback)(ImGuiSizeCallbackData* data);
typedef void* (*ImGuiMemAllocFunc)(size_t sz, void* user_data);
typedef void (*ImGuiMemFreeFunc)(void* ptr, void* user_data);
typedef struct ImVec2_c ImVec2_c;
struct ImVec2_c
{
    float x, y;
};
typedef struct ImVec4_c ImVec4_c;
struct ImVec4_c
{
    float x, y, z, w;
};
typedef ImU64 ImTextureID;
typedef struct ImTextureRef_c ImTextureRef_c;
struct ImTextureRef_c
{
    ImTextureData* _TexData;
    ImTextureID _TexID;
};
typedef enum {
    ImGuiWindowFlags_None = 0,
    ImGuiWindowFlags_NoTitleBar = 1 << 0,
    ImGuiWindowFlags_NoResize = 1 << 1,
    ImGuiWindowFlags_NoMove = 1 << 2,
    ImGuiWindowFlags_NoScrollbar = 1 << 3,
    ImGuiWindowFlags_NoScrollWithMouse = 1 << 4,
    ImGuiWindowFlags_NoCollapse = 1 << 5,
    ImGuiWindowFlags_AlwaysAutoResize = 1 << 6,
    ImGuiWindowFlags_NoBackground = 1 << 7,
    ImGuiWindowFlags_NoSavedSettings = 1 << 8,
    ImGuiWindowFlags_NoMouseInputs = 1 << 9,
    ImGuiWindowFlags_MenuBar = 1 << 10,
    ImGuiWindowFlags_HorizontalScrollbar = 1 << 11,
    ImGuiWindowFlags_NoFocusOnAppearing = 1 << 12,
    ImGuiWindowFlags_NoBringToFrontOnFocus = 1 << 13,
    ImGuiWindowFlags_AlwaysVerticalScrollbar= 1 << 14,
    ImGuiWindowFlags_AlwaysHorizontalScrollbar=1<< 15,
    ImGuiWindowFlags_NoNavInputs = 1 << 16,
    ImGuiWindowFlags_NoNavFocus = 1 << 17,
    ImGuiWindowFlags_UnsavedDocument = 1 << 18,
    ImGuiWindowFlags_NoNav = ImGuiWindowFlags_NoNavInputs | ImGuiWindowFlags_NoNavFocus,
    ImGuiWindowFlags_NoDecoration = ImGuiWindowFlags_NoTitleBar | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoScrollbar | ImGuiWindowFlags_NoCollapse,
    ImGuiWindowFlags_NoInputs = ImGuiWindowFlags_NoMouseInputs | ImGuiWindowFlags_NoNavInputs | ImGuiWindowFlags_NoNavFocus,
    ImGuiWindowFlags_ChildWindow = 1 << 24,
    ImGuiWindowFlags_Tooltip = 1 << 25,
    ImGuiWindowFlags_Popup = 1 << 26,
    ImGuiWindowFlags_Modal = 1 << 27,
    ImGuiWindowFlags_ChildMenu = 1 << 28,
}ImGuiWindowFlags_;
typedef enum {
    ImGuiChildFlags_None = 0,
    ImGuiChildFlags_Borders = 1 << 0,
    ImGuiChildFlags_AlwaysUseWindowPadding = 1 << 1,
    ImGuiChildFlags_ResizeX = 1 << 2,
    ImGuiChildFlags_ResizeY = 1 << 3,
    ImGuiChildFlags_AutoResizeX = 1 << 4,
    ImGuiChildFlags_AutoResizeY = 1 << 5,
    ImGuiChildFlags_AlwaysAutoResize = 1 << 6,
    ImGuiChildFlags_FrameStyle = 1 << 7,
    ImGuiChildFlags_NavFlattened = 1 << 8,
}ImGuiChildFlags_;
typedef enum {
    ImGuiItemFlags_None = 0,
    ImGuiItemFlags_NoTabStop = 1 << 0,
    ImGuiItemFlags_NoNav = 1 << 1,
    ImGuiItemFlags_NoNavDefaultFocus = 1 << 2,
    ImGuiItemFlags_ButtonRepeat = 1 << 3,
    ImGuiItemFlags_AutoClosePopups = 1 << 4,
    ImGuiItemFlags_AllowDuplicateId = 1 << 5,
    ImGuiItemFlags_Disabled = 1 << 6,
}ImGuiItemFlags_;
typedef enum {
    ImGuiInputTextFlags_None = 0,
    ImGuiInputTextFlags_CharsDecimal = 1 << 0,
    ImGuiInputTextFlags_CharsHexadecimal = 1 << 1,
    ImGuiInputTextFlags_CharsScientific = 1 << 2,
    ImGuiInputTextFlags_CharsUppercase = 1 << 3,
    ImGuiInputTextFlags_CharsNoBlank = 1 << 4,
    ImGuiInputTextFlags_AllowTabInput = 1 << 5,
    ImGuiInputTextFlags_EnterReturnsTrue = 1 << 6,
    ImGuiInputTextFlags_EscapeClearsAll = 1 << 7,
    ImGuiInputTextFlags_CtrlEnterForNewLine = 1 << 8,
    ImGuiInputTextFlags_ReadOnly = 1 << 9,
    ImGuiInputTextFlags_Password = 1 << 10,
    ImGuiInputTextFlags_AlwaysOverwrite = 1 << 11,
    ImGuiInputTextFlags_AutoSelectAll = 1 << 12,
    ImGuiInputTextFlags_ParseEmptyRefVal = 1 << 13,
    ImGuiInputTextFlags_DisplayEmptyRefVal = 1 << 14,
    ImGuiInputTextFlags_NoHorizontalScroll = 1 << 15,
    ImGuiInputTextFlags_NoUndoRedo = 1 << 16,
    ImGuiInputTextFlags_ElideLeft = 1 << 17,
    ImGuiInputTextFlags_CallbackCompletion = 1 << 18,
    ImGuiInputTextFlags_CallbackHistory = 1 << 19,
    ImGuiInputTextFlags_CallbackAlways = 1 << 20,
    ImGuiInputTextFlags_CallbackCharFilter = 1 << 21,
    ImGuiInputTextFlags_CallbackResize = 1 << 22,
    ImGuiInputTextFlags_CallbackEdit = 1 << 23,
    ImGuiInputTextFlags_WordWrap = 1 << 24,
}ImGuiInputTextFlags_;
typedef enum {
    ImGuiTreeNodeFlags_None = 0,
    ImGuiTreeNodeFlags_Selected = 1 << 0,
    ImGuiTreeNodeFlags_Framed = 1 << 1,
    ImGuiTreeNodeFlags_AllowOverlap = 1 << 2,
    ImGuiTreeNodeFlags_NoTreePushOnOpen = 1 << 3,
    ImGuiTreeNodeFlags_NoAutoOpenOnLog = 1 << 4,
    ImGuiTreeNodeFlags_DefaultOpen = 1 << 5,
    ImGuiTreeNodeFlags_OpenOnDoubleClick = 1 << 6,
    ImGuiTreeNodeFlags_OpenOnArrow = 1 << 7,
    ImGuiTreeNodeFlags_Leaf = 1 << 8,
    ImGuiTreeNodeFlags_Bullet = 1 << 9,
    ImGuiTreeNodeFlags_FramePadding = 1 << 10,
    ImGuiTreeNodeFlags_SpanAvailWidth = 1 << 11,
    ImGuiTreeNodeFlags_SpanFullWidth = 1 << 12,
    ImGuiTreeNodeFlags_SpanLabelWidth = 1 << 13,
    ImGuiTreeNodeFlags_SpanAllColumns = 1 << 14,
    ImGuiTreeNodeFlags_LabelSpanAllColumns = 1 << 15,
    ImGuiTreeNodeFlags_NavLeftJumpsToParent = 1 << 17,
    ImGuiTreeNodeFlags_CollapsingHeader = ImGuiTreeNodeFlags_Framed | ImGuiTreeNodeFlags_NoTreePushOnOpen | ImGuiTreeNodeFlags_NoAutoOpenOnLog,
    ImGuiTreeNodeFlags_DrawLinesNone = 1 << 18,
    ImGuiTreeNodeFlags_DrawLinesFull = 1 << 19,
    ImGuiTreeNodeFlags_DrawLinesToNodes = 1 << 20,
}ImGuiTreeNodeFlags_;
typedef enum {
    ImGuiPopupFlags_None = 0,
    ImGuiPopupFlags_MouseButtonLeft = 1 << 2,
    ImGuiPopupFlags_MouseButtonRight = 2 << 2,
    ImGuiPopupFlags_MouseButtonMiddle = 3 << 2,
    ImGuiPopupFlags_NoReopen = 1 << 5,
    ImGuiPopupFlags_NoOpenOverExistingPopup = 1 << 7,
    ImGuiPopupFlags_NoOpenOverItems = 1 << 8,
    ImGuiPopupFlags_AnyPopupId = 1 << 10,
    ImGuiPopupFlags_AnyPopupLevel = 1 << 11,
    ImGuiPopupFlags_AnyPopup = ImGuiPopupFlags_AnyPopupId | ImGuiPopupFlags_AnyPopupLevel,
    ImGuiPopupFlags_MouseButtonShift_ = 2,
    ImGuiPopupFlags_MouseButtonMask_ = 0x0C,
    ImGuiPopupFlags_InvalidMask_ = 0x03,
}ImGuiPopupFlags_;
typedef enum {
    ImGuiSelectableFlags_None = 0,
    ImGuiSelectableFlags_NoAutoClosePopups = 1 << 0,
    ImGuiSelectableFlags_SpanAllColumns = 1 << 1,
    ImGuiSelectableFlags_AllowDoubleClick = 1 << 2,
    ImGuiSelectableFlags_Disabled = 1 << 3,
    ImGuiSelectableFlags_AllowOverlap = 1 << 4,
    ImGuiSelectableFlags_Highlight = 1 << 5,
    ImGuiSelectableFlags_SelectOnNav = 1 << 6,
}ImGuiSelectableFlags_;
typedef enum {
    ImGuiComboFlags_None = 0,
    ImGuiComboFlags_PopupAlignLeft = 1 << 0,
    ImGuiComboFlags_HeightSmall = 1 << 1,
    ImGuiComboFlags_HeightRegular = 1 << 2,
    ImGuiComboFlags_HeightLarge = 1 << 3,
    ImGuiComboFlags_HeightLargest = 1 << 4,
    ImGuiComboFlags_NoArrowButton = 1 << 5,
    ImGuiComboFlags_NoPreview = 1 << 6,
    ImGuiComboFlags_WidthFitPreview = 1 << 7,
    ImGuiComboFlags_HeightMask_ = ImGuiComboFlags_HeightSmall | ImGuiComboFlags_HeightRegular | ImGuiComboFlags_HeightLarge | ImGuiComboFlags_HeightLargest,
}ImGuiComboFlags_;
typedef enum {
    ImGuiTabBarFlags_None = 0,
    ImGuiTabBarFlags_Reorderable = 1 << 0,
    ImGuiTabBarFlags_AutoSelectNewTabs = 1 << 1,
    ImGuiTabBarFlags_TabListPopupButton = 1 << 2,
    ImGuiTabBarFlags_NoCloseWithMiddleMouseButton = 1 << 3,
    ImGuiTabBarFlags_NoTabListScrollingButtons = 1 << 4,
    ImGuiTabBarFlags_NoTooltip = 1 << 5,
    ImGuiTabBarFlags_DrawSelectedOverline = 1 << 6,
    ImGuiTabBarFlags_FittingPolicyMixed = 1 << 7,
    ImGuiTabBarFlags_FittingPolicyShrink = 1 << 8,
    ImGuiTabBarFlags_FittingPolicyScroll = 1 << 9,
    ImGuiTabBarFlags_FittingPolicyMask_ = ImGuiTabBarFlags_FittingPolicyMixed | ImGuiTabBarFlags_FittingPolicyShrink | ImGuiTabBarFlags_FittingPolicyScroll,
    ImGuiTabBarFlags_FittingPolicyDefault_ = ImGuiTabBarFlags_FittingPolicyMixed,
}ImGuiTabBarFlags_;
typedef enum {
    ImGuiTabItemFlags_None = 0,
    ImGuiTabItemFlags_UnsavedDocument = 1 << 0,
    ImGuiTabItemFlags_SetSelected = 1 << 1,
    ImGuiTabItemFlags_NoCloseWithMiddleMouseButton = 1 << 2,
    ImGuiTabItemFlags_NoPushId = 1 << 3,
    ImGuiTabItemFlags_NoTooltip = 1 << 4,
    ImGuiTabItemFlags_NoReorder = 1 << 5,
    ImGuiTabItemFlags_Leading = 1 << 6,
    ImGuiTabItemFlags_Trailing = 1 << 7,
    ImGuiTabItemFlags_NoAssumedClosure = 1 << 8,
}ImGuiTabItemFlags_;
typedef enum {
    ImGuiFocusedFlags_None = 0,
    ImGuiFocusedFlags_ChildWindows = 1 << 0,
    ImGuiFocusedFlags_RootWindow = 1 << 1,
    ImGuiFocusedFlags_AnyWindow = 1 << 2,
    ImGuiFocusedFlags_NoPopupHierarchy = 1 << 3,
    ImGuiFocusedFlags_RootAndChildWindows = ImGuiFocusedFlags_RootWindow | ImGuiFocusedFlags_ChildWindows,
}ImGuiFocusedFlags_;
typedef enum {
    ImGuiHoveredFlags_None = 0,
    ImGuiHoveredFlags_ChildWindows = 1 << 0,
    ImGuiHoveredFlags_RootWindow = 1 << 1,
    ImGuiHoveredFlags_AnyWindow = 1 << 2,
    ImGuiHoveredFlags_NoPopupHierarchy = 1 << 3,
    ImGuiHoveredFlags_AllowWhenBlockedByPopup = 1 << 5,
    ImGuiHoveredFlags_AllowWhenBlockedByActiveItem = 1 << 7,
    ImGuiHoveredFlags_AllowWhenOverlappedByItem = 1 << 8,
    ImGuiHoveredFlags_AllowWhenOverlappedByWindow = 1 << 9,
    ImGuiHoveredFlags_AllowWhenDisabled = 1 << 10,
    ImGuiHoveredFlags_NoNavOverride = 1 << 11,
    ImGuiHoveredFlags_AllowWhenOverlapped = ImGuiHoveredFlags_AllowWhenOverlappedByItem | ImGuiHoveredFlags_AllowWhenOverlappedByWindow,
    ImGuiHoveredFlags_RectOnly = ImGuiHoveredFlags_AllowWhenBlockedByPopup | ImGuiHoveredFlags_AllowWhenBlockedByActiveItem | ImGuiHoveredFlags_AllowWhenOverlapped,
    ImGuiHoveredFlags_RootAndChildWindows = ImGuiHoveredFlags_RootWindow | ImGuiHoveredFlags_ChildWindows,
    ImGuiHoveredFlags_ForTooltip = 1 << 12,
    ImGuiHoveredFlags_Stationary = 1 << 13,
    ImGuiHoveredFlags_DelayNone = 1 << 14,
    ImGuiHoveredFlags_DelayShort = 1 << 15,
    ImGuiHoveredFlags_DelayNormal = 1 << 16,
    ImGuiHoveredFlags_NoSharedDelay = 1 << 17,
}ImGuiHoveredFlags_;
typedef enum {
    ImGuiDragDropFlags_None = 0,
    ImGuiDragDropFlags_SourceNoPreviewTooltip = 1 << 0,
    ImGuiDragDropFlags_SourceNoDisableHover = 1 << 1,
    ImGuiDragDropFlags_SourceNoHoldToOpenOthers = 1 << 2,
    ImGuiDragDropFlags_SourceAllowNullID = 1 << 3,
    ImGuiDragDropFlags_SourceExtern = 1 << 4,
    ImGuiDragDropFlags_PayloadAutoExpire = 1 << 5,
    ImGuiDragDropFlags_PayloadNoCrossContext = 1 << 6,
    ImGuiDragDropFlags_PayloadNoCrossProcess = 1 << 7,
    ImGuiDragDropFlags_AcceptBeforeDelivery = 1 << 10,
    ImGuiDragDropFlags_AcceptNoDrawDefaultRect = 1 << 11,
    ImGuiDragDropFlags_AcceptNoPreviewTooltip = 1 << 12,
    ImGuiDragDropFlags_AcceptDrawAsHovered = 1 << 13,
    ImGuiDragDropFlags_AcceptPeekOnly = ImGuiDragDropFlags_AcceptBeforeDelivery | ImGuiDragDropFlags_AcceptNoDrawDefaultRect,
}ImGuiDragDropFlags_;
typedef enum {
    ImGuiDataType_S8,
    ImGuiDataType_U8,
    ImGuiDataType_S16,
    ImGuiDataType_U16,
    ImGuiDataType_S32,
    ImGuiDataType_U32,
    ImGuiDataType_S64,
    ImGuiDataType_U64,
    ImGuiDataType_Float,
    ImGuiDataType_Double,
    ImGuiDataType_Bool,
    ImGuiDataType_String,
    ImGuiDataType_COUNT
}ImGuiDataType_;
typedef enum {
ImGuiDir_None=-1,
ImGuiDir_Left=0,
ImGuiDir_Right=1,
ImGuiDir_Up=2,
ImGuiDir_Down=3,
ImGuiDir_COUNT=4,
}ImGuiDir;
typedef enum {
ImGuiSortDirection_None=0,
ImGuiSortDirection_Ascending=1,
ImGuiSortDirection_Descending=2,
}ImGuiSortDirection;
typedef enum {
ImGuiKey_None=0,
ImGuiKey_NamedKey_BEGIN=512,
ImGuiKey_Tab=512,
ImGuiKey_LeftArrow=513,
ImGuiKey_RightArrow=514,
ImGuiKey_UpArrow=515,
ImGuiKey_DownArrow=516,
ImGuiKey_PageUp=517,
ImGuiKey_PageDown=518,
ImGuiKey_Home=519,
ImGuiKey_End=520,
ImGuiKey_Insert=521,
ImGuiKey_Delete=522,
ImGuiKey_Backspace=523,
ImGuiKey_Space=524,
ImGuiKey_Enter=525,
ImGuiKey_Escape=526,
ImGuiKey_LeftCtrl=527,
ImGuiKey_LeftShift=528,
ImGuiKey_LeftAlt=529,
ImGuiKey_LeftSuper=530,
ImGuiKey_RightCtrl=531,
ImGuiKey_RightShift=532,
ImGuiKey_RightAlt=533,
ImGuiKey_RightSuper=534,
ImGuiKey_Menu=535,
ImGuiKey_0=536,
ImGuiKey_1=537,
ImGuiKey_2=538,
ImGuiKey_3=539,
ImGuiKey_4=540,
ImGuiKey_5=541,
ImGuiKey_6=542,
ImGuiKey_7=543,
ImGuiKey_8=544,
ImGuiKey_9=545,
ImGuiKey_A=546,
ImGuiKey_B=547,
ImGuiKey_C=548,
ImGuiKey_D=549,
ImGuiKey_E=550,
ImGuiKey_F=551,
ImGuiKey_G=552,
ImGuiKey_H=553,
ImGuiKey_I=554,
ImGuiKey_J=555,
ImGuiKey_K=556,
ImGuiKey_L=557,
ImGuiKey_M=558,
ImGuiKey_N=559,
ImGuiKey_O=560,
ImGuiKey_P=561,
ImGuiKey_Q=562,
ImGuiKey_R=563,
ImGuiKey_S=564,
ImGuiKey_T=565,
ImGuiKey_U=566,
ImGuiKey_V=567,
ImGuiKey_W=568,
ImGuiKey_X=569,
ImGuiKey_Y=570,
ImGuiKey_Z=571,
ImGuiKey_F1=572,
ImGuiKey_F2=573,
ImGuiKey_F3=574,
ImGuiKey_F4=575,
ImGuiKey_F5=576,
ImGuiKey_F6=577,
ImGuiKey_F7=578,
ImGuiKey_F8=579,
ImGuiKey_F9=580,
ImGuiKey_F10=581,
ImGuiKey_F11=582,
ImGuiKey_F12=583,
ImGuiKey_F13=584,
ImGuiKey_F14=585,
ImGuiKey_F15=586,
ImGuiKey_F16=587,
ImGuiKey_F17=588,
ImGuiKey_F18=589,
ImGuiKey_F19=590,
ImGuiKey_F20=591,
ImGuiKey_F21=592,
ImGuiKey_F22=593,
ImGuiKey_F23=594,
ImGuiKey_F24=595,
ImGuiKey_Apostrophe=596,
ImGuiKey_Comma=597,
ImGuiKey_Minus=598,
ImGuiKey_Period=599,
ImGuiKey_Slash=600,
ImGuiKey_Semicolon=601,
ImGuiKey_Equal=602,
ImGuiKey_LeftBracket=603,
ImGuiKey_Backslash=604,
ImGuiKey_RightBracket=605,
ImGuiKey_GraveAccent=606,
ImGuiKey_CapsLock=607,
ImGuiKey_ScrollLock=608,
ImGuiKey_NumLock=609,
ImGuiKey_PrintScreen=610,
ImGuiKey_Pause=611,
ImGuiKey_Keypad0=612,
ImGuiKey_Keypad1=613,
ImGuiKey_Keypad2=614,
ImGuiKey_Keypad3=615,
ImGuiKey_Keypad4=616,
ImGuiKey_Keypad5=617,
ImGuiKey_Keypad6=618,
ImGuiKey_Keypad7=619,
ImGuiKey_Keypad8=620,
ImGuiKey_Keypad9=621,
ImGuiKey_KeypadDecimal=622,
ImGuiKey_KeypadDivide=623,
ImGuiKey_KeypadMultiply=624,
ImGuiKey_KeypadSubtract=625,
ImGuiKey_KeypadAdd=626,
ImGuiKey_KeypadEnter=627,
ImGuiKey_KeypadEqual=628,
ImGuiKey_AppBack=629,
ImGuiKey_AppForward=630,
ImGuiKey_Oem102=631,
ImGuiKey_GamepadStart=632,
ImGuiKey_GamepadBack=633,
ImGuiKey_GamepadFaceLeft=634,
ImGuiKey_GamepadFaceRight=635,
ImGuiKey_GamepadFaceUp=636,
ImGuiKey_GamepadFaceDown=637,
ImGuiKey_GamepadDpadLeft=638,
ImGuiKey_GamepadDpadRight=639,
ImGuiKey_GamepadDpadUp=640,
ImGuiKey_GamepadDpadDown=641,
ImGuiKey_GamepadL1=642,
ImGuiKey_GamepadR1=643,
ImGuiKey_GamepadL2=644,
ImGuiKey_GamepadR2=645,
ImGuiKey_GamepadL3=646,
ImGuiKey_GamepadR3=647,
ImGuiKey_GamepadLStickLeft=648,
ImGuiKey_GamepadLStickRight=649,
ImGuiKey_GamepadLStickUp=650,
ImGuiKey_GamepadLStickDown=651,
ImGuiKey_GamepadRStickLeft=652,
ImGuiKey_GamepadRStickRight=653,
ImGuiKey_GamepadRStickUp=654,
ImGuiKey_GamepadRStickDown=655,
ImGuiKey_MouseLeft=656,
ImGuiKey_MouseRight=657,
ImGuiKey_MouseMiddle=658,
ImGuiKey_MouseX1=659,
ImGuiKey_MouseX2=660,
ImGuiKey_MouseWheelX=661,
ImGuiKey_MouseWheelY=662,
ImGuiKey_ReservedForModCtrl=663,
ImGuiKey_ReservedForModShift=664,
ImGuiKey_ReservedForModAlt=665,
ImGuiKey_ReservedForModSuper=666,
ImGuiKey_NamedKey_END=667,
ImGuiKey_NamedKey_COUNT=ImGuiKey_NamedKey_END - ImGuiKey_NamedKey_BEGIN,
ImGuiMod_None=0,
ImGuiMod_Ctrl=1 << 12,
ImGuiMod_Shift=1 << 13,
ImGuiMod_Alt=1 << 14,
ImGuiMod_Super=1 << 15,
ImGuiMod_Mask_=0xF000,
}ImGuiKey;
typedef enum {
    ImGuiInputFlags_None = 0,
    ImGuiInputFlags_Repeat = 1 << 0,
    ImGuiInputFlags_RouteActive = 1 << 10,
    ImGuiInputFlags_RouteFocused = 1 << 11,
    ImGuiInputFlags_RouteGlobal = 1 << 12,
    ImGuiInputFlags_RouteAlways = 1 << 13,
    ImGuiInputFlags_RouteOverFocused = 1 << 14,
    ImGuiInputFlags_RouteOverActive = 1 << 15,
    ImGuiInputFlags_RouteUnlessBgFocused = 1 << 16,
    ImGuiInputFlags_RouteFromRootWindow = 1 << 17,
    ImGuiInputFlags_Tooltip = 1 << 18,
}ImGuiInputFlags_;
typedef enum {
    ImGuiConfigFlags_None = 0,
    ImGuiConfigFlags_NavEnableKeyboard = 1 << 0,
    ImGuiConfigFlags_NavEnableGamepad = 1 << 1,
    ImGuiConfigFlags_NoMouse = 1 << 4,
    ImGuiConfigFlags_NoMouseCursorChange = 1 << 5,
    ImGuiConfigFlags_NoKeyboard = 1 << 6,
    ImGuiConfigFlags_IsSRGB = 1 << 20,
    ImGuiConfigFlags_IsTouchScreen = 1 << 21,
}ImGuiConfigFlags_;
typedef enum {
    ImGuiBackendFlags_None = 0,
    ImGuiBackendFlags_HasGamepad = 1 << 0,
    ImGuiBackendFlags_HasMouseCursors = 1 << 1,
    ImGuiBackendFlags_HasSetMousePos = 1 << 2,
    ImGuiBackendFlags_RendererHasVtxOffset = 1 << 3,
    ImGuiBackendFlags_RendererHasTextures = 1 << 4,
}ImGuiBackendFlags_;
typedef enum {
    ImGuiCol_Text,
    ImGuiCol_TextDisabled,
    ImGuiCol_WindowBg,
    ImGuiCol_ChildBg,
    ImGuiCol_PopupBg,
    ImGuiCol_Border,
    ImGuiCol_BorderShadow,
    ImGuiCol_FrameBg,
    ImGuiCol_FrameBgHovered,
    ImGuiCol_FrameBgActive,
    ImGuiCol_TitleBg,
    ImGuiCol_TitleBgActive,
    ImGuiCol_TitleBgCollapsed,
    ImGuiCol_MenuBarBg,
    ImGuiCol_ScrollbarBg,
    ImGuiCol_ScrollbarGrab,
    ImGuiCol_ScrollbarGrabHovered,
    ImGuiCol_ScrollbarGrabActive,
    ImGuiCol_CheckMark,
    ImGuiCol_CheckboxSelectedBg,
    ImGuiCol_SliderGrab,
    ImGuiCol_SliderGrabActive,
    ImGuiCol_Button,
    ImGuiCol_ButtonHovered,
    ImGuiCol_ButtonActive,
    ImGuiCol_Header,
    ImGuiCol_HeaderHovered,
    ImGuiCol_HeaderActive,
    ImGuiCol_Separator,
    ImGuiCol_SeparatorHovered,
    ImGuiCol_SeparatorActive,
    ImGuiCol_ResizeGrip,
    ImGuiCol_ResizeGripHovered,
    ImGuiCol_ResizeGripActive,
    ImGuiCol_InputTextCursor,
    ImGuiCol_TabHovered,
    ImGuiCol_Tab,
    ImGuiCol_TabSelected,
    ImGuiCol_TabSelectedOverline,
    ImGuiCol_TabDimmed,
    ImGuiCol_TabDimmedSelected,
    ImGuiCol_TabDimmedSelectedOverline,
    ImGuiCol_PlotLines,
    ImGuiCol_PlotLinesHovered,
    ImGuiCol_PlotHistogram,
    ImGuiCol_PlotHistogramHovered,
    ImGuiCol_TableHeaderBg,
    ImGuiCol_TableBorderStrong,
    ImGuiCol_TableBorderLight,
    ImGuiCol_TableRowBg,
    ImGuiCol_TableRowBgAlt,
    ImGuiCol_TextLink,
    ImGuiCol_TextSelectedBg,
    ImGuiCol_TreeLines,
    ImGuiCol_DragDropTarget,
    ImGuiCol_DragDropTargetBg,
    ImGuiCol_UnsavedMarker,
    ImGuiCol_NavCursor,
    ImGuiCol_NavWindowingHighlight,
    ImGuiCol_NavWindowingDimBg,
    ImGuiCol_ModalWindowDimBg,
    ImGuiCol_COUNT,
}ImGuiCol_;
typedef enum {
    ImGuiStyleVar_Alpha,
    ImGuiStyleVar_DisabledAlpha,
    ImGuiStyleVar_WindowPadding,
    ImGuiStyleVar_WindowRounding,
    ImGuiStyleVar_WindowBorderSize,
    ImGuiStyleVar_WindowMinSize,
    ImGuiStyleVar_WindowTitleAlign,
    ImGuiStyleVar_ChildRounding,
    ImGuiStyleVar_ChildBorderSize,
    ImGuiStyleVar_PopupRounding,
    ImGuiStyleVar_PopupBorderSize,
    ImGuiStyleVar_FramePadding,
    ImGuiStyleVar_FrameRounding,
    ImGuiStyleVar_FrameBorderSize,
    ImGuiStyleVar_ItemSpacing,
    ImGuiStyleVar_ItemInnerSpacing,
    ImGuiStyleVar_IndentSpacing,
    ImGuiStyleVar_CellPadding,
    ImGuiStyleVar_ScrollbarSize,
    ImGuiStyleVar_ScrollbarRounding,
    ImGuiStyleVar_ScrollbarPadding,
    ImGuiStyleVar_GrabMinSize,
    ImGuiStyleVar_GrabRounding,
    ImGuiStyleVar_ImageRounding,
    ImGuiStyleVar_ImageBorderSize,
    ImGuiStyleVar_TabRounding,
    ImGuiStyleVar_TabBorderSize,
    ImGuiStyleVar_TabMinWidthBase,
    ImGuiStyleVar_TabMinWidthShrink,
    ImGuiStyleVar_TabBarBorderSize,
    ImGuiStyleVar_TabBarOverlineSize,
    ImGuiStyleVar_TableAngledHeadersAngle,
    ImGuiStyleVar_TableAngledHeadersTextAlign,
    ImGuiStyleVar_TreeLinesSize,
    ImGuiStyleVar_TreeLinesRounding,
    ImGuiStyleVar_DragDropTargetRounding,
    ImGuiStyleVar_ButtonTextAlign,
    ImGuiStyleVar_SelectableTextAlign,
    ImGuiStyleVar_SeparatorSize,
    ImGuiStyleVar_SeparatorTextBorderSize,
    ImGuiStyleVar_SeparatorTextAlign,
    ImGuiStyleVar_SeparatorTextPadding,
    ImGuiStyleVar_COUNT
}ImGuiStyleVar_;
typedef enum {
    ImGuiButtonFlags_None = 0,
    ImGuiButtonFlags_MouseButtonLeft = 1 << 0,
    ImGuiButtonFlags_MouseButtonRight = 1 << 1,
    ImGuiButtonFlags_MouseButtonMiddle = 1 << 2,
    ImGuiButtonFlags_MouseButtonMask_ = ImGuiButtonFlags_MouseButtonLeft | ImGuiButtonFlags_MouseButtonRight | ImGuiButtonFlags_MouseButtonMiddle,
    ImGuiButtonFlags_EnableNav = 1 << 3,
    ImGuiButtonFlags_AllowOverlap = 1 << 12,
}ImGuiButtonFlags_;
typedef enum {
    ImGuiColorEditFlags_None = 0,
    ImGuiColorEditFlags_NoAlpha = 1 << 1,
    ImGuiColorEditFlags_NoPicker = 1 << 2,
    ImGuiColorEditFlags_NoOptions = 1 << 3,
    ImGuiColorEditFlags_NoSmallPreview = 1 << 4,
    ImGuiColorEditFlags_NoInputs = 1 << 5,
    ImGuiColorEditFlags_NoTooltip = 1 << 6,
    ImGuiColorEditFlags_NoLabel = 1 << 7,
    ImGuiColorEditFlags_NoSidePreview = 1 << 8,
    ImGuiColorEditFlags_NoDragDrop = 1 << 9,
    ImGuiColorEditFlags_NoBorder = 1 << 10,
    ImGuiColorEditFlags_NoColorMarkers = 1 << 11,
    ImGuiColorEditFlags_AlphaOpaque = 1 << 12,
    ImGuiColorEditFlags_AlphaNoBg = 1 << 13,
    ImGuiColorEditFlags_AlphaPreviewHalf= 1 << 14,
    ImGuiColorEditFlags_AlphaBar = 1 << 18,
    ImGuiColorEditFlags_HDR = 1 << 19,
    ImGuiColorEditFlags_DisplayRGB = 1 << 20,
    ImGuiColorEditFlags_DisplayHSV = 1 << 21,
    ImGuiColorEditFlags_DisplayHex = 1 << 22,
    ImGuiColorEditFlags_Uint8 = 1 << 23,
    ImGuiColorEditFlags_Float = 1 << 24,
    ImGuiColorEditFlags_PickerHueBar = 1 << 25,
    ImGuiColorEditFlags_PickerHueWheel = 1 << 26,
    ImGuiColorEditFlags_InputRGB = 1 << 27,
    ImGuiColorEditFlags_InputHSV = 1 << 28,
    ImGuiColorEditFlags_DefaultOptions_ = ImGuiColorEditFlags_Uint8 | ImGuiColorEditFlags_DisplayRGB | ImGuiColorEditFlags_InputRGB | ImGuiColorEditFlags_PickerHueBar,
    ImGuiColorEditFlags_AlphaMask_ = ImGuiColorEditFlags_NoAlpha | ImGuiColorEditFlags_AlphaOpaque | ImGuiColorEditFlags_AlphaNoBg | ImGuiColorEditFlags_AlphaPreviewHalf,
    ImGuiColorEditFlags_DisplayMask_ = ImGuiColorEditFlags_DisplayRGB | ImGuiColorEditFlags_DisplayHSV | ImGuiColorEditFlags_DisplayHex,
    ImGuiColorEditFlags_DataTypeMask_ = ImGuiColorEditFlags_Uint8 | ImGuiColorEditFlags_Float,
    ImGuiColorEditFlags_PickerMask_ = ImGuiColorEditFlags_PickerHueWheel | ImGuiColorEditFlags_PickerHueBar,
    ImGuiColorEditFlags_InputMask_ = ImGuiColorEditFlags_InputRGB | ImGuiColorEditFlags_InputHSV,
}ImGuiColorEditFlags_;
typedef enum {
    ImGuiSliderFlags_None = 0,
    ImGuiSliderFlags_Logarithmic = 1 << 5,
    ImGuiSliderFlags_NoRoundToFormat = 1 << 6,
    ImGuiSliderFlags_NoInput = 1 << 7,
    ImGuiSliderFlags_WrapAround = 1 << 8,
    ImGuiSliderFlags_ClampOnInput = 1 << 9,
    ImGuiSliderFlags_ClampZeroRange = 1 << 10,
    ImGuiSliderFlags_NoSpeedTweaks = 1 << 11,
    ImGuiSliderFlags_ColorMarkers = 1 << 12,
    ImGuiSliderFlags_AlwaysClamp = ImGuiSliderFlags_ClampOnInput | ImGuiSliderFlags_ClampZeroRange,
    ImGuiSliderFlags_InvalidMask_ = 0x7000000F,
}ImGuiSliderFlags_;
typedef enum {
    ImGuiMouseButton_Left = 0,
    ImGuiMouseButton_Right = 1,
    ImGuiMouseButton_Middle = 2,
    ImGuiMouseButton_COUNT = 5
}ImGuiMouseButton_;
typedef enum {
    ImGuiMouseCursor_None = -1,
    ImGuiMouseCursor_Arrow = 0,
    ImGuiMouseCursor_TextInput,
    ImGuiMouseCursor_ResizeAll,
    ImGuiMouseCursor_ResizeNS,
    ImGuiMouseCursor_ResizeEW,
    ImGuiMouseCursor_ResizeNESW,
    ImGuiMouseCursor_ResizeNWSE,
    ImGuiMouseCursor_Hand,
    ImGuiMouseCursor_Wait,
    ImGuiMouseCursor_Progress,
    ImGuiMouseCursor_NotAllowed,
    ImGuiMouseCursor_COUNT
}ImGuiMouseCursor_;
typedef enum {
ImGuiMouseSource_Mouse=0,
ImGuiMouseSource_TouchScreen=1,
ImGuiMouseSource_Pen=2,
ImGuiMouseSource_COUNT=3,
}ImGuiMouseSource;
typedef enum {
    ImGuiCond_None = 0,
    ImGuiCond_Always = 1 << 0,
    ImGuiCond_Once = 1 << 1,
    ImGuiCond_FirstUseEver = 1 << 2,
    ImGuiCond_Appearing = 1 << 3,
}ImGuiCond_;
typedef enum {
    ImGuiTableFlags_None = 0,
    ImGuiTableFlags_Resizable = 1 << 0,
    ImGuiTableFlags_Reorderable = 1 << 1,
    ImGuiTableFlags_Hideable = 1 << 2,
    ImGuiTableFlags_Sortable = 1 << 3,
    ImGuiTableFlags_NoSavedSettings = 1 << 4,
    ImGuiTableFlags_ContextMenuInBody = 1 << 5,
    ImGuiTableFlags_RowBg = 1 << 6,
    ImGuiTableFlags_BordersInnerH = 1 << 7,
    ImGuiTableFlags_BordersOuterH = 1 << 8,
    ImGuiTableFlags_BordersInnerV = 1 << 9,
    ImGuiTableFlags_BordersOuterV = 1 << 10,
    ImGuiTableFlags_BordersH = ImGuiTableFlags_BordersInnerH | ImGuiTableFlags_BordersOuterH,
    ImGuiTableFlags_BordersV = ImGuiTableFlags_BordersInnerV | ImGuiTableFlags_BordersOuterV,
    ImGuiTableFlags_BordersInner = ImGuiTableFlags_BordersInnerV | ImGuiTableFlags_BordersInnerH,
    ImGuiTableFlags_BordersOuter = ImGuiTableFlags_BordersOuterV | ImGuiTableFlags_BordersOuterH,
    ImGuiTableFlags_Borders = ImGuiTableFlags_BordersInner | ImGuiTableFlags_BordersOuter,
    ImGuiTableFlags_NoBordersInBody = 1 << 11,
    ImGuiTableFlags_NoBordersInBodyUntilResize = 1 << 12,
    ImGuiTableFlags_SizingFixedFit = 1 << 13,
    ImGuiTableFlags_SizingFixedSame = 2 << 13,
    ImGuiTableFlags_SizingStretchProp = 3 << 13,
    ImGuiTableFlags_SizingStretchSame = 4 << 13,
    ImGuiTableFlags_NoHostExtendX = 1 << 16,
    ImGuiTableFlags_NoHostExtendY = 1 << 17,
    ImGuiTableFlags_NoKeepColumnsVisible = 1 << 18,
    ImGuiTableFlags_PreciseWidths = 1 << 19,
    ImGuiTableFlags_NoClip = 1 << 20,
    ImGuiTableFlags_PadOuterX = 1 << 21,
    ImGuiTableFlags_NoPadOuterX = 1 << 22,
    ImGuiTableFlags_NoPadInnerX = 1 << 23,
    ImGuiTableFlags_ScrollX = 1 << 24,
    ImGuiTableFlags_ScrollY = 1 << 25,
    ImGuiTableFlags_SortMulti = 1 << 26,
    ImGuiTableFlags_SortTristate = 1 << 27,
    ImGuiTableFlags_HighlightHoveredColumn = 1 << 28,
    ImGuiTableFlags_SizingMask_ = ImGuiTableFlags_SizingFixedFit | ImGuiTableFlags_SizingFixedSame | ImGuiTableFlags_SizingStretchProp | ImGuiTableFlags_SizingStretchSame,
}ImGuiTableFlags_;
typedef enum {
    ImGuiTableColumnFlags_None = 0,
    ImGuiTableColumnFlags_Disabled = 1 << 0,
    ImGuiTableColumnFlags_DefaultHide = 1 << 1,
    ImGuiTableColumnFlags_DefaultSort = 1 << 2,
    ImGuiTableColumnFlags_WidthStretch = 1 << 3,
    ImGuiTableColumnFlags_WidthFixed = 1 << 4,
    ImGuiTableColumnFlags_NoResize = 1 << 5,
    ImGuiTableColumnFlags_NoReorder = 1 << 6,
    ImGuiTableColumnFlags_NoHide = 1 << 7,
    ImGuiTableColumnFlags_NoClip = 1 << 8,
    ImGuiTableColumnFlags_NoSort = 1 << 9,
    ImGuiTableColumnFlags_NoSortAscending = 1 << 10,
    ImGuiTableColumnFlags_NoSortDescending = 1 << 11,
    ImGuiTableColumnFlags_NoHeaderLabel = 1 << 12,
    ImGuiTableColumnFlags_NoHeaderWidth = 1 << 13,
    ImGuiTableColumnFlags_PreferSortAscending = 1 << 14,
    ImGuiTableColumnFlags_PreferSortDescending = 1 << 15,
    ImGuiTableColumnFlags_IndentEnable = 1 << 16,
    ImGuiTableColumnFlags_IndentDisable = 1 << 17,
    ImGuiTableColumnFlags_AngledHeader = 1 << 18,
    ImGuiTableColumnFlags_IsEnabled = 1 << 24,
    ImGuiTableColumnFlags_IsVisible = 1 << 25,
    ImGuiTableColumnFlags_IsSorted = 1 << 26,
    ImGuiTableColumnFlags_IsHovered = 1 << 27,
    ImGuiTableColumnFlags_WidthMask_ = ImGuiTableColumnFlags_WidthStretch | ImGuiTableColumnFlags_WidthFixed,
    ImGuiTableColumnFlags_IndentMask_ = ImGuiTableColumnFlags_IndentEnable | ImGuiTableColumnFlags_IndentDisable,
    ImGuiTableColumnFlags_StatusMask_ = ImGuiTableColumnFlags_IsEnabled | ImGuiTableColumnFlags_IsVisible | ImGuiTableColumnFlags_IsSorted | ImGuiTableColumnFlags_IsHovered,
    ImGuiTableColumnFlags_NoDirectResize_ = 1 << 30,
}ImGuiTableColumnFlags_;
typedef enum {
    ImGuiTableRowFlags_None = 0,
    ImGuiTableRowFlags_Headers = 1 << 0,
}ImGuiTableRowFlags_;
typedef enum {
    ImGuiTableBgTarget_None = 0,
    ImGuiTableBgTarget_RowBg0 = 1,
    ImGuiTableBgTarget_RowBg1 = 2,
    ImGuiTableBgTarget_CellBg = 3,
}ImGuiTableBgTarget_;
struct ImGuiTableSortSpecs
{
    const ImGuiTableColumnSortSpecs* Specs;
    int SpecsCount;
    _Bool SpecsDirty;
};
struct ImGuiTableColumnSortSpecs
{
    ImGuiID ColumnUserID;
    ImS16 ColumnIndex;
    ImS16 SortOrder;
    ImGuiSortDirection SortDirection;
};
struct ImGuiStyle
{
    float FontSizeBase;
    float FontScaleMain;
    float FontScaleDpi;
    float Alpha;
    float DisabledAlpha;
    ImVec2_c WindowPadding;
    float WindowRounding;
    float WindowBorderSize;
    float WindowBorderHoverPadding;
    ImVec2_c WindowMinSize;
    ImVec2_c WindowTitleAlign;
    ImGuiDir WindowMenuButtonPosition;
    float ChildRounding;
    float ChildBorderSize;
    float PopupRounding;
    float PopupBorderSize;
    ImVec2_c FramePadding;
    float FrameRounding;
    float FrameBorderSize;
    ImVec2_c ItemSpacing;
    ImVec2_c ItemInnerSpacing;
    ImVec2_c CellPadding;
    ImVec2_c TouchExtraPadding;
    float IndentSpacing;
    float ColumnsMinSpacing;
    float ScrollbarSize;
    float ScrollbarRounding;
    float ScrollbarPadding;
    float GrabMinSize;
    float GrabRounding;
    float LogSliderDeadzone;
    float ImageRounding;
    float ImageBorderSize;
    float TabRounding;
    float TabBorderSize;
    float TabMinWidthBase;
    float TabMinWidthShrink;
    float TabCloseButtonMinWidthSelected;
    float TabCloseButtonMinWidthUnselected;
    float TabBarBorderSize;
    float TabBarOverlineSize;
    float TableAngledHeadersAngle;
    ImVec2_c TableAngledHeadersTextAlign;
    ImGuiTreeNodeFlags TreeLinesFlags;
    float TreeLinesSize;
    float TreeLinesRounding;
    float DragDropTargetRounding;
    float DragDropTargetBorderSize;
    float DragDropTargetPadding;
    float ColorMarkerSize;
    ImGuiDir ColorButtonPosition;
    ImVec2_c ButtonTextAlign;
    ImVec2_c SelectableTextAlign;
    float SeparatorSize;
    float SeparatorTextBorderSize;
    ImVec2_c SeparatorTextAlign;
    ImVec2_c SeparatorTextPadding;
    ImVec2_c DisplayWindowPadding;
    ImVec2_c DisplaySafeAreaPadding;
    float MouseCursorScale;
    _Bool AntiAliasedLines;
    _Bool AntiAliasedLinesUseTex;
    _Bool AntiAliasedFill;
    float CurveTessellationTol;
    float CircleTessellationMaxError;
    ImVec4_c Colors[ImGuiCol_COUNT];
    float HoverStationaryDelay;
    float HoverDelayShort;
    float HoverDelayNormal;
    ImGuiHoveredFlags HoverFlagsForTooltipMouse;
    ImGuiHoveredFlags HoverFlagsForTooltipNav;
    float _MainScale;
    float _NextFrameFontSizeBase;
};
struct ImGuiKeyData
{
    _Bool Down;
    float DownDuration;
    float DownDurationPrev;
    float AnalogValue;
};
typedef struct ImVector_ImWchar {int Size;int Capacity;ImWchar* Data;} ImVector_ImWchar;
struct ImGuiIO
{
    ImGuiConfigFlags ConfigFlags;
    ImGuiBackendFlags BackendFlags;
    ImVec2_c DisplaySize;
    ImVec2_c DisplayFramebufferScale;
    float DeltaTime;
    float IniSavingRate;
    const char* IniFilename;
    const char* LogFilename;
    void* UserData;
    ImFontAtlas*Fonts;
    ImFont* FontDefault;
    _Bool FontAllowUserScaling;
    _Bool ConfigNavSwapGamepadButtons;
    _Bool ConfigNavMoveSetMousePos;
    _Bool ConfigNavCaptureKeyboard;
    _Bool ConfigNavEscapeClearFocusItem;
    _Bool ConfigNavEscapeClearFocusWindow;
    _Bool ConfigNavCursorVisibleAuto;
    _Bool ConfigNavCursorVisibleAlways;
    _Bool MouseDrawCursor;
    _Bool ConfigMacOSXBehaviors;
    _Bool ConfigInputTrickleEventQueue;
    _Bool ConfigInputTextCursorBlink;
    _Bool ConfigInputTextEnterKeepActive;
    _Bool ConfigDragClickToInputText;
    _Bool ConfigWindowsResizeFromEdges;
    _Bool ConfigWindowsMoveFromTitleBarOnly;
    _Bool ConfigWindowsCopyContentsWithCtrlC;
    _Bool ConfigScrollbarScrollByPage;
    float ConfigMemoryCompactTimer;
    float MouseDoubleClickTime;
    float MouseDoubleClickMaxDist;
    float MouseDragThreshold;
    float KeyRepeatDelay;
    float KeyRepeatRate;
    _Bool ConfigErrorRecovery;
    _Bool ConfigErrorRecoveryEnableAssert;
    _Bool ConfigErrorRecoveryEnableDebugLog;
    _Bool ConfigErrorRecoveryEnableTooltip;
    _Bool ConfigDebugIsDebuggerPresent;
    _Bool ConfigDebugHighlightIdConflicts;
    _Bool ConfigDebugHighlightIdConflictsShowItemPicker;
    _Bool ConfigDebugBeginReturnValueOnce;
    _Bool ConfigDebugBeginReturnValueLoop;
    _Bool ConfigDebugIgnoreFocusLoss;
    _Bool ConfigDebugIniSettings;
    const char* BackendPlatformName;
    const char* BackendRendererName;
    void* BackendPlatformUserData;
    void* BackendRendererUserData;
    void* BackendLanguageUserData;
    _Bool WantCaptureMouse;
    _Bool WantCaptureKeyboard;
    _Bool WantTextInput;
    _Bool WantSetMousePos;
    _Bool WantSaveIniSettings;
    _Bool NavActive;
    _Bool NavVisible;
    float Framerate;
    int MetricsRenderVertices;
    int MetricsRenderIndices;
    int MetricsRenderWindows;
    int MetricsActiveWindows;
    ImVec2_c MouseDelta;
    ImGuiContext* Ctx;
    ImVec2_c MousePos;
    _Bool MouseDown[5];
    float MouseWheel;
    float MouseWheelH;
    ImGuiMouseSource MouseSource;
    _Bool KeyCtrl;
    _Bool KeyShift;
    _Bool KeyAlt;
    _Bool KeySuper;
    ImGuiKeyChord KeyMods;
    ImGuiKeyData KeysData[ImGuiKey_NamedKey_COUNT];
    _Bool WantCaptureMouseUnlessPopupClose;
    ImVec2_c MousePosPrev;
    ImVec2_c MouseClickedPos[5];
    double MouseClickedTime[5];
    _Bool MouseClicked[5];
    _Bool MouseDoubleClicked[5];
    ImU16 MouseClickedCount[5];
    ImU16 MouseClickedLastCount[5];
    _Bool MouseReleased[5];
    double MouseReleasedTime[5];
    _Bool MouseDownOwned[5];
    _Bool MouseDownOwnedUnlessPopupClose[5];
    _Bool MouseWheelRequestAxisSwap;
    _Bool MouseCtrlLeftAsRightClick;
    float MouseDownDuration[5];
    float MouseDownDurationPrev[5];
    float MouseDragMaxDistanceSqr[5];
    float PenPressure;
    _Bool AppFocusLost;
    _Bool AppAcceptingEvents;
    ImWchar16 InputQueueSurrogate;
    ImVector_ImWchar InputQueueCharacters;
};
struct ImGuiInputTextCallbackData
{
    ImGuiContext* Ctx;
    ImGuiInputTextFlags EventFlag;
    ImGuiInputTextFlags Flags;
    void* UserData;
    ImGuiID ID;
    ImGuiKey EventKey;
    ImWchar EventChar;
    _Bool EventActivated;
    _Bool BufDirty;
    char* Buf;
    int BufTextLen;
    int BufSize;
    int CursorPos;
    int SelectionStart;
    int SelectionEnd;
};
struct ImGuiSizeCallbackData
{
    void* UserData;
    ImVec2_c Pos;
    ImVec2_c CurrentSize;
    ImVec2_c DesiredSize;
};
struct ImGuiPayload
{
    void* Data;
    int DataSize;
    ImGuiID SourceId;
    ImGuiID SourceParentId;
    int DataFrameCount;
    char DataType[32 + 1];
    _Bool Preview;
    _Bool Delivery;
};
struct ImGuiOnceUponAFrame
{
     int RefFrame;
};
struct ImGuiTextRange
{
        const char* b;
        const char* e;
};
typedef struct ImGuiTextRange ImGuiTextRange;
typedef struct ImVector_ImGuiTextRange {int Size;int Capacity;ImGuiTextRange* Data;} ImVector_ImGuiTextRange;
struct ImGuiTextFilter
{
    char InputBuf[256];
    ImVector_ImGuiTextRange Filters;
    int CountGrep;
};
typedef struct ImGuiTextRange ImGuiTextRange;
typedef struct ImVector_char {int Size;int Capacity;char* Data;} ImVector_char;
struct ImGuiTextBuffer
{
    ImVector_char Buf;
};
struct ImGuiStoragePair
{
    ImGuiID key;
    union { int val_i; float val_f; void* val_p; };
};
typedef struct ImVector_ImGuiStoragePair {int Size;int Capacity;ImGuiStoragePair* Data;} ImVector_ImGuiStoragePair;
struct ImGuiStorage
{
    ImVector_ImGuiStoragePair Data;
};
typedef enum {
    ImGuiListClipperFlags_None = 0,
    ImGuiListClipperFlags_NoSetTableRowCounters = 1 << 0,
}ImGuiListClipperFlags_;
struct ImGuiListClipper
{
    int DisplayStart;
    int DisplayEnd;
    int UserIndex;
    int ItemsCount;
    float ItemsHeight;
    ImGuiListClipperFlags Flags;
    double StartPosY;
    double StartSeekOffsetY;
    ImGuiContext* Ctx;
    void* TempData;
};
struct ImColor_c
{
    ImVec4_c Value;
};
typedef enum {
    ImGuiMultiSelectFlags_None = 0,
    ImGuiMultiSelectFlags_SingleSelect = 1 << 0,
    ImGuiMultiSelectFlags_NoSelectAll = 1 << 1,
    ImGuiMultiSelectFlags_NoRangeSelect = 1 << 2,
    ImGuiMultiSelectFlags_NoAutoSelect = 1 << 3,
    ImGuiMultiSelectFlags_NoAutoClear = 1 << 4,
    ImGuiMultiSelectFlags_NoAutoClearOnReselect = 1 << 5,
    ImGuiMultiSelectFlags_BoxSelect1d = 1 << 6,
    ImGuiMultiSelectFlags_BoxSelect2d = 1 << 7,
    ImGuiMultiSelectFlags_BoxSelectNoScroll = 1 << 8,
    ImGuiMultiSelectFlags_ClearOnEscape = 1 << 9,
    ImGuiMultiSelectFlags_ClearOnClickVoid = 1 << 10,
    ImGuiMultiSelectFlags_ScopeWindow = 1 << 11,
    ImGuiMultiSelectFlags_ScopeRect = 1 << 12,
    ImGuiMultiSelectFlags_SelectOnAuto = 1 << 13,
    ImGuiMultiSelectFlags_SelectOnClickAlways = 1 << 14,
    ImGuiMultiSelectFlags_SelectOnClickRelease = 1 << 15,
    ImGuiMultiSelectFlags_NavWrapX = 1 << 16,
    ImGuiMultiSelectFlags_NoSelectOnRightClick = 1 << 17,
    ImGuiMultiSelectFlags_SelectOnMask_ = ImGuiMultiSelectFlags_SelectOnAuto | ImGuiMultiSelectFlags_SelectOnClickAlways | ImGuiMultiSelectFlags_SelectOnClickRelease,
}ImGuiMultiSelectFlags_;
typedef struct ImVector_ImGuiSelectionRequest {int Size;int Capacity;ImGuiSelectionRequest* Data;} ImVector_ImGuiSelectionRequest;
struct ImGuiMultiSelectIO
{
    ImVector_ImGuiSelectionRequest Requests;
    ImGuiSelectionUserData RangeSrcItem;
    ImGuiSelectionUserData NavIdItem;
    _Bool NavIdSelected;
    _Bool RangeSrcReset;
    int ItemsCount;
};
typedef enum {
    ImGuiSelectionRequestType_None = 0,
    ImGuiSelectionRequestType_SetAll,
    ImGuiSelectionRequestType_SetRange,
}ImGuiSelectionRequestType;
struct ImGuiSelectionRequest
{
    ImGuiSelectionRequestType Type;
    _Bool Selected;
    ImS8 RangeDirection;
    ImGuiSelectionUserData RangeFirstItem;
    ImGuiSelectionUserData RangeLastItem;
};
struct ImGuiSelectionBasicStorage
{
    int Size;
    _Bool PreserveOrder;
    void* UserData;
    ImGuiID (*AdapterIndexToStorageId)(ImGuiSelectionBasicStorage* self, int idx);
    int _SelectionOrder;
    ImGuiStorage _Storage;
};
struct ImGuiSelectionExternalStorage
{
    void* UserData;
    void (*AdapterSetItemSelected)(ImGuiSelectionExternalStorage* self, int idx, _Bool selected);
};
typedef unsigned short ImDrawIdx;
typedef void (*ImDrawCallback)(const ImDrawList* parent_list, const ImDrawCmd* cmd);
struct ImDrawCmd
{
    ImVec4_c ClipRect;
    ImTextureRef_c TexRef;
    unsigned int VtxOffset;
    unsigned int IdxOffset;
    unsigned int ElemCount;
    ImDrawCallback UserCallback;
    void* UserCallbackData;
    int UserCallbackDataSize;
    int UserCallbackDataOffset;
};
struct ImDrawVert
{
    ImVec2_c pos;
    ImVec2_c uv;
    ImU32 col;
};
typedef struct ImDrawCmdHeader ImDrawCmdHeader;
struct ImDrawCmdHeader
{
    ImVec4_c ClipRect;
    ImTextureRef_c TexRef;
    unsigned int VtxOffset;
};
typedef struct ImVector_ImDrawCmd {int Size;int Capacity;ImDrawCmd* Data;} ImVector_ImDrawCmd;
typedef struct ImVector_ImDrawIdx {int Size;int Capacity;ImDrawIdx* Data;} ImVector_ImDrawIdx;
struct ImDrawChannel
{
    ImVector_ImDrawCmd _CmdBuffer;
    ImVector_ImDrawIdx _IdxBuffer;
};
typedef struct ImVector_ImDrawChannel {int Size;int Capacity;ImDrawChannel* Data;} ImVector_ImDrawChannel;
struct ImDrawListSplitter
{
    int _Current;
    int _Count;
    ImVector_ImDrawChannel _Channels;
};
typedef enum {
    ImDrawFlags_None = 0,
    ImDrawFlags_RoundCornersTopLeft = 1 << 4,
    ImDrawFlags_RoundCornersTopRight = 1 << 5,
    ImDrawFlags_RoundCornersBottomLeft = 1 << 6,
    ImDrawFlags_RoundCornersBottomRight = 1 << 7,
    ImDrawFlags_RoundCornersNone = 1 << 8,
    ImDrawFlags_Closed = 1 << 9,
    ImDrawFlags_RoundCornersTop = ImDrawFlags_RoundCornersTopLeft | ImDrawFlags_RoundCornersTopRight,
    ImDrawFlags_RoundCornersBottom = ImDrawFlags_RoundCornersBottomLeft | ImDrawFlags_RoundCornersBottomRight,
    ImDrawFlags_RoundCornersLeft = ImDrawFlags_RoundCornersBottomLeft | ImDrawFlags_RoundCornersTopLeft,
    ImDrawFlags_RoundCornersRight = ImDrawFlags_RoundCornersBottomRight | ImDrawFlags_RoundCornersTopRight,
    ImDrawFlags_RoundCornersAll = ImDrawFlags_RoundCornersTopLeft | ImDrawFlags_RoundCornersTopRight | ImDrawFlags_RoundCornersBottomLeft | ImDrawFlags_RoundCornersBottomRight,
    ImDrawFlags_RoundCornersDefault_ = ImDrawFlags_RoundCornersAll,
    ImDrawFlags_RoundCornersMask_ = ImDrawFlags_RoundCornersAll | ImDrawFlags_RoundCornersNone,
    ImDrawFlags_InvalidMask_ = (ImDrawFlags)0x8000000F,
}ImDrawFlags_;
typedef enum {
    ImDrawListFlags_None = 0,
    ImDrawListFlags_AntiAliasedLines = 1 << 0,
    ImDrawListFlags_AntiAliasedLinesUseTex = 1 << 1,
    ImDrawListFlags_AntiAliasedFill = 1 << 2,
    ImDrawListFlags_AllowVtxOffset = 1 << 3,
}ImDrawListFlags_;
typedef struct ImVector_ImDrawVert {int Size;int Capacity;ImDrawVert* Data;} ImVector_ImDrawVert;
typedef struct ImVector_ImVec2 {int Size;int Capacity;ImVec2_c* Data;} ImVector_ImVec2;
typedef struct ImVector_ImVec4 {int Size;int Capacity;ImVec4_c* Data;} ImVector_ImVec4;
typedef struct ImVector_ImTextureRef {int Size;int Capacity;ImTextureRef_c* Data;} ImVector_ImTextureRef;
typedef struct ImVector_ImU8 {int Size;int Capacity;ImU8* Data;} ImVector_ImU8;
struct ImDrawList
{
    ImVector_ImDrawCmd CmdBuffer;
    ImVector_ImDrawIdx IdxBuffer;
    ImVector_ImDrawVert VtxBuffer;
    ImDrawListFlags Flags;
    unsigned int _VtxCurrentIdx;
    ImDrawListSharedData* _Data;
    ImDrawVert* _VtxWritePtr;
    ImDrawIdx* _IdxWritePtr;
    ImVector_ImVec2 _Path;
    ImDrawCmdHeader _CmdHeader;
    ImDrawListSplitter _Splitter;
    ImVector_ImVec4 _ClipRectStack;
    ImVector_ImTextureRef _TextureStack;
    ImVector_ImU8 _CallbacksDataBuf;
    float _FringeScale;
    const char* _OwnerName;
};
typedef struct ImVector_ImDrawListPtr {int Size;int Capacity;ImDrawList** Data;} ImVector_ImDrawListPtr;
typedef struct ImVector_ImTextureDataPtr {int Size;int Capacity;ImTextureData** Data;} ImVector_ImTextureDataPtr;
struct ImDrawData
{
    _Bool Valid;
    int CmdListsCount;
    int TotalIdxCount;
    int TotalVtxCount;
    ImVector_ImDrawListPtr CmdLists;
    ImVec2_c DisplayPos;
    ImVec2_c DisplaySize;
    ImVec2_c FramebufferScale;
    ImGuiViewport* OwnerViewport;
    ImVector_ImTextureDataPtr* Textures;
};
typedef enum {
    ImTextureFormat_RGBA32,
    ImTextureFormat_Alpha8,
}ImTextureFormat;
typedef enum {
    ImTextureStatus_OK,
    ImTextureStatus_Destroyed,
    ImTextureStatus_WantCreate,
    ImTextureStatus_WantUpdates,
    ImTextureStatus_WantDestroy,
}ImTextureStatus;
struct ImTextureRect
{
    unsigned short x, y;
    unsigned short w, h;
};
typedef struct ImVector_ImTextureRect {int Size;int Capacity;ImTextureRect* Data;} ImVector_ImTextureRect;
struct ImTextureData
{
    int UniqueID;
    ImTextureStatus Status;
    void* BackendUserData;
    ImTextureID TexID;
    ImTextureFormat Format;
    int Width;
    int Height;
    int BytesPerPixel;
    unsigned char* Pixels;
    ImTextureRect UsedRect;
    ImTextureRect UpdateRect;
    ImVector_ImTextureRect Updates;
    int UnusedFrames;
    unsigned short RefCount;
    _Bool UseColors;
    _Bool WantDestroyNextFrame;
};
struct ImFontConfig
{
    char Name[40];
    void* FontData;
    int FontDataSize;
    _Bool FontDataOwnedByAtlas;
    _Bool MergeMode;
    _Bool PixelSnapH;
    ImS8 OversampleH;
    ImS8 OversampleV;
    ImWchar EllipsisChar;
    float SizePixels;
    const ImWchar* GlyphRanges;
    const ImWchar* GlyphExcludeRanges;
    ImVec2_c GlyphOffset;
    float GlyphMinAdvanceX;
    float GlyphMaxAdvanceX;
    float GlyphExtraAdvanceX;
    ImU32 FontNo;
    unsigned int FontLoaderFlags;
    float RasterizerMultiply;
    float RasterizerDensity;
    float ExtraSizeScale;
    ImFontFlags Flags;
    ImFont* DstFont;
    const ImFontLoader* FontLoader;
    void* FontLoaderData;
};
struct ImFontGlyph
{
    unsigned int Colored : 1;
    unsigned int Visible : 1;
    unsigned int SourceIdx : 4;
    unsigned int Codepoint : 26;
    float AdvanceX;
    float X0, Y0, X1, Y1;
    float U0, V0, U1, V1;
    int PackId;
};
typedef struct ImVector_ImU32 {int Size;int Capacity;ImU32* Data;} ImVector_ImU32;
struct ImFontGlyphRangesBuilder
{
    ImVector_ImU32 UsedChars;
};
typedef int ImFontAtlasRectId;
struct ImFontAtlasRect
{
    unsigned short x, y;
    unsigned short w, h;
    ImVec2_c uv0, uv1;
};
typedef enum {
    ImFontAtlasFlags_None = 0,
    ImFontAtlasFlags_NoPowerOfTwoHeight = 1 << 0,
    ImFontAtlasFlags_NoMouseCursors = 1 << 1,
    ImFontAtlasFlags_NoBakedLines = 1 << 2,
}ImFontAtlasFlags_;
typedef struct ImVector_ImFontPtr {int Size;int Capacity;ImFont** Data;} ImVector_ImFontPtr;
typedef struct ImVector_ImFontConfig {int Size;int Capacity;ImFontConfig* Data;} ImVector_ImFontConfig;
typedef struct ImVector_ImDrawListSharedDataPtr {int Size;int Capacity;ImDrawListSharedData** Data;} ImVector_ImDrawListSharedDataPtr;
struct ImFontAtlas
{
    ImFontAtlasFlags Flags;
    ImTextureFormat TexDesiredFormat;
    int TexGlyphPadding;
    int TexMinWidth;
    int TexMinHeight;
    int TexMaxWidth;
    int TexMaxHeight;
    void* UserData;
    ImTextureRef_c TexRef;
    ImTextureData* TexData;
    ImVector_ImTextureDataPtr TexList;
    _Bool Locked;
    _Bool RendererHasTextures;
    _Bool TexIsBuilt;
    _Bool TexPixelsUseColors;
    ImVec2_c TexUvScale;
    ImVec2_c TexUvWhitePixel;
    ImVector_ImFontPtr Fonts;
    ImVector_ImFontConfig Sources;
    ImVec4_c TexUvLines[(32) + 1];
    int TexNextUniqueID;
    int FontNextUniqueID;
    ImVector_ImDrawListSharedDataPtr DrawListSharedDatas;
    ImFontAtlasBuilder* Builder;
    const ImFontLoader* FontLoader;
    const char* FontLoaderName;
    void* FontLoaderData;
    unsigned int FontLoaderFlags;
    int RefCount;
    ImGuiContext* OwnerContext;
};
typedef struct ImVector_float {int Size;int Capacity;float* Data;} ImVector_float;
typedef struct ImVector_ImU16 {int Size;int Capacity;ImU16* Data;} ImVector_ImU16;
typedef struct ImVector_ImFontGlyph {int Size;int Capacity;ImFontGlyph* Data;} ImVector_ImFontGlyph;
struct ImFontBaked
{
    ImVector_float IndexAdvanceX;
    float FallbackAdvanceX;
    float Size;
    float RasterizerDensity;
    ImVector_ImU16 IndexLookup;
    ImVector_ImFontGlyph Glyphs;
    int FallbackGlyphIndex;
    float Ascent, Descent;
    unsigned int MetricsTotalSurface:26;
    unsigned int WantDestroy:1;
    unsigned int LoadNoFallback:1;
    unsigned int LoadNoRenderOnLayout:1;
    int LastUsedFrame;
    ImGuiID BakedId;
    ImFont* OwnerFont;
    void* FontLoaderDatas;
};
typedef enum {
    ImFontFlags_None = 0,
    ImFontFlags_NoLoadError = 1 << 1,
    ImFontFlags_NoLoadGlyphs = 1 << 2,
    ImFontFlags_LockBakedSizes = 1 << 3,
    ImFontFlags_ImplicitRefSize = 1 << 4,
}ImFontFlags_;
typedef struct ImVector_ImFontConfigPtr {int Size;int Capacity;ImFontConfig** Data;} ImVector_ImFontConfigPtr;
struct ImFont
{
    ImFontBaked* LastBaked;
    ImFontAtlas* OwnerAtlas;
    ImFontFlags Flags;
    float CurrentRasterizerDensity;
    ImGuiID FontId;
    float LegacySize;
    ImVector_ImFontConfigPtr Sources;
    ImWchar EllipsisChar;
    ImWchar FallbackChar;
    ImU8 Used8kPagesMap[(0xFFFF +1)/8192/8];
    _Bool EllipsisAutoBake;
    ImGuiStorage RemapPairs;
};
typedef enum {
    ImGuiViewportFlags_None = 0,
    ImGuiViewportFlags_IsPlatformWindow = 1 << 0,
    ImGuiViewportFlags_IsPlatformMonitor = 1 << 1,
    ImGuiViewportFlags_OwnedByApp = 1 << 2,
}ImGuiViewportFlags_;
struct ImGuiViewport
{
    ImGuiID ID;
    ImGuiViewportFlags Flags;
    ImVec2_c Pos;
    ImVec2_c Size;
    ImVec2_c FramebufferScale;
    ImVec2_c WorkPos;
    ImVec2_c WorkSize;
    void* PlatformHandle;
    void* PlatformHandleRaw;
};
struct ImGuiPlatformIO
{
    const char* (*Platform_GetClipboardTextFn)(ImGuiContext* ctx);
    void (*Platform_SetClipboardTextFn)(ImGuiContext* ctx, const char* text);
    void* Platform_ClipboardUserData;
    _Bool (*Platform_OpenInShellFn)(ImGuiContext* ctx, const char* path);
    void* Platform_OpenInShellUserData;
    void (*Platform_SetImeDataFn)(ImGuiContext* ctx, ImGuiViewport* viewport, ImGuiPlatformImeData* data);
    void* Platform_ImeUserData;
    ImWchar Platform_LocaleDecimalPoint;
    int Renderer_TextureMaxWidth;
    int Renderer_TextureMaxHeight;
    void* Renderer_RenderState;
    ImDrawCallback DrawCallback_ResetRenderState;
    ImDrawCallback DrawCallback_SetSamplerLinear;
    ImDrawCallback DrawCallback_SetSamplerNearest;
    ImVector_ImTextureDataPtr Textures;
};
struct ImGuiPlatformImeData
{
    _Bool WantVisible;
    _Bool WantTextInput;
    ImVec2_c InputPos;
    float InputLineHeight;
    ImGuiID ViewportId;
};
struct ImBitVector;
struct ImRect_c;
struct ImGuiTextIndex;
struct ImDrawDataBuilder;
struct ImDrawListSharedData;
struct ImFontAtlasBuilder;
struct ImFontAtlasPostProcessData;
struct ImFontAtlasRectEntry;
struct ImGuiBoxSelectState;
struct ImGuiColorMod;
struct ImGuiContext;
struct ImGuiContextHook;
struct ImGuiDataTypeInfo;
struct ImGuiDeactivatedItemData;
struct ImGuiErrorRecoveryState;
struct ImGuiGroupData;
struct ImGuiInputTextState;
struct ImGuiInputTextDeactivateData;
struct ImGuiLastItemData;
struct ImGuiLocEntry;
struct ImGuiMenuColumns;
struct ImGuiMultiSelectState;
struct ImGuiMultiSelectTempData;
struct ImGuiNavItemData;
struct ImGuiMetricsConfig;
struct ImGuiNextWindowData;
struct ImGuiNextItemData;
struct ImGuiOldColumnData;
struct ImGuiOldColumns;
struct ImGuiPopupData;
struct ImGuiSettingsHandler;
struct ImGuiStyleMod;
struct ImGuiStyleVarInfo;
struct ImGuiTabBar;
struct ImGuiTabItem;
struct ImGuiTable;
struct ImGuiTableHeaderData;
struct ImGuiTableColumn;
struct ImGuiTableInstanceData;
struct ImGuiTableTempData;
struct ImGuiTableSettings;
struct ImGuiTableColumnsSettings;
struct ImGuiTreeNodeStackData;
struct ImGuiTypingSelectState;
struct ImGuiTypingSelectRequest;
struct ImGuiWindow;
struct ImGuiWindowTempData;
struct ImGuiWindowSettings;
typedef int ImGuiLayoutType;
typedef int ImDrawTextFlags;
typedef int ImGuiActivateFlags;
typedef int ImGuiDebugLogFlags;
typedef int ImGuiFocusRequestFlags;
typedef int ImGuiItemStatusFlags;
typedef int ImGuiOldColumnFlags;
typedef int ImGuiLogFlags;
typedef int ImGuiNavRenderCursorFlags;
typedef int ImGuiNavMoveFlags;
typedef int ImGuiNextItemDataFlags;
typedef int ImGuiNextWindowDataFlags;
typedef int ImGuiScrollFlags;
typedef int ImGuiSeparatorFlags;
typedef int ImGuiTextFlags;
typedef int ImGuiTooltipFlags;
typedef int ImGuiTypingSelectFlags;
typedef int ImGuiWindowBgClickFlags;
typedef int ImGuiWindowRefreshFlags;
typedef ImS16 ImGuiTableColumnIdx;
typedef ImU16 ImGuiTableDrawChannelIdx;
typedef enum {
    ImDrawTextFlags_None = 0,
    ImDrawTextFlags_CpuFineClip = 1 << 0,
    ImDrawTextFlags_WrapKeepBlanks = 1 << 1,
    ImDrawTextFlags_StopOnNewLine = 1 << 2,
}ImDrawTextFlags_;
typedef enum {
    ImWcharClass_Blank, ImWcharClass_Punct, ImWcharClass_Other
}ImWcharClass;
typedef FILE* ImFileHandle;
typedef struct ImVec1 ImVec1;
struct ImVec1
{
    float x;
};
typedef struct ImVec2i_c ImVec2i_c;
struct ImVec2i_c
{
    int x, y;
};
typedef struct ImVec2ih ImVec2ih;
struct ImVec2ih
{
    short x, y;
};
struct ImRect_c
{
    ImVec2_c Min;
    ImVec2_c Max;
};
typedef ImU32* ImBitArrayPtr;
struct ImBitVector
{
    ImVector_ImU32 Storage;
};
typedef int ImPoolIdx;
typedef struct ImVector_int {int Size;int Capacity;int* Data;} ImVector_int;
struct ImGuiTextIndex
{
    ImVector_int Offsets;
    int EndOffset;
};
struct ImDrawListSharedData
{
    ImVec2_c TexUvWhitePixel;
    const ImVec4_c* TexUvLines;
    ImFontAtlas* FontAtlas;
    ImFont* Font;
    float FontSize;
    float FontScale;
    float CurveTessellationTol;
    float CircleSegmentMaxError;
    float InitialFringeScale;
    ImDrawListFlags InitialFlags;
    ImVec4_c ClipRectFullscreen;
    ImVector_ImVec2 TempBuffer;
    ImVector_ImDrawListPtr DrawLists;
    ImGuiContext* Context;
    ImVec2_c ArcFastVtx[48];
    float ArcFastRadiusCutoff;
    ImU8 CircleSegmentCounts[64];
};
struct ImDrawDataBuilder
{
    ImVector_ImDrawListPtr* Layers[2];
    ImVector_ImDrawListPtr LayerData1;
};
typedef struct ImFontStackData ImFontStackData;
struct ImFontStackData
{
    ImFont* Font;
    float FontSizeBeforeScaling;
    float FontSizeAfterScaling;
};
struct ImGuiStyleVarInfo
{
    ImU32 Count : 8;
    ImGuiDataType DataType : 8;
    ImU32 Offset : 16;
};
struct ImGuiColorMod
{
    ImGuiCol Col;
    ImVec4_c BackupValue;
};
struct ImGuiStyleMod
{
    ImGuiStyleVar VarIdx;
    union { int BackupInt[2]; float BackupFloat[2]; };
};
typedef struct ImGuiDataTypeStorage ImGuiDataTypeStorage;
struct ImGuiDataTypeStorage
{
    ImU8 Data[8];
};
struct ImGuiDataTypeInfo
{
    size_t Size;
    const char* Name;
    const char* PrintFmt;
    const char* ScanFmt;
};
typedef enum {
    ImGuiDataType_Pointer = ImGuiDataType_COUNT,
    ImGuiDataType_ID,
}ImGuiDataTypePrivate_;
typedef enum {
    ImGuiItemFlags_ReadOnly = 1 << 11,
    ImGuiItemFlags_MixedValue = 1 << 12,
    ImGuiItemFlags_NoWindowHoverableCheck = 1 << 13,
    ImGuiItemFlags_AllowOverlap = 1 << 14,
    ImGuiItemFlags_NoNavDisableMouseHover = 1 << 15,
    ImGuiItemFlags_NoMarkEdited = 1 << 16,
    ImGuiItemFlags_NoFocus = 1 << 17,
    ImGuiItemFlags_Inputable = 1 << 20,
    ImGuiItemFlags_HasSelectionUserData = 1 << 21,
    ImGuiItemFlags_IsMultiSelect = 1 << 22,
    ImGuiItemFlags_Default_ = ImGuiItemFlags_AutoClosePopups,
}ImGuiItemFlagsPrivate_;
typedef enum {
    ImGuiItemStatusFlags_None = 0,
    ImGuiItemStatusFlags_HoveredRect = 1 << 0,
    ImGuiItemStatusFlags_HasDisplayRect = 1 << 1,
    ImGuiItemStatusFlags_Edited = 1 << 2,
    ImGuiItemStatusFlags_ToggledSelection = 1 << 3,
    ImGuiItemStatusFlags_ToggledOpen = 1 << 4,
    ImGuiItemStatusFlags_HasDeactivated = 1 << 5,
    ImGuiItemStatusFlags_Deactivated = 1 << 6,
    ImGuiItemStatusFlags_HoveredWindow = 1 << 7,
    ImGuiItemStatusFlags_Visible = 1 << 8,
    ImGuiItemStatusFlags_HasClipRect = 1 << 9,
    ImGuiItemStatusFlags_HasShortcut = 1 << 10,
    ImGuiItemStatusFlags_EditedInternal = 1 << 11,
}ImGuiItemStatusFlags_;
typedef enum {
    ImGuiHoveredFlags_DelayMask_ = ImGuiHoveredFlags_DelayNone | ImGuiHoveredFlags_DelayShort | ImGuiHoveredFlags_DelayNormal | ImGuiHoveredFlags_NoSharedDelay,
    ImGuiHoveredFlags_AllowedMaskForIsWindowHovered = ImGuiHoveredFlags_ChildWindows | ImGuiHoveredFlags_RootWindow | ImGuiHoveredFlags_AnyWindow | ImGuiHoveredFlags_NoPopupHierarchy | ImGuiHoveredFlags_AllowWhenBlockedByPopup | ImGuiHoveredFlags_AllowWhenBlockedByActiveItem | ImGuiHoveredFlags_ForTooltip | ImGuiHoveredFlags_Stationary,
    ImGuiHoveredFlags_AllowedMaskForIsItemHovered = ImGuiHoveredFlags_AllowWhenBlockedByPopup | ImGuiHoveredFlags_AllowWhenBlockedByActiveItem | ImGuiHoveredFlags_AllowWhenOverlapped | ImGuiHoveredFlags_AllowWhenDisabled | ImGuiHoveredFlags_NoNavOverride | ImGuiHoveredFlags_ForTooltip | ImGuiHoveredFlags_Stationary | ImGuiHoveredFlags_DelayMask_,
}ImGuiHoveredFlagsPrivate_;
typedef enum {
    ImGuiInputTextFlags_Multiline = 1 << 26,
    ImGuiInputTextFlags_TempInput = 1 << 27,
    ImGuiInputTextFlags_LocalizeDecimalPoint= 1 << 28,
}ImGuiInputTextFlagsPrivate_;
typedef enum {
    ImGuiButtonFlags_PressedOnClick = 1 << 4,
    ImGuiButtonFlags_PressedOnClickRelease = 1 << 5,
    ImGuiButtonFlags_PressedOnClickReleaseAnywhere = 1 << 6,
    ImGuiButtonFlags_PressedOnRelease = 1 << 7,
    ImGuiButtonFlags_PressedOnDoubleClick = 1 << 8,
    ImGuiButtonFlags_PressedOnDragDropHold = 1 << 9,
    ImGuiButtonFlags_FlattenChildren = 1 << 11,
    ImGuiButtonFlags_AlignTextBaseLine = 1 << 15,
    ImGuiButtonFlags_NoKeyModsAllowed = 1 << 16,
    ImGuiButtonFlags_NoHoldingActiveId = 1 << 17,
    ImGuiButtonFlags_NoNavFocus = 1 << 18,
    ImGuiButtonFlags_NoHoveredOnFocus = 1 << 19,
    ImGuiButtonFlags_NoSetKeyOwner = 1 << 20,
    ImGuiButtonFlags_NoTestKeyOwner = 1 << 21,
    ImGuiButtonFlags_NoFocus = 1 << 22,
    ImGuiButtonFlags_PressedOnMask_ = ImGuiButtonFlags_PressedOnClick | ImGuiButtonFlags_PressedOnClickRelease | ImGuiButtonFlags_PressedOnClickReleaseAnywhere | ImGuiButtonFlags_PressedOnRelease | ImGuiButtonFlags_PressedOnDoubleClick | ImGuiButtonFlags_PressedOnDragDropHold,
    ImGuiButtonFlags_PressedOnDefault_ = ImGuiButtonFlags_PressedOnClickRelease,
}ImGuiButtonFlagsPrivate_;
typedef enum {
    ImGuiComboFlags_CustomPreview = 1 << 20,
}ImGuiComboFlagsPrivate_;
typedef enum {
    ImGuiSliderFlags_Vertical = 1 << 20,
    ImGuiSliderFlags_ReadOnly = 1 << 21,
}ImGuiSliderFlagsPrivate_;
typedef enum {
    ImGuiSelectableFlags_NoHoldingActiveID = 1 << 20,
    ImGuiSelectableFlags_SelectOnClick = 1 << 22,
    ImGuiSelectableFlags_SelectOnRelease = 1 << 23,
    ImGuiSelectableFlags_SpanAvailWidth = 1 << 24,
    ImGuiSelectableFlags_SetNavIdOnHover = 1 << 25,
    ImGuiSelectableFlags_NoPadWithHalfSpacing = 1 << 26,
    ImGuiSelectableFlags_NoSetKeyOwner = 1 << 27,
}ImGuiSelectableFlagsPrivate_;
typedef enum {
    ImGuiTreeNodeFlags_NoNavFocus = 1 << 27,
    ImGuiTreeNodeFlags_ClipLabelForTrailingButton = 1 << 28,
    ImGuiTreeNodeFlags_UpsideDownArrow = 1 << 29,
    ImGuiTreeNodeFlags_OpenOnMask_ = ImGuiTreeNodeFlags_OpenOnDoubleClick | ImGuiTreeNodeFlags_OpenOnArrow,
    ImGuiTreeNodeFlags_DrawLinesMask_ = ImGuiTreeNodeFlags_DrawLinesNone | ImGuiTreeNodeFlags_DrawLinesFull | ImGuiTreeNodeFlags_DrawLinesToNodes,
}ImGuiTreeNodeFlagsPrivate_;
typedef enum {
    ImGuiSeparatorFlags_None = 0,
    ImGuiSeparatorFlags_Horizontal = 1 << 0,
    ImGuiSeparatorFlags_Vertical = 1 << 1,
    ImGuiSeparatorFlags_SpanAllColumns = 1 << 2,
}ImGuiSeparatorFlags_;
typedef enum {
    ImGuiFocusRequestFlags_None = 0,
    ImGuiFocusRequestFlags_RestoreFocusedChild = 1 << 0,
    ImGuiFocusRequestFlags_UnlessBelowModal = 1 << 1,
}ImGuiFocusRequestFlags_;
typedef enum {
    ImGuiTextFlags_None = 0,
    ImGuiTextFlags_NoWidthForLargeClippedText = 1 << 0,
}ImGuiTextFlags_;
typedef enum {
    ImGuiTooltipFlags_None = 0,
    ImGuiTooltipFlags_OverridePrevious = 1 << 1,
}ImGuiTooltipFlags_;
typedef enum {
    ImGuiLayoutType_Horizontal = 0,
    ImGuiLayoutType_Vertical = 1
}ImGuiLayoutType_;
typedef enum {
    ImGuiLogFlags_None = 0,
    ImGuiLogFlags_OutputTTY = 1 << 0,
    ImGuiLogFlags_OutputFile = 1 << 1,
    ImGuiLogFlags_OutputBuffer = 1 << 2,
    ImGuiLogFlags_OutputClipboard = 1 << 3,
    ImGuiLogFlags_OutputMask_ = ImGuiLogFlags_OutputTTY | ImGuiLogFlags_OutputFile | ImGuiLogFlags_OutputBuffer | ImGuiLogFlags_OutputClipboard,
}ImGuiLogFlags_;
typedef enum {
    ImGuiAxis_None = -1,
    ImGuiAxis_X = 0,
    ImGuiAxis_Y = 1
}ImGuiAxis;
typedef enum {
    ImGuiPlotType_Lines,
    ImGuiPlotType_Histogram,
}ImGuiPlotType;
typedef struct ImGuiComboPreviewData ImGuiComboPreviewData;
struct ImGuiComboPreviewData
{
    ImRect_c PreviewRect;
    ImVec2_c BackupCursorPos;
    ImVec2_c BackupCursorMaxPos;
    ImVec2_c BackupCursorPosPrevLine;
    float BackupPrevLineTextBaseOffset;
    ImGuiLayoutType BackupLayout;
};
struct ImGuiGroupData
{
    ImGuiID WindowID;
    ImVec2_c BackupCursorPos;
    ImVec2_c BackupCursorMaxPos;
    ImVec2_c BackupCursorPosPrevLine;
    ImVec1 BackupIndent;
    ImVec1 BackupGroupOffset;
    ImVec2_c BackupCurrLineSize;
    float BackupCurrLineTextBaseOffset;
    ImGuiID BackupActiveIdIsAlive;
    _Bool BackupActiveIdHasBeenEditedThisFrame;
    _Bool BackupDeactivatedIdIsAlive;
    _Bool BackupHoveredIdIsAlive;
    _Bool BackupIsSameLine;
    _Bool EmitItem;
};
struct ImGuiMenuColumns
{
    ImU32 TotalWidth;
    ImU32 NextTotalWidth;
    ImU16 Spacing;
    ImU16 OffsetIcon;
    ImU16 OffsetLabel;
    ImU16 OffsetShortcut;
    ImU16 OffsetMark;
    ImU16 Widths[4];
};
typedef struct ImGuiInputTextDeactivatedState ImGuiInputTextDeactivatedState;
struct ImGuiInputTextDeactivatedState
{
    ImGuiID ID;
    ImVector_char TextA;
}; struct STB_TexteditState;
typedef STB_TexteditState ImStbTexteditState;
struct ImGuiInputTextState
{
    ImGuiContext* Ctx;
    ImStbTexteditState* Stb;
    ImGuiInputTextFlags Flags;
    ImGuiID ID;
    int TextLen;
    const char* TextSrc;
    ImVector_char TextA;
    ImVector_char TextToRevertTo;
    ImVector_char CallbackTextBackup;
    int BufCapacity;
    ImVec2_c Scroll;
    int LineCount;
    float WrapWidth;
    float CursorAnim;
    _Bool CursorFollow;
    _Bool CursorCenterY;
    _Bool SelectedAllMouseLock;
    _Bool EditedBefore;
    _Bool EditedThisFrame;
    _Bool WantReloadUserBuf;
    ImS8 LastMoveDirectionLR;
    int ReloadSelectionStart;
    int ReloadSelectionEnd;
};
typedef enum {
    ImGuiWindowRefreshFlags_None = 0,
    ImGuiWindowRefreshFlags_TryToAvoidRefresh = 1 << 0,
    ImGuiWindowRefreshFlags_RefreshOnHover = 1 << 1,
    ImGuiWindowRefreshFlags_RefreshOnFocus = 1 << 2,
}ImGuiWindowRefreshFlags_;
typedef enum {
    ImGuiWindowBgClickFlags_None = 0,
    ImGuiWindowBgClickFlags_Move = 1 << 0,
}ImGuiWindowBgClickFlags_;
typedef enum {
    ImGuiNextWindowDataFlags_None = 0,
    ImGuiNextWindowDataFlags_HasPos = 1 << 0,
    ImGuiNextWindowDataFlags_HasSize = 1 << 1,
    ImGuiNextWindowDataFlags_HasContentSize = 1 << 2,
    ImGuiNextWindowDataFlags_HasCollapsed = 1 << 3,
    ImGuiNextWindowDataFlags_HasSizeConstraint = 1 << 4,
    ImGuiNextWindowDataFlags_HasFocus = 1 << 5,
    ImGuiNextWindowDataFlags_HasBgAlpha = 1 << 6,
    ImGuiNextWindowDataFlags_HasScroll = 1 << 7,
    ImGuiNextWindowDataFlags_HasWindowFlags = 1 << 8,
    ImGuiNextWindowDataFlags_HasChildFlags = 1 << 9,
    ImGuiNextWindowDataFlags_HasRefreshPolicy = 1 << 10,
}ImGuiNextWindowDataFlags_;
struct ImGuiNextWindowData
{
    ImGuiNextWindowDataFlags HasFlags;
    ImGuiCond PosCond;
    ImGuiCond SizeCond;
    ImGuiCond CollapsedCond;
    ImVec2_c PosVal;
    ImVec2_c PosPivotVal;
    ImVec2_c SizeVal;
    ImVec2_c ContentSizeVal;
    ImVec2_c ScrollVal;
    ImGuiWindowFlags WindowFlags;
    ImGuiChildFlags ChildFlags;
    _Bool CollapsedVal;
    ImRect_c SizeConstraintRect;
    ImGuiSizeCallback SizeCallback;
    void* SizeCallbackUserData;
    float BgAlphaVal;
    ImVec2_c MenuBarOffsetMinVal;
    ImGuiWindowRefreshFlags RefreshFlagsVal;
};
typedef enum {
    ImGuiNextItemDataFlags_None = 0,
    ImGuiNextItemDataFlags_HasWidth = 1 << 0,
    ImGuiNextItemDataFlags_HasOpen = 1 << 1,
    ImGuiNextItemDataFlags_HasShortcut = 1 << 2,
    ImGuiNextItemDataFlags_HasRefVal = 1 << 3,
    ImGuiNextItemDataFlags_HasStorageID = 1 << 4,
    ImGuiNextItemDataFlags_HasColorMarker = 1 << 5,
}ImGuiNextItemDataFlags_;
struct ImGuiNextItemData
{
    ImGuiNextItemDataFlags HasFlags;
    ImGuiItemFlags ItemFlags;
    ImGuiID FocusScopeId;
    ImGuiSelectionUserData SelectionUserData;
    float Width;
    ImGuiKeyChord Shortcut;
    ImGuiInputFlags ShortcutFlags;
    _Bool OpenVal;
    ImU8 OpenCond;
    ImGuiDataTypeStorage RefVal;
    ImGuiID StorageId;
    ImU32 ColorMarker;
};
struct ImGuiLastItemData
{
    ImGuiID ID;
    ImGuiItemFlags ItemFlags;
    ImGuiItemStatusFlags StatusFlags;
    ImRect_c Rect;
    ImRect_c NavRect;
    ImRect_c DisplayRect;
    ImRect_c ClipRect;
    ImGuiKeyChord Shortcut;
};
struct ImGuiTreeNodeStackData
{
    ImGuiID ID;
    ImGuiTreeNodeFlags TreeFlags;
    ImGuiItemFlags ItemFlags;
    ImRect_c NavRect;
    float DrawLinesX1;
    float DrawLinesToNodesY2;
    ImGuiTableColumnIdx DrawLinesTableColumn;
};
struct ImGuiErrorRecoveryState
{
    short SizeOfWindowStack;
    short SizeOfIDStack;
    short SizeOfTreeStack;
    short SizeOfColorStack;
    short SizeOfStyleVarStack;
    short SizeOfFontStack;
    short SizeOfFocusScopeStack;
    short SizeOfGroupStack;
    short SizeOfItemFlagsStack;
    short SizeOfBeginPopupStack;
    short SizeOfDisabledStack;
};
typedef struct ImGuiWindowStackData ImGuiWindowStackData;
struct ImGuiWindowStackData
{
    ImGuiWindow* Window;
    ImGuiLastItemData ParentLastItemDataBackup;
    ImGuiErrorRecoveryState StackSizesInBegin;
    _Bool DisabledOverrideReenable;
    float DisabledOverrideReenableAlphaBackup;
};
typedef struct ImGuiShrinkWidthItem ImGuiShrinkWidthItem;
struct ImGuiShrinkWidthItem
{
    int Index;
    float Width;
    float InitialWidth;
};
typedef struct ImGuiPtrOrIndex ImGuiPtrOrIndex;
struct ImGuiPtrOrIndex
{
    void* Ptr;
    int Index;
};
struct ImGuiDeactivatedItemData
{
    ImGuiID ID;
    int ElapseFrame;
    _Bool HasBeenEditedBefore;
    _Bool IsAlive;
};
typedef enum {
    ImGuiPopupPositionPolicy_Default,
    ImGuiPopupPositionPolicy_ComboBox,
    ImGuiPopupPositionPolicy_Tooltip,
}ImGuiPopupPositionPolicy;
struct ImGuiPopupData
{
    ImGuiID PopupId;
    ImGuiWindow* Window;
    ImGuiWindow* RestoreNavWindow;
    int ParentNavLayer;
    int OpenFrameCount;
    ImGuiID OpenParentId;
    ImVec2_c OpenPopupPos;
    ImVec2_c OpenMousePos;
};
typedef struct ImBitArray_ImGuiKey_NamedKey_COUNT__lessImGuiKey_NamedKey_BEGIN {ImU32 Data[(ImGuiKey_NamedKey_COUNT+31)>>5];} ImBitArray_ImGuiKey_NamedKey_COUNT__lessImGuiKey_NamedKey_BEGIN;
typedef ImBitArray_ImGuiKey_NamedKey_COUNT__lessImGuiKey_NamedKey_BEGIN ImBitArrayForNamedKeys;
typedef enum {
    ImGuiInputEventType_None = 0,
    ImGuiInputEventType_MousePos,
    ImGuiInputEventType_MouseWheel,
    ImGuiInputEventType_MouseButton,
    ImGuiInputEventType_Key,
    ImGuiInputEventType_Text,
    ImGuiInputEventType_Focus,
    ImGuiInputEventType_COUNT
}ImGuiInputEventType;
typedef enum {
ImGuiInputSource_None=0,
ImGuiInputSource_Mouse=1,
ImGuiInputSource_Keyboard=2,
ImGuiInputSource_Gamepad=3,
ImGuiInputSource_COUNT=4,
}ImGuiInputSource;
typedef struct ImGuiInputEventMousePos ImGuiInputEventMousePos;
struct ImGuiInputEventMousePos
{ float PosX, PosY; ImGuiMouseSource MouseSource;
};
typedef struct ImGuiInputEventMouseWheel ImGuiInputEventMouseWheel;
struct ImGuiInputEventMouseWheel
{ float WheelX, WheelY; ImGuiMouseSource MouseSource;
};
typedef struct ImGuiInputEventMouseButton ImGuiInputEventMouseButton;
struct ImGuiInputEventMouseButton
{ int Button; _Bool Down; ImGuiMouseSource MouseSource;
};
typedef struct ImGuiInputEventKey ImGuiInputEventKey;
struct ImGuiInputEventKey
{ ImGuiKey Key; _Bool Down; float AnalogValue;
};
typedef struct ImGuiInputEventText ImGuiInputEventText;
struct ImGuiInputEventText
{ unsigned int Char;
};
typedef struct ImGuiInputEventAppFocused ImGuiInputEventAppFocused;
struct ImGuiInputEventAppFocused
{ _Bool Focused;
};
typedef struct ImGuiInputEvent ImGuiInputEvent;
struct ImGuiInputEvent
{
    ImGuiInputEventType Type;
    ImGuiInputSource Source;
    ImU32 EventId;
    union
    {
        ImGuiInputEventMousePos MousePos;
        ImGuiInputEventMouseWheel MouseWheel;
        ImGuiInputEventMouseButton MouseButton;
        ImGuiInputEventKey Key;
        ImGuiInputEventText Text;
        ImGuiInputEventAppFocused AppFocused;
    };
    _Bool AddedByTestEngine;
};
typedef ImS16 ImGuiKeyRoutingIndex;
typedef struct ImGuiKeyRoutingData ImGuiKeyRoutingData;
struct ImGuiKeyRoutingData
{
    ImGuiKeyRoutingIndex NextEntryIndex;
    ImU16 Mods;
    ImU16 RoutingCurrScore;
    ImU16 RoutingNextScore;
    ImGuiID RoutingCurr;
    ImGuiID RoutingNext;
};
typedef struct ImGuiKeyRoutingTable ImGuiKeyRoutingTable;
typedef struct ImVector_ImGuiKeyRoutingData {int Size;int Capacity;ImGuiKeyRoutingData* Data;} ImVector_ImGuiKeyRoutingData;
struct ImGuiKeyRoutingTable
{
    ImGuiKeyRoutingIndex Index[ImGuiKey_NamedKey_COUNT];
    ImVector_ImGuiKeyRoutingData Entries;
    ImVector_ImGuiKeyRoutingData EntriesNext;
};
typedef struct ImGuiKeyOwnerData ImGuiKeyOwnerData;
struct ImGuiKeyOwnerData
{
    ImGuiID OwnerCurr;
    ImGuiID OwnerNext;
    _Bool LockThisFrame;
    _Bool LockUntilRelease;
};
typedef enum {
    ImGuiInputFlags_RepeatRateDefault = 1 << 1,
    ImGuiInputFlags_RepeatRateNavMove = 1 << 2,
    ImGuiInputFlags_RepeatRateNavTweak = 1 << 3,
    ImGuiInputFlags_RepeatUntilRelease = 1 << 4,
    ImGuiInputFlags_RepeatUntilKeyModsChange = 1 << 5,
    ImGuiInputFlags_RepeatUntilKeyModsChangeFromNone = 1 << 6,
    ImGuiInputFlags_RepeatUntilOtherKeyPress = 1 << 7,
    ImGuiInputFlags_LockThisFrame = 1 << 20,
    ImGuiInputFlags_LockUntilRelease = 1 << 21,
    ImGuiInputFlags_CondHovered = 1 << 22,
    ImGuiInputFlags_CondActive = 1 << 23,
    ImGuiInputFlags_CondDefault_ = ImGuiInputFlags_CondHovered | ImGuiInputFlags_CondActive,
    ImGuiInputFlags_RepeatRateMask_ = ImGuiInputFlags_RepeatRateDefault | ImGuiInputFlags_RepeatRateNavMove | ImGuiInputFlags_RepeatRateNavTweak,
    ImGuiInputFlags_RepeatUntilMask_ = ImGuiInputFlags_RepeatUntilRelease | ImGuiInputFlags_RepeatUntilKeyModsChange | ImGuiInputFlags_RepeatUntilKeyModsChangeFromNone | ImGuiInputFlags_RepeatUntilOtherKeyPress,
    ImGuiInputFlags_RepeatMask_ = ImGuiInputFlags_Repeat | ImGuiInputFlags_RepeatRateMask_ | ImGuiInputFlags_RepeatUntilMask_,
    ImGuiInputFlags_CondMask_ = ImGuiInputFlags_CondHovered | ImGuiInputFlags_CondActive,
    ImGuiInputFlags_RouteTypeMask_ = ImGuiInputFlags_RouteActive | ImGuiInputFlags_RouteFocused | ImGuiInputFlags_RouteGlobal | ImGuiInputFlags_RouteAlways,
    ImGuiInputFlags_RouteOptionsMask_ = ImGuiInputFlags_RouteOverFocused | ImGuiInputFlags_RouteOverActive | ImGuiInputFlags_RouteUnlessBgFocused | ImGuiInputFlags_RouteFromRootWindow,
    ImGuiInputFlags_SupportedByIsKeyPressed = ImGuiInputFlags_RepeatMask_,
    ImGuiInputFlags_SupportedByIsMouseClicked = ImGuiInputFlags_Repeat,
    ImGuiInputFlags_SupportedByShortcut = ImGuiInputFlags_RepeatMask_ | ImGuiInputFlags_RouteTypeMask_ | ImGuiInputFlags_RouteOptionsMask_,
    ImGuiInputFlags_SupportedBySetNextItemShortcut = ImGuiInputFlags_RepeatMask_ | ImGuiInputFlags_RouteTypeMask_ | ImGuiInputFlags_RouteOptionsMask_ | ImGuiInputFlags_Tooltip,
    ImGuiInputFlags_SupportedBySetKeyOwner = ImGuiInputFlags_LockThisFrame | ImGuiInputFlags_LockUntilRelease,
    ImGuiInputFlags_SupportedBySetItemKeyOwner = ImGuiInputFlags_SupportedBySetKeyOwner | ImGuiInputFlags_CondMask_,
}ImGuiInputFlagsPrivate_;
typedef struct ImGuiListClipperRange ImGuiListClipperRange;
struct ImGuiListClipperRange
{
    int Min;
    int Max;
    _Bool PosToIndexConvert;
    ImS8 PosToIndexOffsetMin;
    ImS8 PosToIndexOffsetMax;
};
typedef struct ImGuiListClipperData ImGuiListClipperData;
typedef struct ImVector_ImGuiListClipperRange {int Size;int Capacity;ImGuiListClipperRange* Data;} ImVector_ImGuiListClipperRange;
struct ImGuiListClipperData
{
    ImGuiListClipper* ListClipper;
    float LossynessOffset;
    int StepNo;
    int ItemsFrozen;
    ImVector_ImGuiListClipperRange Ranges;
};
typedef enum {
    ImGuiActivateFlags_None = 0,
    ImGuiActivateFlags_PreferInput = 1 << 0,
    ImGuiActivateFlags_PreferTweak = 1 << 1,
    ImGuiActivateFlags_TryToPreserveState = 1 << 2,
    ImGuiActivateFlags_FromTabbing = 1 << 3,
    ImGuiActivateFlags_FromShortcut = 1 << 4,
    ImGuiActivateFlags_FromFocusApi = 1 << 5,
}ImGuiActivateFlags_;
typedef enum {
    ImGuiScrollFlags_None = 0,
    ImGuiScrollFlags_KeepVisibleEdgeX = 1 << 0,
    ImGuiScrollFlags_KeepVisibleEdgeY = 1 << 1,
    ImGuiScrollFlags_KeepVisibleCenterX = 1 << 2,
    ImGuiScrollFlags_KeepVisibleCenterY = 1 << 3,
    ImGuiScrollFlags_AlwaysCenterX = 1 << 4,
    ImGuiScrollFlags_AlwaysCenterY = 1 << 5,
    ImGuiScrollFlags_NoScrollParent = 1 << 6,
    ImGuiScrollFlags_MaskX_ = ImGuiScrollFlags_KeepVisibleEdgeX | ImGuiScrollFlags_KeepVisibleCenterX | ImGuiScrollFlags_AlwaysCenterX,
    ImGuiScrollFlags_MaskY_ = ImGuiScrollFlags_KeepVisibleEdgeY | ImGuiScrollFlags_KeepVisibleCenterY | ImGuiScrollFlags_AlwaysCenterY,
}ImGuiScrollFlags_;
typedef enum {
    ImGuiNavRenderCursorFlags_None = 0,
    ImGuiNavRenderCursorFlags_Compact = 1 << 1,
    ImGuiNavRenderCursorFlags_AlwaysDraw = 1 << 2,
    ImGuiNavRenderCursorFlags_NoRounding = 1 << 3,
}ImGuiNavRenderCursorFlags_;
typedef enum {
    ImGuiNavMoveFlags_None = 0,
    ImGuiNavMoveFlags_LoopX = 1 << 0,
    ImGuiNavMoveFlags_LoopY = 1 << 1,
    ImGuiNavMoveFlags_WrapX = 1 << 2,
    ImGuiNavMoveFlags_WrapY = 1 << 3,
    ImGuiNavMoveFlags_WrapMask_ = ImGuiNavMoveFlags_LoopX | ImGuiNavMoveFlags_LoopY | ImGuiNavMoveFlags_WrapX | ImGuiNavMoveFlags_WrapY,
    ImGuiNavMoveFlags_AllowCurrentNavId = 1 << 4,
    ImGuiNavMoveFlags_AlsoScoreVisibleSet = 1 << 5,
    ImGuiNavMoveFlags_ScrollToEdgeY = 1 << 6,
    ImGuiNavMoveFlags_Forwarded = 1 << 7,
    ImGuiNavMoveFlags_DebugNoResult = 1 << 8,
    ImGuiNavMoveFlags_FocusApi = 1 << 9,
    ImGuiNavMoveFlags_IsTabbing = 1 << 10,
    ImGuiNavMoveFlags_IsPageMove = 1 << 11,
    ImGuiNavMoveFlags_Activate = 1 << 12,
    ImGuiNavMoveFlags_NoSelect = 1 << 13,
    ImGuiNavMoveFlags_NoSetNavCursorVisible = 1 << 14,
    ImGuiNavMoveFlags_NoClearActiveId = 1 << 15,
}ImGuiNavMoveFlags_;
typedef enum {
    ImGuiNavLayer_Main = 0,
    ImGuiNavLayer_Menu = 1,
    ImGuiNavLayer_COUNT
}ImGuiNavLayer;
struct ImGuiNavItemData
{
    ImGuiWindow* Window;
    ImGuiID ID;
    ImGuiID FocusScopeId;
    ImRect_c RectRel;
    ImGuiItemFlags ItemFlags;
    float DistBox;
    float DistCenter;
    float DistAxial;
    ImGuiSelectionUserData SelectionUserData;
};
typedef struct ImGuiFocusScopeData ImGuiFocusScopeData;
struct ImGuiFocusScopeData
{
    ImGuiID ID;
    ImGuiID WindowID;
};
typedef enum {
    ImGuiTypingSelectFlags_None = 0,
    ImGuiTypingSelectFlags_AllowBackspace = 1 << 0,
    ImGuiTypingSelectFlags_AllowSingleCharMode = 1 << 1,
}ImGuiTypingSelectFlags_;
struct ImGuiTypingSelectRequest
{
    ImGuiTypingSelectFlags Flags;
    int SearchBufferLen;
    const char* SearchBuffer;
    _Bool SelectRequest;
    _Bool SingleCharMode;
    ImS8 SingleCharSize;
};
struct ImGuiTypingSelectState
{
    ImGuiTypingSelectRequest Request;
    char SearchBuffer[64];
    ImGuiID FocusScope;
    int LastRequestFrame;
    float LastRequestTime;
    _Bool SingleCharModeLock;
};
typedef enum {
    ImGuiOldColumnFlags_None = 0,
    ImGuiOldColumnFlags_NoBorder = 1 << 0,
    ImGuiOldColumnFlags_NoResize = 1 << 1,
    ImGuiOldColumnFlags_NoPreserveWidths = 1 << 2,
    ImGuiOldColumnFlags_NoForceWithinWindow = 1 << 3,
    ImGuiOldColumnFlags_GrowParentContentsSize = 1 << 4,
}ImGuiOldColumnFlags_;
struct ImGuiOldColumnData
{
    float OffsetNorm;
    float OffsetNormBeforeResize;
    ImGuiOldColumnFlags Flags;
    ImRect_c ClipRect;
};
typedef struct ImVector_ImGuiOldColumnData {int Size;int Capacity;ImGuiOldColumnData* Data;} ImVector_ImGuiOldColumnData;
struct ImGuiOldColumns
{
    ImGuiID ID;
    ImGuiOldColumnFlags Flags;
    _Bool IsFirstFrame;
    _Bool IsBeingResized;
    int Current;
    int Count;
    float OffMinX, OffMaxX;
    float LineMinY, LineMaxY;
    float HostCursorPosY;
    float HostCursorMaxPosX;
    ImRect_c HostInitialClipRect;
    ImRect_c HostBackupClipRect;
    ImRect_c HostBackupParentWorkRect;
    ImVector_ImGuiOldColumnData Columns;
    ImDrawListSplitter Splitter;
};
struct ImGuiBoxSelectState
{
    ImGuiID ID;
    _Bool IsActive;
    _Bool IsStarting;
    _Bool IsStartedFromVoid;
    _Bool IsStartedSetNavIdOnce;
    _Bool RequestClear;
    ImGuiKeyChord KeyMods : 16;
    ImVec2_c StartPosRel;
    ImVec2_c EndPosRel;
    ImVec2_c ScrollAccum;
    ImGuiWindow* Window;
    _Bool UnclipMode;
    ImRect_c UnclipRect;
    ImRect_c UnclipRects[2];
    ImRect_c BoxSelectRectPrev;
    ImRect_c BoxSelectRectCurr;
};
struct ImGuiMultiSelectTempData
{
    ImGuiMultiSelectIO IO;
    ImGuiMultiSelectState* Storage;
    ImGuiID FocusScopeId;
    ImGuiMultiSelectFlags Flags;
    ImVec2_c ScopeRectMin;
    ImVec2_c BackupCursorMaxPos;
    ImGuiID BoxSelectId;
    ImGuiKeyChord KeyMods;
    ImS8 LoopRequestSetAll;
    _Bool IsEndIO;
    _Bool IsFocused;
    _Bool IsKeyboardSetRange;
    _Bool NavIdPassedBy;
    _Bool RangeSrcPassedBy;
    _Bool RangeDstPassedBy;
};
struct ImGuiMultiSelectState
{
    ImGuiWindow* Window;
    ImGuiID ID;
    int LastFrameActive;
    int LastSelectionSize;
    ImS8 RangeSelected;
    ImS8 NavIdSelected;
    ImGuiSelectionUserData RangeSrcItem;
    ImGuiSelectionUserData NavIdItem;
};
typedef struct ImGuiViewportP ImGuiViewportP;
struct ImGuiViewportP
{
    ImGuiViewport _ImGuiViewport;
    float BgFgDrawListsLastTimeActive[2];
    ImDrawList* BgFgDrawLists[2];
    ImDrawData DrawDataP;
    ImDrawDataBuilder DrawDataBuilder;
    ImVec2_c WorkInsetMin;
    ImVec2_c WorkInsetMax;
    ImVec2_c BuildWorkInsetMin;
    ImVec2_c BuildWorkInsetMax;
};
struct ImGuiWindowSettings
{
    ImGuiID ID;
    ImVec2ih Pos;
    ImVec2ih Size;
    _Bool Collapsed;
    _Bool IsChild;
    _Bool WantApply;
    _Bool WantDelete;
};
struct ImGuiSettingsHandler
{
    const char* TypeName;
    ImGuiID TypeHash;
    void (*ClearAllFn)(ImGuiContext* ctx, ImGuiSettingsHandler* handler);
    void (*ReadInitFn)(ImGuiContext* ctx, ImGuiSettingsHandler* handler);
    void* (*ReadOpenFn)(ImGuiContext* ctx, ImGuiSettingsHandler* handler, const char* name);
    void (*ReadLineFn)(ImGuiContext* ctx, ImGuiSettingsHandler* handler, void* entry, const char* line);
    void (*ApplyAllFn)(ImGuiContext* ctx, ImGuiSettingsHandler* handler);
    void (*WriteAllFn)(ImGuiContext* ctx, ImGuiSettingsHandler* handler, ImGuiTextBuffer* out_buf);
    void* UserData;
};
typedef enum {
ImGuiLocKey_VersionStr=0,
ImGuiLocKey_TableSizeOne=1,
ImGuiLocKey_TableSizeAllFit=2,
ImGuiLocKey_TableSizeAllDefault=3,
ImGuiLocKey_TableResetOrder=4,
ImGuiLocKey_WindowingMainMenuBar=5,
ImGuiLocKey_WindowingPopup=6,
ImGuiLocKey_WindowingUntitled=7,
ImGuiLocKey_OpenLink_s=8,
ImGuiLocKey_CopyLink=9,
ImGuiLocKey_COUNT=10,
}ImGuiLocKey;
struct ImGuiLocEntry
{
    ImGuiLocKey Key;
    const char* Text;
};
typedef void (*ImGuiErrorCallback)(ImGuiContext* ctx, void* user_data, const char* msg);
typedef enum {
    ImGuiDebugLogFlags_None = 0,
    ImGuiDebugLogFlags_EventError = 1 << 0,
    ImGuiDebugLogFlags_EventActiveId = 1 << 1,
    ImGuiDebugLogFlags_EventFocus = 1 << 2,
    ImGuiDebugLogFlags_EventPopup = 1 << 3,
    ImGuiDebugLogFlags_EventNav = 1 << 4,
    ImGuiDebugLogFlags_EventClipper = 1 << 5,
    ImGuiDebugLogFlags_EventSelection = 1 << 6,
    ImGuiDebugLogFlags_EventIO = 1 << 7,
    ImGuiDebugLogFlags_EventFont = 1 << 8,
    ImGuiDebugLogFlags_EventInputRouting = 1 << 9,
    ImGuiDebugLogFlags_EventDocking = 1 << 10,
    ImGuiDebugLogFlags_EventViewport = 1 << 11,
    ImGuiDebugLogFlags_EventMask_ = ImGuiDebugLogFlags_EventError | ImGuiDebugLogFlags_EventActiveId | ImGuiDebugLogFlags_EventFocus | ImGuiDebugLogFlags_EventPopup | ImGuiDebugLogFlags_EventNav | ImGuiDebugLogFlags_EventClipper | ImGuiDebugLogFlags_EventSelection | ImGuiDebugLogFlags_EventIO | ImGuiDebugLogFlags_EventFont | ImGuiDebugLogFlags_EventInputRouting | ImGuiDebugLogFlags_EventDocking | ImGuiDebugLogFlags_EventViewport,
    ImGuiDebugLogFlags_OutputToTTY = 1 << 20,
    ImGuiDebugLogFlags_OutputToDebugger = 1 << 21,
    ImGuiDebugLogFlags_OutputToTestEngine = 1 << 22,
}ImGuiDebugLogFlags_;
typedef struct ImGuiDebugAllocEntry ImGuiDebugAllocEntry;
struct ImGuiDebugAllocEntry
{
    int FrameCount;
    ImS16 AllocCount;
    ImS16 FreeCount;
};
typedef struct ImGuiDebugAllocInfo ImGuiDebugAllocInfo;
struct ImGuiDebugAllocInfo
{
    int TotalAllocCount;
    int TotalFreeCount;
    ImS16 LastEntriesIdx;
    ImGuiDebugAllocEntry LastEntriesBuf[6];
};
struct ImGuiMetricsConfig
{
    _Bool ShowDebugLog;
    _Bool ShowIDStackTool;
    _Bool ShowWindowsRects;
    _Bool ShowWindowsBeginOrder;
    _Bool ShowTablesRects;
    _Bool ShowDrawCmdMesh;
    _Bool ShowDrawCmdBoundingBoxes;
    _Bool ShowTextEncodingViewer;
    _Bool ShowTextureUsedRect;
    int ShowWindowsRectsType;
    int ShowTablesRectsType;
    int HighlightMonitorIdx;
    ImGuiID HighlightViewportID;
    _Bool ShowFontPreview;
};
typedef struct ImGuiStackLevelInfo ImGuiStackLevelInfo;
struct ImGuiStackLevelInfo
{
    ImGuiID ID;
    ImS8 QueryFrameCount;
    _Bool QuerySuccess;
    ImS8 DataType;
    int DescOffset;
};
typedef struct ImGuiDebugItemPathQuery ImGuiDebugItemPathQuery;
typedef struct ImVector_ImGuiStackLevelInfo {int Size;int Capacity;ImGuiStackLevelInfo* Data;} ImVector_ImGuiStackLevelInfo;
struct ImGuiDebugItemPathQuery
{
    ImGuiID MainID;
    _Bool Active;
    _Bool Complete;
    ImS8 Step;
    ImVector_ImGuiStackLevelInfo Results;
    ImGuiTextBuffer ResultsDescBuf;
    ImGuiTextBuffer ResultPathBuf;
};
typedef struct ImGuiIDStackTool ImGuiIDStackTool;
struct ImGuiIDStackTool
{
    _Bool OptHexEncodeNonAsciiChars;
    _Bool OptCopyToClipboardOnCtrlC;
    int LastActiveFrame;
    float CopyToClipboardLastTime;
};
typedef void (*ImGuiContextHookCallback)(ImGuiContext* ctx, ImGuiContextHook* hook);
typedef enum { ImGuiContextHookType_NewFramePre, ImGuiContextHookType_NewFramePost, ImGuiContextHookType_EndFramePre, ImGuiContextHookType_EndFramePost, ImGuiContextHookType_RenderPre, ImGuiContextHookType_RenderPost, ImGuiContextHookType_Shutdown, ImGuiContextHookType_PendingRemoval_ }ImGuiContextHookType;
struct ImGuiContextHook
{
    ImGuiID HookId;
    ImGuiContextHookType Type;
    ImGuiID Owner;
    ImGuiContextHookCallback Callback;
    void* UserData;
};
typedef void (*ImGuiDemoMarkerCallback)(const char* file, int line, const char* section);
typedef struct ImVector_ImFontAtlasPtr {int Size;int Capacity;ImFontAtlas** Data;} ImVector_ImFontAtlasPtr;
typedef struct ImVector_ImGuiInputEvent {int Size;int Capacity;ImGuiInputEvent* Data;} ImVector_ImGuiInputEvent;
typedef struct ImVector_ImGuiWindowPtr {int Size;int Capacity;ImGuiWindow** Data;} ImVector_ImGuiWindowPtr;
typedef struct ImVector_ImGuiWindowStackData {int Size;int Capacity;ImGuiWindowStackData* Data;} ImVector_ImGuiWindowStackData;
typedef struct ImVector_ImGuiColorMod {int Size;int Capacity;ImGuiColorMod* Data;} ImVector_ImGuiColorMod;
typedef struct ImVector_ImGuiStyleMod {int Size;int Capacity;ImGuiStyleMod* Data;} ImVector_ImGuiStyleMod;
typedef struct ImVector_ImFontStackData {int Size;int Capacity;ImFontStackData* Data;} ImVector_ImFontStackData;
typedef struct ImVector_ImGuiFocusScopeData {int Size;int Capacity;ImGuiFocusScopeData* Data;} ImVector_ImGuiFocusScopeData;
typedef struct ImVector_ImGuiItemFlags {int Size;int Capacity;ImGuiItemFlags* Data;} ImVector_ImGuiItemFlags;
typedef struct ImVector_ImGuiGroupData {int Size;int Capacity;ImGuiGroupData* Data;} ImVector_ImGuiGroupData;
typedef struct ImVector_ImGuiPopupData {int Size;int Capacity;ImGuiPopupData* Data;} ImVector_ImGuiPopupData;
typedef struct ImVector_ImGuiTreeNodeStackData {int Size;int Capacity;ImGuiTreeNodeStackData* Data;} ImVector_ImGuiTreeNodeStackData;
typedef struct ImVector_ImGuiViewportPPtr {int Size;int Capacity;ImGuiViewportP** Data;} ImVector_ImGuiViewportPPtr;
typedef struct ImVector_unsigned_char {int Size;int Capacity;unsigned char* Data;} ImVector_unsigned_char;
typedef struct ImVector_ImGuiListClipperData {int Size;int Capacity;ImGuiListClipperData* Data;} ImVector_ImGuiListClipperData;
typedef struct ImVector_ImGuiTableTempData {int Size;int Capacity;ImGuiTableTempData* Data;} ImVector_ImGuiTableTempData;
typedef struct ImVector_ImGuiTable {int Size;int Capacity;ImGuiTable* Data;} ImVector_ImGuiTable;
typedef struct ImPool_ImGuiTable {ImVector_ImGuiTable Buf;ImGuiStorage Map;ImPoolIdx FreeIdx;ImPoolIdx AliveCount;} ImPool_ImGuiTable;
typedef struct ImVector_ImGuiTabBar {int Size;int Capacity;ImGuiTabBar* Data;} ImVector_ImGuiTabBar;
typedef struct ImPool_ImGuiTabBar {ImVector_ImGuiTabBar Buf;ImGuiStorage Map;ImPoolIdx FreeIdx;ImPoolIdx AliveCount;} ImPool_ImGuiTabBar;
typedef struct ImVector_ImGuiPtrOrIndex {int Size;int Capacity;ImGuiPtrOrIndex* Data;} ImVector_ImGuiPtrOrIndex;
typedef struct ImVector_ImGuiShrinkWidthItem {int Size;int Capacity;ImGuiShrinkWidthItem* Data;} ImVector_ImGuiShrinkWidthItem;
typedef struct ImVector_ImGuiMultiSelectTempData {int Size;int Capacity;ImGuiMultiSelectTempData* Data;} ImVector_ImGuiMultiSelectTempData;
typedef struct ImVector_ImGuiMultiSelectState {int Size;int Capacity;ImGuiMultiSelectState* Data;} ImVector_ImGuiMultiSelectState;
typedef struct ImPool_ImGuiMultiSelectState {ImVector_ImGuiMultiSelectState Buf;ImGuiStorage Map;ImPoolIdx FreeIdx;ImPoolIdx AliveCount;} ImPool_ImGuiMultiSelectState;
typedef struct ImVector_ImGuiID {int Size;int Capacity;ImGuiID* Data;} ImVector_ImGuiID;
typedef struct ImVector_ImGuiSettingsHandler {int Size;int Capacity;ImGuiSettingsHandler* Data;} ImVector_ImGuiSettingsHandler;
typedef struct ImChunkStream_ImGuiWindowSettings {ImVector_char Buf;} ImChunkStream_ImGuiWindowSettings;
typedef struct ImChunkStream_ImGuiTableSettings {ImVector_char Buf;} ImChunkStream_ImGuiTableSettings;
typedef struct ImVector_ImGuiContextHook {int Size;int Capacity;ImGuiContextHook* Data;} ImVector_ImGuiContextHook;
struct ImGuiContext
{
    _Bool Initialized;
    _Bool WithinFrameScope;
    _Bool WithinFrameScopeWithImplicitWindow;
    _Bool TestEngineHookItems;
    int FrameCount;
    int FrameCountEnded;
    int FrameCountRendered;
    double Time;
    char ContextName[16];
    ImGuiIO IO;
    ImGuiPlatformIO PlatformIO;
    ImGuiStyle Style;
    ImVector_ImFontAtlasPtr FontAtlases;
    ImFont* Font;
    ImFontBaked* FontBaked;
    float FontSize;
    float FontSizeBase;
    float FontBakedScale;
    float FontRasterizerDensity;
    float CurrentDpiScale;
    ImDrawListSharedData DrawListSharedData;
    ImGuiID WithinEndChildID;
    ImGuiID WithinEndPopupID;
    void* TestEngine;
    ImVector_ImGuiInputEvent InputEventsQueue;
    ImVector_ImGuiInputEvent InputEventsTrail;
    ImGuiMouseSource InputEventsNextMouseSource;
    ImU32 InputEventsNextEventId;
    ImVector_ImGuiWindowPtr Windows;
    ImVector_ImGuiWindowPtr WindowsFocusOrder;
    ImVector_ImGuiWindowPtr WindowsTempSortBuffer;
    ImVector_ImGuiWindowStackData CurrentWindowStack;
    ImGuiStorage WindowsById;
    int WindowsActiveCount;
    float WindowsBorderHoverPadding;
    ImGuiID DebugBreakInWindow;
    ImGuiWindow* CurrentWindow;
    ImGuiWindow* HoveredWindow;
    ImGuiWindow* HoveredWindowUnderMovingWindow;
    ImGuiWindow* HoveredWindowBeforeClear;
    ImGuiWindow* MovingWindow;
    ImGuiWindow* WheelingWindow;
    ImVec2_c WheelingWindowRefMousePos;
    int WheelingWindowStartFrame;
    int WheelingWindowScrolledFrame;
    float WheelingWindowReleaseTimer;
    ImVec2_c WheelingWindowWheelRemainder;
    ImVec2_c WheelingAxisAvg;
    ImGuiID DebugDrawIdConflictsId;
    ImGuiID DebugHookIdInfoId;
    ImGuiID HoveredId;
    ImGuiID HoveredIdPreviousFrame;
    int HoveredIdPreviousFrameItemCount;
    float HoveredIdTimer;
    float HoveredIdNotActiveTimer;
    _Bool HoveredIdAllowOverlap;
    _Bool HoveredIdIsDisabled;
    _Bool ItemUnclipByLog;
    ImGuiID ActiveId;
    ImGuiID ActiveIdIsAlive;
    float ActiveIdTimer;
    _Bool ActiveIdIsJustActivated;
    _Bool ActiveIdAllowOverlap;
    _Bool ActiveIdNoClearOnFocusLoss;
    _Bool ActiveIdHasBeenPressedBefore;
    _Bool ActiveIdHasBeenEditedBefore;
    _Bool ActiveIdHasBeenEditedThisFrame;
    _Bool ActiveIdFromShortcut;
    ImS8 ActiveIdMouseButton;
    ImGuiID ActiveIdDisabledId;
    ImVec2_c ActiveIdClickOffset;
    ImGuiInputSource ActiveIdSource;
    ImGuiWindow* ActiveIdWindow;
    ImGuiID ActiveIdPreviousFrame;
    ImGuiDeactivatedItemData DeactivatedItemData;
    ImGuiDataTypeStorage ActiveIdValueOnActivation;
    ImGuiID LastActiveId;
    float LastActiveIdTimer;
    double LastKeyModsChangeTime;
    double LastKeyModsChangeFromNoneTime;
    double LastKeyboardKeyPressTime;
    ImBitArrayForNamedKeys KeysMayBeCharInput;
    ImGuiKeyOwnerData KeysOwnerData[ImGuiKey_NamedKey_COUNT];
    ImGuiKeyRoutingTable KeysRoutingTable;
    ImU32 ActiveIdUsingNavDirMask;
    _Bool ActiveIdUsingAllKeyboardKeys;
    ImGuiKeyChord DebugBreakInShortcutRouting;
    ImGuiID CurrentFocusScopeId;
    ImGuiItemFlags CurrentItemFlags;
    ImGuiID DebugLocateId;
    ImGuiNextItemData NextItemData;
    ImGuiLastItemData LastItemData;
    ImGuiNextWindowData NextWindowData;
    _Bool DebugShowGroupRects;
    _Bool GcCompactAll;
    ImGuiCol DebugFlashStyleColorIdx;
    ImVector_ImGuiColorMod ColorStack;
    ImVector_ImGuiStyleMod StyleVarStack;
    ImVector_ImFontStackData FontStack;
    ImVector_ImGuiFocusScopeData FocusScopeStack;
    ImVector_ImGuiItemFlags ItemFlagsStack;
    ImVector_ImGuiGroupData GroupStack;
    ImVector_ImGuiPopupData OpenPopupStack;
    ImVector_ImGuiPopupData BeginPopupStack;
    ImVector_ImGuiTreeNodeStackData TreeNodeStack;
    ImVector_ImGuiViewportPPtr Viewports;
    _Bool NavCursorVisible;
    _Bool NavHighlightItemUnderNav;
    _Bool NavMousePosDirty;
    _Bool NavIdIsAlive;
    ImGuiID NavId;
    ImGuiWindow* NavWindow;
    ImGuiID NavFocusScopeId;
    ImGuiNavLayer NavLayer;
    ImGuiItemFlags NavIdItemFlags;
    ImGuiID NavActivateId;
    ImGuiID NavActivateDownId;
    ImGuiID NavActivatePressedId;
    ImGuiActivateFlags NavActivateFlags;
    ImVector_ImGuiFocusScopeData NavFocusRoute;
    ImGuiID NavHighlightActivatedId;
    float NavHighlightActivatedTimer;
    ImGuiID NavOpenContextMenuItemId;
    ImGuiID NavOpenContextMenuWindowId;
    ImGuiID NavNextActivateId;
    ImGuiActivateFlags NavNextActivateFlags;
    ImGuiInputSource NavInputSource;
    ImGuiSelectionUserData NavLastValidSelectionUserData;
    ImS8 NavCursorHideFrames;
    _Bool NavAnyRequest;
    _Bool NavInitRequest;
    _Bool NavInitRequestFromMove;
    ImGuiNavItemData NavInitResult;
    _Bool NavMoveSubmitted;
    _Bool NavMoveScoringItems;
    _Bool NavMoveForwardToNextFrame;
    ImGuiNavMoveFlags NavMoveFlags;
    ImGuiScrollFlags NavMoveScrollFlags;
    ImGuiKeyChord NavMoveKeyMods;
    ImGuiDir NavMoveDir;
    ImGuiDir NavMoveDirForDebug;
    ImGuiDir NavMoveClipDir;
    ImRect_c NavScoringRect;
    ImRect_c NavScoringNoClipRect;
    int NavScoringDebugCount;
    int NavTabbingDir;
    int NavTabbingCounter;
    ImGuiNavItemData NavMoveResultLocal;
    ImGuiNavItemData NavMoveResultLocalVisible;
    ImGuiNavItemData NavMoveResultOther;
    ImGuiNavItemData NavTabbingResultFirst;
    ImGuiID NavJustMovedFromFocusScopeId;
    ImGuiID NavJustMovedToId;
    ImGuiID NavJustMovedToFocusScopeId;
    ImGuiKeyChord NavJustMovedToKeyMods;
    _Bool NavJustMovedToIsTabbing;
    _Bool NavJustMovedToHasSelectionData;
    _Bool ConfigNavEnableTabbing;
    _Bool ConfigNavWindowingWithGamepad;
    ImGuiKeyChord ConfigNavWindowingKeyNext;
    ImGuiKeyChord ConfigNavWindowingKeyPrev;
    ImGuiWindow* NavWindowingTarget;
    ImGuiWindow* NavWindowingTargetAnim;
    ImGuiWindow* NavWindowingListWindow;
    float NavWindowingTimer;
    float NavWindowingHighlightAlpha;
    ImGuiInputSource NavWindowingInputSource;
    _Bool NavWindowingToggleLayer;
    ImGuiKey NavWindowingToggleKey;
    ImVec2_c NavWindowingAccumDeltaPos;
    ImVec2_c NavWindowingAccumDeltaSize;
    float DimBgRatio;
    _Bool DragDropActive;
    _Bool DragDropWithinSource;
    _Bool DragDropWithinTarget;
    ImGuiDragDropFlags DragDropSourceFlags;
    int DragDropSourceFrameCount;
    int DragDropMouseButton;
    ImGuiPayload DragDropPayload;
    ImRect_c DragDropTargetRect;
    ImRect_c DragDropTargetClipRect;
    ImGuiID DragDropTargetId;
    ImGuiID DragDropTargetFullViewport;
    ImGuiDragDropFlags DragDropAcceptFlagsCurr;
    ImGuiDragDropFlags DragDropAcceptFlagsPrev;
    float DragDropAcceptIdCurrRectSurface;
    ImGuiID DragDropAcceptIdCurr;
    ImGuiID DragDropAcceptIdPrev;
    int DragDropAcceptFrameCount;
    ImGuiID DragDropHoldJustPressedId;
    ImVector_unsigned_char DragDropPayloadBufHeap;
    unsigned char DragDropPayloadBufLocal[16];
    int ClipperTempDataStacked;
    ImVector_ImGuiListClipperData ClipperTempData;
    ImGuiTable* CurrentTable;
    ImGuiID DebugBreakInTable;
    int TablesTempDataStacked;
    ImVector_ImGuiTableTempData TablesTempData;
    ImPool_ImGuiTable Tables;
    ImVector_float TablesLastTimeActive;
    ImVector_ImDrawChannel DrawChannelsTempMergeBuffer;
    ImGuiTabBar* CurrentTabBar;
    ImPool_ImGuiTabBar TabBars;
    ImVector_ImGuiPtrOrIndex CurrentTabBarStack;
    ImVector_ImGuiShrinkWidthItem ShrinkWidthBuffer;
    ImGuiBoxSelectState BoxSelectState;
    ImGuiMultiSelectTempData* CurrentMultiSelect;
    int MultiSelectTempDataStacked;
    ImVector_ImGuiMultiSelectTempData MultiSelectTempData;
    ImPool_ImGuiMultiSelectState MultiSelectStorage;
    ImGuiID HoverItemDelayId;
    ImGuiID HoverItemDelayIdPreviousFrame;
    float HoverItemDelayTimer;
    float HoverItemDelayClearTimer;
    ImGuiID HoverItemUnlockedStationaryId;
    ImGuiID HoverWindowUnlockedStationaryId;
    ImGuiMouseCursor MouseCursor;
    float MouseStationaryTimer;
    ImVec2_c MouseLastValidPos;
    ImGuiInputTextState InputTextState;
    ImGuiTextIndex InputTextLineIndex;
    ImGuiInputTextDeactivatedState InputTextDeactivatedState;
    ImFontBaked InputTextPasswordFontBackupBaked;
    ImFontFlags InputTextPasswordFontBackupFlags;
    ImGuiID InputTextReactivateId;
    ImGuiID TempInputId;
    ImGuiDataTypeStorage DataTypeZeroValue;
    int BeginMenuDepth;
    int BeginComboDepth;
    ImGuiColorEditFlags ColorEditOptions;
    ImGuiID ColorEditCurrentID;
    ImGuiID ColorEditSavedID;
    float ColorEditSavedHue;
    float ColorEditSavedSat;
    ImU32 ColorEditSavedColor;
    ImVec4_c ColorPickerRef;
    ImGuiComboPreviewData ComboPreviewData;
    ImRect_c WindowResizeBorderExpectedRect;
    _Bool WindowResizeRelativeMode;
    short ScrollbarSeekMode;
    float ScrollbarClickDeltaToGrabCenter;
    float SliderGrabClickOffset;
    float SliderCurrentAccum;
    _Bool SliderCurrentAccumDirty;
    _Bool DragCurrentAccumDirty;
    float DragCurrentAccum;
    float DragSpeedDefaultRatio;
    float DisabledAlphaBackup;
    short DisabledStackSize;
    short TooltipOverrideCount;
    ImGuiWindow* TooltipPreviousWindow;
    ImVector_char ClipboardHandlerData;
    ImVector_ImGuiID MenusIdSubmittedThisFrame;
    ImGuiTypingSelectState TypingSelectState;
    ImGuiPlatformImeData PlatformImeData;
    ImGuiPlatformImeData PlatformImeDataPrev;
    ImVector_ImTextureDataPtr UserTextures;
    _Bool SettingsLoaded;
    float SettingsDirtyTimer;
    ImGuiTextBuffer SettingsIniData;
    ImVector_ImGuiSettingsHandler SettingsHandlers;
    ImChunkStream_ImGuiWindowSettings SettingsWindows;
    ImChunkStream_ImGuiTableSettings SettingsTables;
    ImVector_ImGuiContextHook Hooks;
    ImGuiID HookIdNext;
    ImGuiDemoMarkerCallback DemoMarkerCallback;
    const char* LocalizationTable[ImGuiLocKey_COUNT];
    _Bool LogEnabled;
    _Bool LogLineFirstItem;
    ImGuiLogFlags LogFlags;
    ImGuiWindow* LogWindow;
    ImFileHandle LogFile;
    ImGuiTextBuffer LogBuffer;
    const char* LogNextPrefix;
    const char* LogNextSuffix;
    float LogLinePosY;
    int LogDepthRef;
    int LogDepthToExpand;
    int LogDepthToExpandDefault;
    ImGuiErrorCallback ErrorCallback;
    void* ErrorCallbackUserData;
    ImVec2_c ErrorTooltipLockedPos;
    _Bool ErrorFirst;
    int ErrorCountCurrentFrame;
    ImGuiErrorRecoveryState StackSizesInNewFrame;
    ImGuiErrorRecoveryState*StackSizesInBeginForCurrentWindow;
    int DebugDrawIdConflictsCount;
    ImGuiDebugLogFlags DebugLogFlags;
    ImGuiTextBuffer DebugLogBuf;
    ImGuiTextIndex DebugLogIndex;
    int DebugLogSkippedErrors;
    ImGuiDebugLogFlags DebugLogAutoDisableFlags;
    ImU8 DebugLogAutoDisableFrames;
    ImU8 DebugLocateFrames;
    _Bool DebugBreakInLocateId;
    ImGuiKeyChord DebugBreakKeyChord;
    ImS8 DebugBeginReturnValueCullDepth;
    _Bool DebugItemPickerActive;
    ImU8 DebugItemPickerMouseButton;
    ImGuiID DebugItemPickerBreakId;
    float DebugFlashStyleColorTime;
    ImVec4_c DebugFlashStyleColorBackup;
    ImGuiMetricsConfig DebugMetricsConfig;
    ImGuiDebugItemPathQuery DebugItemPathQuery;
    ImGuiIDStackTool DebugIDStackTool;
    ImGuiDebugAllocInfo DebugAllocInfo;
    float FramerateSecPerFrame[60];
    int FramerateSecPerFrameIdx;
    int FramerateSecPerFrameCount;
    float FramerateSecPerFrameAccum;
    int WantCaptureMouseNextFrame;
    int WantCaptureKeyboardNextFrame;
    int WantTextInputNextFrame;
    ImVector_char TempBuffer;
    char TempKeychordName[64];
};
struct ImGuiWindowTempData
{
    ImVec2_c CursorPos;
    ImVec2_c CursorPosPrevLine;
    ImVec2_c CursorStartPos;
    ImVec2_c CursorMaxPos;
    ImVec2_c IdealMaxPos;
    ImVec2_c CurrLineSize;
    ImVec2_c PrevLineSize;
    float CurrLineTextBaseOffset;
    float PrevLineTextBaseOffset;
    _Bool IsSameLine;
    _Bool IsSetPos;
    ImVec1 Indent;
    ImVec1 ColumnsOffset;
    ImVec1 GroupOffset;
    ImVec2_c CursorStartPosLossyness;
    ImGuiNavLayer NavLayerCurrent;
    short NavLayersActiveMask;
    short NavLayersActiveMaskNext;
    _Bool NavIsScrollPushableX;
    _Bool NavHideHighlightOneFrame;
    _Bool NavWindowHasScrollY;
    _Bool MenuBarAppending;
    ImVec2_c MenuBarOffset;
    ImGuiMenuColumns MenuColumns;
    int TreeDepth;
    ImU32 TreeHasStackDataDepthMask;
    ImU32 TreeRecordsClippedNodesY2Mask;
    ImVector_ImGuiWindowPtr ChildWindows;
    ImGuiStorage* StateStorage;
    ImGuiOldColumns* CurrentColumns;
    int CurrentTableIdx;
    ImGuiLayoutType LayoutType;
    ImGuiLayoutType ParentLayoutType;
    ImU32 ModalDimBgColor;
    ImGuiItemStatusFlags WindowItemStatusFlags;
    ImGuiItemStatusFlags ChildItemStatusFlags;
    float ItemWidth;
    float ItemWidthDefault;
    float TextWrapPos;
    ImVector_float ItemWidthStack;
    ImVector_float TextWrapPosStack;
};
typedef struct ImVector_ImGuiOldColumns {int Size;int Capacity;ImGuiOldColumns* Data;} ImVector_ImGuiOldColumns;
struct ImGuiWindow
{
    ImGuiContext* Ctx;
    char* Name;
    ImGuiID ID;
    ImGuiWindowFlags Flags;
    ImGuiChildFlags ChildFlags;
    ImGuiViewportP* Viewport;
    ImVec2_c Pos;
    ImVec2_c Size;
    ImVec2_c SizeFull;
    ImVec2_c ContentSize;
    ImVec2_c ContentSizeIdeal;
    ImVec2_c ContentSizeExplicit;
    ImVec2_c WindowPadding;
    float WindowRounding;
    float WindowBorderSize;
    float TitleBarHeight, MenuBarHeight;
    float DecoOuterSizeX1, DecoOuterSizeY1;
    float DecoOuterSizeX2, DecoOuterSizeY2;
    float DecoInnerSizeX1, DecoInnerSizeY1;
    int NameBufLen;
    ImGuiID MoveId;
    ImGuiID ChildId;
    ImGuiID PopupId;
    ImVec2_c Scroll;
    ImVec2_c ScrollMax;
    ImVec2_c ScrollTarget;
    ImVec2_c ScrollTargetCenterRatio;
    ImVec2_c ScrollTargetEdgeSnapDist;
    ImVec2_c ScrollbarSizes;
    _Bool ScrollbarX, ScrollbarY;
    _Bool ScrollbarXStabilizeEnabled;
    ImU8 ScrollbarXStabilizeToggledHistory;
    _Bool Active;
    _Bool WasActive;
    _Bool WriteAccessed;
    _Bool Collapsed;
    _Bool WantCollapseToggle;
    _Bool SkipItems;
    _Bool SkipRefresh;
    _Bool Appearing;
    _Bool Hidden;
    _Bool IsFallbackWindow;
    _Bool IsExplicitChild;
    _Bool HasCloseButton;
    signed char ResizeBorderHovered;
    signed char ResizeBorderHeld;
    short BeginCount;
    short BeginCountPreviousFrame;
    short BeginOrderWithinParent;
    short BeginOrderWithinContext;
    short FocusOrder;
    ImGuiDir AutoPosLastDirection;
    ImS8 AutoFitFramesX, AutoFitFramesY;
    _Bool AutoFitOnlyGrows;
    ImS8 HiddenFramesCanSkipItems;
    ImS8 HiddenFramesCannotSkipItems;
    ImS8 HiddenFramesForRenderOnly;
    ImS8 DisableInputsFrames;
    ImGuiWindowBgClickFlags BgClickFlags : 8;
    ImGuiCond SetWindowPosAllowFlags : 8;
    ImGuiCond SetWindowSizeAllowFlags : 8;
    ImGuiCond SetWindowCollapsedAllowFlags : 8;
    ImVec2_c SetWindowPosVal;
    ImVec2_c SetWindowPosPivot;
    ImVector_ImGuiID IDStack;
    ImGuiWindowTempData DC;
    ImRect_c OuterRectClipped;
    ImRect_c InnerRect;
    ImRect_c InnerClipRect;
    ImRect_c WorkRect;
    ImRect_c ParentWorkRect;
    ImRect_c ClipRect;
    ImRect_c ContentRegionRect;
    ImVec2ih HitTestHoleSize;
    ImVec2ih HitTestHoleOffset;
    int LastFrameActive;
    float LastTimeActive;
    ImGuiStorage StateStorage;
    ImVector_ImGuiOldColumns ColumnsStorage;
    float FontWindowScale;
    float FontWindowScaleParents;
    float FontRefSize;
    int SettingsOffset;
    ImDrawList* DrawList;
    ImDrawList DrawListInst;
    ImGuiWindow* ParentWindow;
    ImGuiWindow* ParentWindowInBeginStack;
    ImGuiWindow* RootWindow;
    ImGuiWindow* RootWindowPopupTree;
    ImGuiWindow* RootWindowForTitleBarHighlight;
    ImGuiWindow* RootWindowForNav;
    ImGuiWindow* ParentWindowForFocusRoute;
    ImGuiWindow* NavLastChildNavWindow;
    ImGuiID NavLastIds[ImGuiNavLayer_COUNT];
    ImRect_c NavRectRel[ImGuiNavLayer_COUNT];
    ImVec2_c NavPreferredScoringPosRel[ImGuiNavLayer_COUNT];
    ImGuiID NavRootFocusScopeId;
    int MemoryDrawListIdxCapacity;
    int MemoryDrawListVtxCapacity;
    _Bool MemoryCompacted;
};
typedef enum {
    ImGuiTabBarFlags_DockNode = 1 << 20,
    ImGuiTabBarFlags_IsFocused = 1 << 21,
    ImGuiTabBarFlags_SaveSettings = 1 << 22,
}ImGuiTabBarFlagsPrivate_;
typedef enum {
    ImGuiTabItemFlags_SectionMask_ = ImGuiTabItemFlags_Leading | ImGuiTabItemFlags_Trailing,
    ImGuiTabItemFlags_NoCloseButton = 1 << 20,
    ImGuiTabItemFlags_Button = 1 << 21,
    ImGuiTabItemFlags_Invisible = 1 << 22,
}ImGuiTabItemFlagsPrivate_;
struct ImGuiTabItem
{
    ImGuiID ID;
    ImGuiTabItemFlags Flags;
    int LastFrameVisible;
    int LastFrameSelected;
    float Offset;
    float Width;
    float ContentWidth;
    float RequestedWidth;
    ImS32 NameOffset;
    ImS16 BeginOrder;
    ImS16 IndexDuringLayout;
    _Bool WantClose;
};
typedef struct ImVector_ImGuiTabItem {int Size;int Capacity;ImGuiTabItem* Data;} ImVector_ImGuiTabItem;
struct ImGuiTabBar
{
    ImGuiWindow* Window;
    ImVector_ImGuiTabItem Tabs;
    ImGuiTabBarFlags Flags;
    ImGuiID ID;
    ImGuiID SelectedTabId;
    ImGuiID NextSelectedTabId;
    ImGuiID NextScrollToTabId;
    ImGuiID VisibleTabId;
    int CurrFrameVisible;
    int PrevFrameVisible;
    ImRect_c BarRect;
    float BarRectPrevWidth;
    float CurrTabsContentsHeight;
    float PrevTabsContentsHeight;
    float WidthAllTabs;
    float WidthAllTabsIdeal;
    float ScrollingAnim;
    float ScrollingTarget;
    float ScrollingTargetDistToVisibility;
    float ScrollingSpeed;
    float ScrollingRectMinX;
    float ScrollingRectMaxX;
    float SeparatorMinX;
    float SeparatorMaxX;
    ImGuiID ReorderRequestTabId;
    ImS16 ReorderRequestOffset;
    ImS8 BeginCount;
    _Bool WantLayout;
    _Bool VisibleTabWasSubmitted;
    _Bool TabsAddedNew;
    _Bool ScrollButtonEnabled;
    ImS16 TabsActiveCount;
    ImS16 LastTabItemIdx;
    float ItemSpacingY;
    ImVec2_c FramePadding;
    ImVec2_c BackupCursorPos;
    ImGuiTextBuffer TabsNames;
};
struct ImGuiTableColumn
{
    ImGuiTableColumnFlags Flags;
    float WidthGiven;
    float MinX;
    float MaxX;
    float WidthRequest;
    float WidthAuto;
    float WidthMax;
    float StretchWeight;
    float InitStretchWeightOrWidth;
    ImRect_c ClipRect;
    ImGuiID UserID;
    float WorkMinX;
    float WorkMaxX;
    float ItemWidth;
    float ContentMaxXFrozen;
    float ContentMaxXUnfrozen;
    float ContentMaxXHeadersUsed;
    float ContentMaxXHeadersIdeal;
    ImS16 NameOffset;
    ImGuiTableColumnIdx DisplayOrder;
    ImGuiTableColumnIdx IndexWithinEnabledSet;
    ImGuiTableColumnIdx PrevEnabledColumn;
    ImGuiTableColumnIdx NextEnabledColumn;
    ImGuiTableColumnIdx SortOrder;
    ImGuiTableDrawChannelIdx DrawChannelCurrent;
    ImGuiTableDrawChannelIdx DrawChannelFrozen;
    ImGuiTableDrawChannelIdx DrawChannelUnfrozen;
    _Bool IsEnabled;
    _Bool IsUserEnabled;
    _Bool IsUserEnabledNextFrame;
    _Bool IsVisibleX;
    _Bool IsVisibleY;
    _Bool IsRequestOutput;
    _Bool IsSkipItems;
    _Bool IsPreserveWidthAuto;
    ImS8 NavLayerCurrent;
    ImU8 AutoFitQueue;
    ImU8 CannotSkipItemsQueue;
    ImU8 SortDirection : 2;
    ImU8 SortDirectionsAvailCount : 2;
    ImU8 SortDirectionsAvailMask : 4;
    ImU8 SortDirectionsAvailList;
};
typedef struct ImGuiTableCellData ImGuiTableCellData;
struct ImGuiTableCellData
{
    ImU32 BgColor;
    ImGuiTableColumnIdx Column;
};
struct ImGuiTableHeaderData
{
    ImGuiTableColumnIdx Index;
    ImU32 TextColor;
    ImU32 BgColor0;
    ImU32 BgColor1;
};
struct ImGuiTableInstanceData
{
    ImGuiID TableInstanceID;
    float LastOuterHeight;
    float LastTopHeadersRowHeight;
    float LastFrozenHeight;
    int HoveredRowLast;
    int HoveredRowNext;
};
typedef struct ImSpan_ImGuiTableColumn {ImGuiTableColumn* Data;ImGuiTableColumn* DataEnd;} ImSpan_ImGuiTableColumn;
typedef struct ImSpan_ImGuiTableColumnIdx {ImGuiTableColumnIdx* Data;ImGuiTableColumnIdx* DataEnd;} ImSpan_ImGuiTableColumnIdx;
typedef struct ImSpan_ImGuiTableCellData {ImGuiTableCellData* Data;ImGuiTableCellData* DataEnd;} ImSpan_ImGuiTableCellData;
typedef struct ImVector_ImGuiTableInstanceData {int Size;int Capacity;ImGuiTableInstanceData* Data;} ImVector_ImGuiTableInstanceData;
typedef struct ImVector_ImGuiTableColumnSortSpecs {int Size;int Capacity;ImGuiTableColumnSortSpecs* Data;} ImVector_ImGuiTableColumnSortSpecs;
struct ImGuiTable
{
    ImGuiID ID;
    ImGuiTableFlags Flags;
    void* RawData;
    ImGuiTableTempData* TempData;
    ImSpan_ImGuiTableColumn Columns;
    ImSpan_ImGuiTableColumnIdx DisplayOrderToIndex;
    ImSpan_ImGuiTableCellData RowCellData;
    ImBitArrayPtr EnabledMaskByDisplayOrder;
    ImBitArrayPtr EnabledMaskByIndex;
    ImBitArrayPtr VisibleMaskByIndex;
    ImGuiTableFlags SettingsLoadedFlags;
    int SettingsOffset;
    int LastFrameActive;
    int ColumnsCount;
    int CurrentRow;
    int CurrentColumn;
    ImS16 InstanceCurrent;
    ImS16 InstanceInteracted;
    float RowPosY1;
    float RowPosY2;
    float RowMinHeight;
    float RowCellPaddingY;
    float RowTextBaseline;
    float RowIndentOffsetX;
    ImGuiTableRowFlags RowFlags : 16;
    ImGuiTableRowFlags LastRowFlags : 16;
    int RowBgColorCounter;
    ImU32 RowBgColor[2];
    ImU32 BorderColorStrong;
    ImU32 BorderColorLight;
    float BorderX1;
    float BorderX2;
    float HostIndentX;
    float MinColumnWidth;
    float OuterPaddingX;
    float CellPaddingX;
    float CellSpacingX1;
    float CellSpacingX2;
    float InnerWidth;
    float ColumnsGivenWidth;
    float ColumnsAutoFitWidth;
    float ColumnsStretchSumWeights;
    float ResizedColumnNextWidth;
    float ResizeLockMinContentsX2;
    float RefScale;
    float AngledHeadersHeight;
    float AngledHeadersSlope;
    ImRect_c OuterRect;
    ImRect_c InnerRect;
    ImRect_c WorkRect;
    ImRect_c InnerClipRect;
    ImRect_c BgClipRect;
    ImRect_c Bg0ClipRectForDrawCmd;
    ImRect_c Bg2ClipRectForDrawCmd;
    ImRect_c HostClipRect;
    ImRect_c HostBackupInnerClipRect;
    ImGuiWindow* OuterWindow;
    ImGuiWindow* InnerWindow;
    ImGuiTextBuffer ColumnsNames;
    ImDrawListSplitter* DrawSplitter;
    ImGuiTableInstanceData InstanceDataFirst;
    ImVector_ImGuiTableInstanceData InstanceDataExtra;
    ImGuiTableColumnSortSpecs SortSpecsSingle;
    ImVector_ImGuiTableColumnSortSpecs SortSpecsMulti;
    ImGuiTableSortSpecs SortSpecs;
    ImGuiTableColumnIdx SortSpecsCount;
    ImGuiTableColumnIdx ColumnsEnabledCount;
    ImGuiTableColumnIdx ColumnsEnabledFixedCount;
    ImGuiTableColumnIdx DeclColumnsCount;
    ImGuiTableColumnIdx AngledHeadersCount;
    ImGuiTableColumnIdx HoveredColumnBody;
    ImGuiTableColumnIdx HoveredColumnBorder;
    ImGuiTableColumnIdx HighlightColumnHeader;
    ImGuiTableColumnIdx AutoFitSingleColumn;
    ImGuiTableColumnIdx ResizedColumn;
    ImGuiTableColumnIdx LastResizedColumn;
    ImGuiTableColumnIdx HeldHeaderColumn;
    ImGuiTableColumnIdx LastHeldHeaderColumn;
    ImGuiTableColumnIdx ReorderColumn;
    ImGuiTableColumnIdx ReorderColumnDstOrder;
    ImGuiTableColumnIdx LeftMostEnabledColumn;
    ImGuiTableColumnIdx RightMostEnabledColumn;
    ImGuiTableColumnIdx LeftMostStretchedColumn;
    ImGuiTableColumnIdx RightMostStretchedColumn;
    ImGuiTableColumnIdx ContextPopupColumn;
    ImGuiTableColumnIdx FreezeRowsRequest;
    ImGuiTableColumnIdx FreezeRowsCount;
    ImGuiTableColumnIdx FreezeColumnsRequest;
    ImGuiTableColumnIdx FreezeColumnsCount;
    ImGuiTableColumnIdx RowCellDataCurrent;
    ImGuiTableDrawChannelIdx DummyDrawChannel;
    ImGuiTableDrawChannelIdx Bg2DrawChannelCurrent;
    ImGuiTableDrawChannelIdx Bg2DrawChannelUnfrozen;
    ImS8 NavLayer;
    _Bool IsLayoutLocked;
    _Bool IsInsideRow;
    _Bool IsInitializing;
    _Bool IsSortSpecsDirty;
    _Bool IsUsingHeaders;
    _Bool IsContextPopupOpen;
    _Bool DisableDefaultContextMenu;
    _Bool IsSettingsRequestLoad;
    _Bool IsSettingsDirty;
    _Bool IsDefaultDisplayOrder;
    _Bool IsResetAllRequest;
    _Bool IsResetDisplayOrderRequest;
    _Bool IsUnfrozenRows;
    _Bool IsDefaultSizingPolicy;
    _Bool IsActiveIdAliveBeforeTable;
    _Bool IsActiveIdInTable;
    _Bool HasScrollbarYCurr;
    _Bool HasScrollbarYPrev;
    _Bool MemoryCompacted;
    _Bool HostSkipItems;
};
typedef struct ImVector_ImGuiTableHeaderData {int Size;int Capacity;ImGuiTableHeaderData* Data;} ImVector_ImGuiTableHeaderData;
struct ImGuiTableTempData
{
    ImGuiID WindowID;
    int TableIndex;
    float LastTimeActive;
    float AngledHeadersExtraWidth;
    ImVector_ImGuiTableHeaderData AngledHeadersRequests;
    ImVec2_c UserOuterSize;
    ImDrawListSplitter DrawSplitter;
    ImRect_c HostBackupWorkRect;
    ImRect_c HostBackupParentWorkRect;
    ImVec2_c HostBackupPrevLineSize;
    ImVec2_c HostBackupCurrLineSize;
    ImVec2_c HostBackupCursorMaxPos;
    ImVec1 HostBackupColumnsOffset;
    float HostBackupItemWidth;
    int HostBackupItemWidthStackSize;
};
typedef struct ImGuiTableColumnSettings ImGuiTableColumnSettings;
struct ImGuiTableColumnSettings
{
    float WidthOrWeight;
    ImGuiID UserID;
    ImGuiTableColumnIdx Index;
    ImGuiTableColumnIdx DisplayOrder;
    ImGuiTableColumnIdx SortOrder;
    ImU8 SortDirection : 2;
    ImS8 IsEnabled : 2;
    ImU8 IsStretch : 1;
};
struct ImGuiTableSettings
{
    ImGuiID ID;
    ImGuiTableFlags SaveFlags;
    float RefScale;
    ImGuiTableColumnIdx ColumnsCount;
    ImGuiTableColumnIdx ColumnsCountMax;
    _Bool WantApply;
};
struct ImFontLoader
{
    const char* Name;
    _Bool (*LoaderInit)(ImFontAtlas* atlas);
    void (*LoaderShutdown)(ImFontAtlas* atlas);
    _Bool (*FontSrcInit)(ImFontAtlas* atlas, ImFontConfig* src);
    void (*FontSrcDestroy)(ImFontAtlas* atlas, ImFontConfig* src);
    _Bool (*FontSrcContainsGlyph)(ImFontAtlas* atlas, ImFontConfig* src, ImWchar codepoint);
    _Bool (*FontBakedInit)(ImFontAtlas* atlas, ImFontConfig* src, ImFontBaked* baked, void* loader_data_for_baked_src);
    void (*FontBakedDestroy)(ImFontAtlas* atlas, ImFontConfig* src, ImFontBaked* baked, void* loader_data_for_baked_src);
    _Bool (*FontBakedLoadGlyph)(ImFontAtlas* atlas, ImFontConfig* src, ImFontBaked* baked, void* loader_data_for_baked_src, ImWchar codepoint, ImFontGlyph* out_glyph, float* out_advance_x);
    size_t FontBakedSrcLoaderDataSize;
};
struct ImFontAtlasRectEntry
{
    int TargetIndex : 20;
    unsigned int Generation : 10;
    unsigned int IsUsed : 1;
};
struct ImFontAtlasPostProcessData
{
    ImFontAtlas* FontAtlas;
    ImFont* Font;
    ImFontConfig* FontSrc;
    ImFontBaked* FontBaked;
    ImFontGlyph* Glyph;
    void* Pixels;
    ImTextureFormat Format;
    int Pitch;
    int Width;
    int Height;
};
struct stbrp_node;
typedef stbrp_node stbrp_node_im;
typedef struct stbrp_context_opaque stbrp_context_opaque;
struct stbrp_context_opaque
{ char data[80];
};
typedef struct ImVector_stbrp_node_im {int Size;int Capacity;stbrp_node_im* Data;} ImVector_stbrp_node_im;
typedef struct ImVector_ImFontAtlasRectEntry {int Size;int Capacity;ImFontAtlasRectEntry* Data;} ImVector_ImFontAtlasRectEntry;
typedef struct ImVector_ImFontBakedPtr {int Size;int Capacity;ImFontBaked** Data;} ImVector_ImFontBakedPtr;
typedef struct ImStableVector_ImFontBaked__32 {int Size;int Capacity;ImVector_ImFontBakedPtr Blocks;} ImStableVector_ImFontBaked__32;
struct ImFontAtlasBuilder
{
    stbrp_context_opaque PackContext;
    ImVector_stbrp_node_im PackNodes;
    ImVector_ImTextureRect Rects;
    ImVector_ImFontAtlasRectEntry RectsIndex;
    ImVector_unsigned_char TempBuffer;
    int RectsIndexFreeListStart;
    int RectsPackedCount;
    int RectsPackedSurface;
    int RectsDiscardedCount;
    int RectsDiscardedSurface;
    int FrameCount;
    ImVec2i_c MaxRectSize;
    ImVec2i_c MaxRectBounds;
    _Bool LockDisableResize;
    _Bool PreloadedAllGlyphsRanges;
    ImStableVector_ImFontBaked__32 BakedPool;
    ImGuiStorage BakedMap;
    int BakedDiscardedCount;
    ImFontAtlasRectId PackIdMouseCursors;
    ImFontAtlasRectId PackIdLinesTexData;
};
typedef struct ImTextureRef_c ImTextureRef;
typedef struct ImVec2_c ImVec2;
typedef struct ImVec2i_c ImVec2i;
typedef struct ImVec4_c ImVec4;
typedef struct ImColor_c ImColor;
typedef struct ImRect_c ImRect;
extern  ImVec2* ImVec2_ImVec2_Nil(void);
extern  void ImVec2_destroy(ImVec2* self);
extern  ImVec2* ImVec2_ImVec2_Float(float _x,float _y);
extern  ImVec4* ImVec4_ImVec4_Nil(void);
extern  void ImVec4_destroy(ImVec4* self);
extern  ImVec4* ImVec4_ImVec4_Float(float _x,float _y,float _z,float _w);
extern  ImTextureRef* ImTextureRef_ImTextureRef_Nil(void);
extern  void ImTextureRef_destroy(ImTextureRef* self);
extern  ImTextureRef* ImTextureRef_ImTextureRef_TextureID(ImTextureID tex_id);
extern  ImTextureID ImTextureRef_GetTexID(ImTextureRef* self);
extern  ImGuiContext* igCreateContext(ImFontAtlas* shared_font_atlas);
extern  void igDestroyContext(ImGuiContext* ctx);
extern  ImGuiContext* igGetCurrentContext(void);
extern  void igSetCurrentContext(ImGuiContext* ctx);
extern  ImGuiIO* igGetIO_Nil(void);
extern  ImGuiPlatformIO* igGetPlatformIO_Nil(void);
extern  ImGuiStyle* igGetStyle(void);
extern  void igNewFrame(void);
extern  void igEndFrame(void);
extern  void igRender(void);
extern  ImDrawData* igGetDrawData(void);
extern  void igShowDemoWindow(_Bool* p_open);
extern  void igShowMetricsWindow(_Bool* p_open);
extern  void igShowDebugLogWindow(_Bool* p_open);
extern  void igShowIDStackToolWindow(_Bool* p_open);
extern  void igShowAboutWindow(_Bool* p_open);
extern  void igShowStyleEditor(ImGuiStyle* ref);
extern  _Bool igShowStyleSelector(const char* label);
extern  void igShowFontSelector(const char* label);
extern  void igShowUserGuide(void);
extern  const char* igGetVersion(void);
extern  void igStyleColorsDark(ImGuiStyle* dst);
extern  void igStyleColorsLight(ImGuiStyle* dst);
extern  void igStyleColorsClassic(ImGuiStyle* dst);
extern  _Bool igBegin(const char* name,_Bool* p_open,ImGuiWindowFlags flags);
extern  void igEnd(void);
extern  _Bool igBeginChild_Str(const char* str_id,const ImVec2_c size,ImGuiChildFlags child_flags,ImGuiWindowFlags window_flags);
extern  _Bool igBeginChild_ID(ImGuiID id,const ImVec2_c size,ImGuiChildFlags child_flags,ImGuiWindowFlags window_flags);
extern  void igEndChild(void);
extern  _Bool igIsWindowAppearing(void);
extern  _Bool igIsWindowCollapsed(void);
extern  _Bool igIsWindowFocused(ImGuiFocusedFlags flags);
extern  _Bool igIsWindowHovered(ImGuiHoveredFlags flags);
extern  ImDrawList* igGetWindowDrawList(void);
extern  ImVec2_c igGetWindowPos(void);
extern  ImVec2_c igGetWindowSize(void);
extern  float igGetWindowWidth(void);
extern  float igGetWindowHeight(void);
extern  void igSetNextWindowPos(const ImVec2_c pos,ImGuiCond cond,const ImVec2_c pivot);
extern  void igSetNextWindowSize(const ImVec2_c size,ImGuiCond cond);
extern  void igSetNextWindowSizeConstraints(const ImVec2_c size_min,const ImVec2_c size_max,ImGuiSizeCallback custom_callback,void* custom_callback_data);
extern  void igSetNextWindowContentSize(const ImVec2_c size);
extern  void igSetNextWindowCollapsed(_Bool collapsed,ImGuiCond cond);
extern  void igSetNextWindowFocus(void);
extern  void igSetNextWindowScroll(const ImVec2_c scroll);
extern  void igSetNextWindowBgAlpha(float alpha);
extern  void igSetWindowPos_Vec2(const ImVec2_c pos,ImGuiCond cond);
extern  void igSetWindowSize_Vec2(const ImVec2_c size,ImGuiCond cond);
extern  void igSetWindowCollapsed_Bool(_Bool collapsed,ImGuiCond cond);
extern  void igSetWindowFocus_Nil(void);
extern  void igSetWindowPos_Str(const char* name,const ImVec2_c pos,ImGuiCond cond);
extern  void igSetWindowSize_Str(const char* name,const ImVec2_c size,ImGuiCond cond);
extern  void igSetWindowCollapsed_Str(const char* name,_Bool collapsed,ImGuiCond cond);
extern  void igSetWindowFocus_Str(const char* name);
extern  float igGetScrollX(void);
extern  float igGetScrollY(void);
extern  void igSetScrollX_Float(float scroll_x);
extern  void igSetScrollY_Float(float scroll_y);
extern  float igGetScrollMaxX(void);
extern  float igGetScrollMaxY(void);
extern  void igSetScrollHereX(float center_x_ratio);
extern  void igSetScrollHereY(float center_y_ratio);
extern  void igSetScrollFromPosX_Float(float local_x,float center_x_ratio);
extern  void igSetScrollFromPosY_Float(float local_y,float center_y_ratio);
extern  void igPushFont(ImFont* font,float font_size_base_unscaled);
extern  void igPopFont(void);
extern  ImFont* igGetFont(void);
extern  float igGetFontSize(void);
extern  ImFontBaked* igGetFontBaked(void);
extern  void igPushStyleColor_U32(ImGuiCol idx,ImU32 col);
extern  void igPushStyleColor_Vec4(ImGuiCol idx,const ImVec4_c col);
extern  void igPopStyleColor(int count);
extern  void igPushStyleVar_Float(ImGuiStyleVar idx,float val);
extern  void igPushStyleVar_Vec2(ImGuiStyleVar idx,const ImVec2_c val);
extern  void igPushStyleVarX(ImGuiStyleVar idx,float val_x);
extern  void igPushStyleVarY(ImGuiStyleVar idx,float val_y);
extern  void igPopStyleVar(int count);
extern  void igPushItemFlag(ImGuiItemFlags option,_Bool enabled);
extern  void igPopItemFlag(void);
extern  void igPushItemWidth(float item_width);
extern  void igPopItemWidth(void);
extern  void igSetNextItemWidth(float item_width);
extern  float igCalcItemWidth(void);
extern  void igPushTextWrapPos(float wrap_local_pos_x);
extern  void igPopTextWrapPos(void);
extern  ImVec2_c igGetFontTexUvWhitePixel(void);
extern  ImU32 igGetColorU32_Col(ImGuiCol idx,float alpha_mul);
extern  ImU32 igGetColorU32_Vec4(const ImVec4_c col);
extern  ImU32 igGetColorU32_U32(ImU32 col,float alpha_mul);
extern  const ImVec4_c* igGetStyleColorVec4(ImGuiCol idx);
extern  ImVec2_c igGetCursorScreenPos(void);
extern  void igSetCursorScreenPos(const ImVec2_c pos);
extern  ImVec2_c igGetContentRegionAvail(void);
extern  ImVec2_c igGetCursorPos(void);
extern  float igGetCursorPosX(void);
extern  float igGetCursorPosY(void);
extern  void igSetCursorPos(const ImVec2_c local_pos);
extern  void igSetCursorPosX(float local_x);
extern  void igSetCursorPosY(float local_y);
extern  ImVec2_c igGetCursorStartPos(void);
extern  void igSeparator(void);
extern  void igSameLine(float offset_from_start_x,float spacing);
extern  void igNewLine(void);
extern  void igSpacing(void);
extern  void igDummy(const ImVec2_c size);
extern  void igIndent(float indent_w);
extern  void igUnindent(float indent_w);
extern  void igBeginGroup(void);
extern  void igEndGroup(void);
extern  void igAlignTextToFramePadding(void);
extern  float igGetTextLineHeight(void);
extern  float igGetTextLineHeightWithSpacing(void);
extern  float igGetFrameHeight(void);
extern  float igGetFrameHeightWithSpacing(void);
extern  void igPushID_Str(const char* str_id);
extern  void igPushID_StrStr(const char* str_id_begin,const char* str_id_end);
extern  void igPushID_Ptr(const void* ptr_id);
extern  void igPushID_Int(int int_id);
extern  void igPopID(void);
extern  ImGuiID igGetID_Str(const char* str_id);
extern  ImGuiID igGetID_StrStr(const char* str_id_begin,const char* str_id_end);
extern  ImGuiID igGetID_Ptr(const void* ptr_id);
extern  ImGuiID igGetID_Int(int int_id);
extern  void igTextUnformatted(const char* text,const char* text_end);
extern  void igText(const char* fmt,...);
extern  void igTextV(const char* fmt,va_list args);
extern  void igTextColored(const ImVec4_c col,const char* fmt,...);
extern  void igTextColoredV(const ImVec4_c col,const char* fmt,va_list args);
extern  void igTextDisabled(const char* fmt,...);
extern  void igTextDisabledV(const char* fmt,va_list args);
extern  void igTextWrapped(const char* fmt,...);
extern  void igTextWrappedV(const char* fmt,va_list args);
extern  void igLabelText(const char* label,const char* fmt,...);
extern  void igLabelTextV(const char* label,const char* fmt,va_list args);
extern  void igBulletText(const char* fmt,...);
extern  void igBulletTextV(const char* fmt,va_list args);
extern  void igSeparatorText(const char* label);
extern  _Bool igButton(const char* label,const ImVec2_c size);
extern  _Bool igSmallButton(const char* label);
extern  _Bool igInvisibleButton(const char* str_id,const ImVec2_c size,ImGuiButtonFlags flags);
extern  _Bool igArrowButton(const char* str_id,ImGuiDir dir);
extern  _Bool igCheckbox(const char* label,_Bool* v);
extern  _Bool igCheckboxFlags_IntPtr(const char* label,int* flags,int flags_value);
extern  _Bool igCheckboxFlags_UintPtr(const char* label,unsigned int* flags,unsigned int flags_value);
extern  _Bool igRadioButton_Bool(const char* label,_Bool active);
extern  _Bool igRadioButton_IntPtr(const char* label,int* v,int v_button);
extern  void igProgressBar(float fraction,const ImVec2_c size_arg,const char* overlay);
extern  void igBullet(void);
extern  _Bool igTextLink(const char* label);
extern  _Bool igTextLinkOpenURL(const char* label,const char* url);
extern  void igImage(ImTextureRef_c tex_ref,const ImVec2_c image_size,const ImVec2_c uv0,const ImVec2_c uv1);
extern  void igImageWithBg(ImTextureRef_c tex_ref,const ImVec2_c image_size,const ImVec2_c uv0,const ImVec2_c uv1,const ImVec4_c bg_col,const ImVec4_c tint_col);
extern  _Bool igImageButton(const char* str_id,ImTextureRef_c tex_ref,const ImVec2_c image_size,const ImVec2_c uv0,const ImVec2_c uv1,const ImVec4_c bg_col,const ImVec4_c tint_col);
extern  _Bool igBeginCombo(const char* label,const char* preview_value,ImGuiComboFlags flags);
extern  void igEndCombo(void);
extern  _Bool igCombo_Str_arr(const char* label,int* current_item,const char* const items[],int items_count,int popup_max_height_in_items);
extern  _Bool igCombo_Str(const char* label,int* current_item,const char* items_separated_by_zeros,int popup_max_height_in_items);
extern  _Bool igCombo_FnStrPtr(const char* label,int* current_item,const char*(*getter)(void* user_data,int idx),void* user_data,int items_count,int popup_max_height_in_items);
extern  _Bool igDragFloat(const char* label,float* v,float v_speed,float v_min,float v_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igDragFloat2(const char* label,float v[2],float v_speed,float v_min,float v_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igDragFloat3(const char* label,float v[3],float v_speed,float v_min,float v_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igDragFloat4(const char* label,float v[4],float v_speed,float v_min,float v_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igDragFloatRange2(const char* label,float* v_current_min,float* v_current_max,float v_speed,float v_min,float v_max,const char* format,const char* format_max,ImGuiSliderFlags flags);
extern  _Bool igDragInt(const char* label,int* v,float v_speed,int v_min,int v_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igDragInt2(const char* label,int v[2],float v_speed,int v_min,int v_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igDragInt3(const char* label,int v[3],float v_speed,int v_min,int v_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igDragInt4(const char* label,int v[4],float v_speed,int v_min,int v_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igDragIntRange2(const char* label,int* v_current_min,int* v_current_max,float v_speed,int v_min,int v_max,const char* format,const char* format_max,ImGuiSliderFlags flags);
extern  _Bool igDragScalar(const char* label,ImGuiDataType data_type,void* p_data,float v_speed,const void* p_min,const void* p_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igDragScalarN(const char* label,ImGuiDataType data_type,void* p_data,int components,float v_speed,const void* p_min,const void* p_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igSliderFloat(const char* label,float* v,float v_min,float v_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igSliderFloat2(const char* label,float v[2],float v_min,float v_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igSliderFloat3(const char* label,float v[3],float v_min,float v_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igSliderFloat4(const char* label,float v[4],float v_min,float v_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igSliderAngle(const char* label,float* v_rad,float v_degrees_min,float v_degrees_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igSliderInt(const char* label,int* v,int v_min,int v_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igSliderInt2(const char* label,int v[2],int v_min,int v_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igSliderInt3(const char* label,int v[3],int v_min,int v_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igSliderInt4(const char* label,int v[4],int v_min,int v_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igSliderScalar(const char* label,ImGuiDataType data_type,void* p_data,const void* p_min,const void* p_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igSliderScalarN(const char* label,ImGuiDataType data_type,void* p_data,int components,const void* p_min,const void* p_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igVSliderFloat(const char* label,const ImVec2_c size,float* v,float v_min,float v_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igVSliderInt(const char* label,const ImVec2_c size,int* v,int v_min,int v_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igVSliderScalar(const char* label,const ImVec2_c size,ImGuiDataType data_type,void* p_data,const void* p_min,const void* p_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igInputText(const char* label,char* buf,size_t buf_size,ImGuiInputTextFlags flags,ImGuiInputTextCallback callback,void* user_data);
extern  _Bool igInputTextMultiline(const char* label,char* buf,size_t buf_size,const ImVec2_c size,ImGuiInputTextFlags flags,ImGuiInputTextCallback callback,void* user_data);
extern  _Bool igInputTextWithHint(const char* label,const char* hint,char* buf,size_t buf_size,ImGuiInputTextFlags flags,ImGuiInputTextCallback callback,void* user_data);
extern  _Bool igInputFloat(const char* label,float* v,float step,float step_fast,const char* format,ImGuiInputTextFlags flags);
extern  _Bool igInputFloat2(const char* label,float v[2],const char* format,ImGuiInputTextFlags flags);
extern  _Bool igInputFloat3(const char* label,float v[3],const char* format,ImGuiInputTextFlags flags);
extern  _Bool igInputFloat4(const char* label,float v[4],const char* format,ImGuiInputTextFlags flags);
extern  _Bool igInputInt(const char* label,int* v,int step,int step_fast,ImGuiInputTextFlags flags);
extern  _Bool igInputInt2(const char* label,int v[2],ImGuiInputTextFlags flags);
extern  _Bool igInputInt3(const char* label,int v[3],ImGuiInputTextFlags flags);
extern  _Bool igInputInt4(const char* label,int v[4],ImGuiInputTextFlags flags);
extern  _Bool igInputDouble(const char* label,double* v,double step,double step_fast,const char* format,ImGuiInputTextFlags flags);
extern  _Bool igInputScalar(const char* label,ImGuiDataType data_type,void* p_data,const void* p_step,const void* p_step_fast,const char* format,ImGuiInputTextFlags flags);
extern  _Bool igInputScalarN(const char* label,ImGuiDataType data_type,void* p_data,int components,const void* p_step,const void* p_step_fast,const char* format,ImGuiInputTextFlags flags);
extern  _Bool igColorEdit3(const char* label,float col[3],ImGuiColorEditFlags flags);
extern  _Bool igColorEdit4(const char* label,float col[4],ImGuiColorEditFlags flags);
extern  _Bool igColorPicker3(const char* label,float col[3],ImGuiColorEditFlags flags);
extern  _Bool igColorPicker4(const char* label,float col[4],ImGuiColorEditFlags flags,const float* ref_col);
extern  _Bool igColorButton(const char* desc_id,const ImVec4_c col,ImGuiColorEditFlags flags,const ImVec2_c size);
extern  void igSetColorEditOptions(ImGuiColorEditFlags flags);
extern  _Bool igTreeNode_Str(const char* label);
extern  _Bool igTreeNode_StrStr(const char* str_id,const char* fmt,...);
extern  _Bool igTreeNode_Ptr(const void* ptr_id,const char* fmt,...);
extern  _Bool igTreeNodeV_Str(const char* str_id,const char* fmt,va_list args);
extern  _Bool igTreeNodeV_Ptr(const void* ptr_id,const char* fmt,va_list args);
extern  _Bool igTreeNodeEx_Str(const char* label,ImGuiTreeNodeFlags flags);
extern  _Bool igTreeNodeEx_StrStr(const char* str_id,ImGuiTreeNodeFlags flags,const char* fmt,...);
extern  _Bool igTreeNodeEx_Ptr(const void* ptr_id,ImGuiTreeNodeFlags flags,const char* fmt,...);
extern  _Bool igTreeNodeExV_Str(const char* str_id,ImGuiTreeNodeFlags flags,const char* fmt,va_list args);
extern  _Bool igTreeNodeExV_Ptr(const void* ptr_id,ImGuiTreeNodeFlags flags,const char* fmt,va_list args);
extern  void igTreePush_Str(const char* str_id);
extern  void igTreePush_Ptr(const void* ptr_id);
extern  void igTreePop(void);
extern  float igGetTreeNodeToLabelSpacing(void);
extern  _Bool igCollapsingHeader_TreeNodeFlags(const char* label,ImGuiTreeNodeFlags flags);
extern  _Bool igCollapsingHeader_BoolPtr(const char* label,_Bool* p_visible,ImGuiTreeNodeFlags flags);
extern  void igSetNextItemOpen(_Bool is_open,ImGuiCond cond);
extern  void igSetNextItemStorageID(ImGuiID storage_id);
extern  _Bool igTreeNodeGetOpen(ImGuiID storage_id);
extern  _Bool igSelectable_Bool(const char* label,_Bool selected,ImGuiSelectableFlags flags,const ImVec2_c size);
extern  _Bool igSelectable_BoolPtr(const char* label,_Bool* p_selected,ImGuiSelectableFlags flags,const ImVec2_c size);
extern  ImGuiMultiSelectIO* igBeginMultiSelect(ImGuiMultiSelectFlags flags,int selection_size,int items_count);
extern  ImGuiMultiSelectIO* igEndMultiSelect(void);
extern  void igSetNextItemSelectionUserData(ImGuiSelectionUserData selection_user_data);
extern  _Bool igIsItemToggledSelection(void);
extern  _Bool igBeginListBox(const char* label,const ImVec2_c size);
extern  void igEndListBox(void);
extern  _Bool igListBox_Str_arr(const char* label,int* current_item,const char* const items[],int items_count,int height_in_items);
extern  _Bool igListBox_FnStrPtr(const char* label,int* current_item,const char*(*getter)(void* user_data,int idx),void* user_data,int items_count,int height_in_items);
extern  void igPlotLines_FloatPtr(const char* label,const float* values,int values_count,int values_offset,const char* overlay_text,float scale_min,float scale_max,ImVec2_c graph_size,int stride);
extern  void igPlotLines_FnFloatPtr(const char* label,float(*values_getter)(void* data,int idx),void* data,int values_count,int values_offset,const char* overlay_text,float scale_min,float scale_max,ImVec2_c graph_size);
extern  void igPlotHistogram_FloatPtr(const char* label,const float* values,int values_count,int values_offset,const char* overlay_text,float scale_min,float scale_max,ImVec2_c graph_size,int stride);
extern  void igPlotHistogram_FnFloatPtr(const char* label,float(*values_getter)(void* data,int idx),void* data,int values_count,int values_offset,const char* overlay_text,float scale_min,float scale_max,ImVec2_c graph_size);
extern  void igValue_Bool(const char* prefix,_Bool b);
extern  void igValue_Int(const char* prefix,int v);
extern  void igValue_Uint(const char* prefix,unsigned int v);
extern  void igValue_Float(const char* prefix,float v,const char* float_format);
extern  _Bool igBeginMenuBar(void);
extern  void igEndMenuBar(void);
extern  _Bool igBeginMainMenuBar(void);
extern  void igEndMainMenuBar(void);
extern  _Bool igBeginMenu(const char* label,_Bool enabled);
extern  void igEndMenu(void);
extern  _Bool igMenuItem_Bool(const char* label,const char* shortcut,_Bool selected,_Bool enabled);
extern  _Bool igMenuItem_BoolPtr(const char* label,const char* shortcut,_Bool* p_selected,_Bool enabled);
extern  _Bool igBeginTooltip(void);
extern  void igEndTooltip(void);
extern  void igSetTooltip(const char* fmt,...);
extern  void igSetTooltipV(const char* fmt,va_list args);
extern  _Bool igBeginItemTooltip(void);
extern  void igSetItemTooltip(const char* fmt,...);
extern  void igSetItemTooltipV(const char* fmt,va_list args);
extern  _Bool igBeginPopup(const char* str_id,ImGuiWindowFlags flags);
extern  _Bool igBeginPopupModal(const char* name,_Bool* p_open,ImGuiWindowFlags flags);
extern  void igEndPopup(void);
extern  void igOpenPopup_Str(const char* str_id,ImGuiPopupFlags popup_flags);
extern  void igOpenPopup_ID(ImGuiID id,ImGuiPopupFlags popup_flags);
extern  void igOpenPopupOnItemClick(const char* str_id,ImGuiPopupFlags popup_flags);
extern  void igCloseCurrentPopup(void);
extern  _Bool igBeginPopupContextItem(const char* str_id,ImGuiPopupFlags popup_flags);
extern  _Bool igBeginPopupContextWindow(const char* str_id,ImGuiPopupFlags popup_flags);
extern  _Bool igBeginPopupContextVoid(const char* str_id,ImGuiPopupFlags popup_flags);
extern  _Bool igIsPopupOpen_Str(const char* str_id,ImGuiPopupFlags flags);
extern  _Bool igBeginTable(const char* str_id,int columns,ImGuiTableFlags flags,const ImVec2_c outer_size,float inner_width);
extern  void igEndTable(void);
extern  void igTableNextRow(ImGuiTableRowFlags row_flags,float min_row_height);
extern  _Bool igTableNextColumn(void);
extern  _Bool igTableSetColumnIndex(int column_n);
extern  void igTableSetupColumn(const char* label,ImGuiTableColumnFlags flags,float init_width_or_weight,ImGuiID user_id);
extern  void igTableSetupScrollFreeze(int cols,int rows);
extern  void igTableHeader(const char* label);
extern  void igTableHeadersRow(void);
extern  void igTableAngledHeadersRow(void);
extern  ImGuiTableSortSpecs* igTableGetSortSpecs(void);
extern  int igTableGetColumnCount(void);
extern  int igTableGetColumnIndex(void);
extern  int igTableGetRowIndex(void);
extern  const char* igTableGetColumnName_Int(int column_n);
extern  ImGuiTableColumnFlags igTableGetColumnFlags(int column_n);
extern  void igTableSetColumnEnabled(int column_n,_Bool v);
extern  int igTableGetHoveredColumn(void);
extern  void igTableSetBgColor(ImGuiTableBgTarget target,ImU32 color,int column_n);
extern  void igColumns(int count,const char* id,_Bool borders);
extern  void igNextColumn(void);
extern  int igGetColumnIndex(void);
extern  float igGetColumnWidth(int column_index);
extern  void igSetColumnWidth(int column_index,float width);
extern  float igGetColumnOffset(int column_index);
extern  void igSetColumnOffset(int column_index,float offset_x);
extern  int igGetColumnsCount(void);
extern  _Bool igBeginTabBar(const char* str_id,ImGuiTabBarFlags flags);
extern  void igEndTabBar(void);
extern  _Bool igBeginTabItem(const char* label,_Bool* p_open,ImGuiTabItemFlags flags);
extern  void igEndTabItem(void);
extern  _Bool igTabItemButton(const char* label,ImGuiTabItemFlags flags);
extern  void igSetTabItemClosed(const char* tab_or_docked_window_label);
extern  void igLogToTTY(int auto_open_depth);
extern  void igLogToFile(int auto_open_depth,const char* filename);
extern  void igLogToClipboard(int auto_open_depth);
extern  void igLogFinish(void);
extern  void igLogButtons(void);
extern  void igLogText(const char* fmt,...);
extern  void igLogTextV(const char* fmt,va_list args);
extern  _Bool igBeginDragDropSource(ImGuiDragDropFlags flags);
extern  _Bool igSetDragDropPayload(const char* type,const void* data,size_t sz,ImGuiCond cond);
extern  void igEndDragDropSource(void);
extern  _Bool igBeginDragDropTarget(void);
extern  const ImGuiPayload* igAcceptDragDropPayload(const char* type,ImGuiDragDropFlags flags);
extern  void igEndDragDropTarget(void);
extern  const ImGuiPayload* igGetDragDropPayload(void);
extern  void igBeginDisabled(_Bool disabled);
extern  void igEndDisabled(void);
extern  void igPushClipRect(const ImVec2_c clip_rect_min,const ImVec2_c clip_rect_max,_Bool intersect_with_current_clip_rect);
extern  void igPopClipRect(void);
extern  void igSetItemDefaultFocus(void);
extern  void igSetKeyboardFocusHere(int offset);
extern  void igSetNavCursorVisible(_Bool visible);
extern  void igSetNextItemAllowOverlap(void);
extern  _Bool igIsItemHovered(ImGuiHoveredFlags flags);
extern  _Bool igIsItemActive(void);
extern  _Bool igIsItemFocused(void);
extern  _Bool igIsItemClicked(ImGuiMouseButton mouse_button);
extern  _Bool igIsItemVisible(void);
extern  _Bool igIsItemEdited(void);
extern  _Bool igIsItemActivated(void);
extern  _Bool igIsItemDeactivated(void);
extern  _Bool igIsItemDeactivatedAfterEdit(void);
extern  _Bool igIsItemToggledOpen(void);
extern  _Bool igIsAnyItemHovered(void);
extern  _Bool igIsAnyItemActive(void);
extern  _Bool igIsAnyItemFocused(void);
extern  ImGuiID igGetItemID(void);
extern  ImVec2_c igGetItemRectMin(void);
extern  ImVec2_c igGetItemRectMax(void);
extern  ImVec2_c igGetItemRectSize(void);
extern  ImGuiItemFlags igGetItemFlags(void);
extern  ImGuiViewport* igGetMainViewport(void);
extern  ImDrawList* igGetBackgroundDrawList_Nil(void);
extern  ImDrawList* igGetForegroundDrawList_Nil(void);
extern  _Bool igIsRectVisible_Nil(const ImVec2_c size);
extern  _Bool igIsRectVisible_Vec2(const ImVec2_c rect_min,const ImVec2_c rect_max);
extern  double igGetTime(void);
extern  int igGetFrameCount(void);
extern  ImDrawListSharedData* igGetDrawListSharedData(void);
extern  const char* igGetStyleColorName(ImGuiCol idx);
extern  void igSetStateStorage(ImGuiStorage* storage);
extern  ImGuiStorage* igGetStateStorage(void);
extern  ImVec2_c igCalcTextSize(const char* text,const char* text_end,_Bool hide_text_after_double_hash,float wrap_width);
extern  ImVec4_c igColorConvertU32ToFloat4(ImU32 in);
extern  ImU32 igColorConvertFloat4ToU32(const ImVec4_c in);
extern  void igColorConvertRGBtoHSV(float r,float g,float b,float* out_h,float* out_s,float* out_v);
extern  void igColorConvertHSVtoRGB(float h,float s,float v,float* out_r,float* out_g,float* out_b);
extern  _Bool igIsKeyDown_Nil(ImGuiKey key);
extern  _Bool igIsKeyPressed_Bool(ImGuiKey key,_Bool repeat);
extern  _Bool igIsKeyReleased_Nil(ImGuiKey key);
extern  _Bool igIsKeyChordPressed_Nil(ImGuiKeyChord key_chord);
extern  int igGetKeyPressedAmount(ImGuiKey key,float repeat_delay,float rate);
extern  const char* igGetKeyName(ImGuiKey key);
extern  void igSetNextFrameWantCaptureKeyboard(_Bool want_capture_keyboard);
extern  _Bool igShortcut_Nil(ImGuiKeyChord key_chord,ImGuiInputFlags flags);
extern  void igSetNextItemShortcut(ImGuiKeyChord key_chord,ImGuiInputFlags flags);
extern  _Bool igSetItemKeyOwner_Nil(ImGuiKey key);
extern  _Bool igIsMouseDown_Nil(ImGuiMouseButton button);
extern  _Bool igIsMouseClicked_Bool(ImGuiMouseButton button,_Bool repeat);
extern  _Bool igIsMouseReleased_Nil(ImGuiMouseButton button);
extern  _Bool igIsMouseDoubleClicked_Nil(ImGuiMouseButton button);
extern  _Bool igIsMouseReleasedWithDelay(ImGuiMouseButton button,float delay);
extern  int igGetMouseClickedCount(ImGuiMouseButton button);
extern  _Bool igIsMouseHoveringRect(const ImVec2_c r_min,const ImVec2_c r_max,_Bool clip);
extern  _Bool igIsMousePosValid(const ImVec2_c* mouse_pos);
extern  _Bool igIsAnyMouseDown(void);
extern  ImVec2_c igGetMousePos(void);
extern  ImVec2_c igGetMousePosOnOpeningCurrentPopup(void);
extern  _Bool igIsMouseDragging(ImGuiMouseButton button,float lock_threshold);
extern  ImVec2_c igGetMouseDragDelta(ImGuiMouseButton button,float lock_threshold);
extern  void igResetMouseDragDelta(ImGuiMouseButton button);
extern  ImGuiMouseCursor igGetMouseCursor(void);
extern  void igSetMouseCursor(ImGuiMouseCursor cursor_type);
extern  void igSetNextFrameWantCaptureMouse(_Bool want_capture_mouse);
extern  const char* igGetClipboardText(void);
extern  void igSetClipboardText(const char* text);
extern  void igLoadIniSettingsFromDisk(const char* ini_filename);
extern  void igLoadIniSettingsFromMemory(const char* ini_data,size_t ini_size);
extern  void igSaveIniSettingsToDisk(const char* ini_filename);
extern  const char* igSaveIniSettingsToMemory(size_t* out_ini_size);
extern  void igDebugTextEncoding(const char* text);
extern  void igDebugFlashStyleColor(ImGuiCol idx);
extern  void igDebugStartItemPicker(void);
extern  _Bool igDebugCheckVersionAndDataLayout(const char* version_str,size_t sz_io,size_t sz_style,size_t sz_vec2,size_t sz_vec4,size_t sz_drawvert,size_t sz_drawidx);
extern  void igDebugLog(const char* fmt,...);
extern  void igDebugLogV(const char* fmt,va_list args);
extern  void igSetAllocatorFunctions(ImGuiMemAllocFunc alloc_func,ImGuiMemFreeFunc free_func,void* user_data);
extern  void igGetAllocatorFunctions(ImGuiMemAllocFunc* p_alloc_func,ImGuiMemFreeFunc* p_free_func,void** p_user_data);
extern  void* igMemAlloc(size_t size);
extern  void igMemFree(void* ptr);
extern  ImGuiTableSortSpecs* ImGuiTableSortSpecs_ImGuiTableSortSpecs(void);
extern  void ImGuiTableSortSpecs_destroy(ImGuiTableSortSpecs* self);
extern  ImGuiTableColumnSortSpecs* ImGuiTableColumnSortSpecs_ImGuiTableColumnSortSpecs(void);
extern  void ImGuiTableColumnSortSpecs_destroy(ImGuiTableColumnSortSpecs* self);
extern  ImGuiStyle* ImGuiStyle_ImGuiStyle(void);
extern  void ImGuiStyle_destroy(ImGuiStyle* self);
extern  void ImGuiStyle_ScaleAllSizes(ImGuiStyle* self,float scale_factor);
extern  void ImGuiIO_AddKeyEvent(ImGuiIO* self,ImGuiKey key,_Bool down);
extern  void ImGuiIO_AddKeyAnalogEvent(ImGuiIO* self,ImGuiKey key,_Bool down,float v);
extern  void ImGuiIO_AddMousePosEvent(ImGuiIO* self,float x,float y);
extern  void ImGuiIO_AddMouseButtonEvent(ImGuiIO* self,int button,_Bool down);
extern  void ImGuiIO_AddMouseWheelEvent(ImGuiIO* self,float wheel_x,float wheel_y);
extern  void ImGuiIO_AddMouseSourceEvent(ImGuiIO* self,ImGuiMouseSource source);
extern  void ImGuiIO_AddFocusEvent(ImGuiIO* self,_Bool focused);
extern  void ImGuiIO_AddInputCharacter(ImGuiIO* self,unsigned int c);
extern  void ImGuiIO_AddInputCharacterUTF16(ImGuiIO* self,ImWchar16 c);
extern  void ImGuiIO_AddInputCharactersUTF8(ImGuiIO* self,const char* str);
extern  void ImGuiIO_SetKeyEventNativeData(ImGuiIO* self,ImGuiKey key,int native_keycode,int native_scancode,int native_legacy_index);
extern  void ImGuiIO_SetAppAcceptingEvents(ImGuiIO* self,_Bool accepting_events);
extern  void ImGuiIO_ClearEventsQueue(ImGuiIO* self);
extern  void ImGuiIO_ClearInputKeys(ImGuiIO* self);
extern  void ImGuiIO_ClearInputMouse(ImGuiIO* self);
extern  ImGuiIO* ImGuiIO_ImGuiIO(void);
extern  void ImGuiIO_destroy(ImGuiIO* self);
extern  ImGuiInputTextCallbackData* ImGuiInputTextCallbackData_ImGuiInputTextCallbackData(void);
extern  void ImGuiInputTextCallbackData_destroy(ImGuiInputTextCallbackData* self);
extern  void ImGuiInputTextCallbackData_DeleteChars(ImGuiInputTextCallbackData* self,int pos,int bytes_count);
extern  void ImGuiInputTextCallbackData_InsertChars(ImGuiInputTextCallbackData* self,int pos,const char* text,const char* text_end);
extern  void ImGuiInputTextCallbackData_SelectAll(ImGuiInputTextCallbackData* self);
extern  void ImGuiInputTextCallbackData_SetSelection(ImGuiInputTextCallbackData* self,int s,int e);
extern  void ImGuiInputTextCallbackData_ClearSelection(ImGuiInputTextCallbackData* self);
extern  _Bool ImGuiInputTextCallbackData_HasSelection(ImGuiInputTextCallbackData* self);
extern  ImGuiPayload* ImGuiPayload_ImGuiPayload(void);
extern  void ImGuiPayload_destroy(ImGuiPayload* self);
extern  void ImGuiPayload_Clear(ImGuiPayload* self);
extern  _Bool ImGuiPayload_IsDataType(ImGuiPayload* self,const char* type);
extern  _Bool ImGuiPayload_IsPreview(ImGuiPayload* self);
extern  _Bool ImGuiPayload_IsDelivery(ImGuiPayload* self);
extern  ImGuiOnceUponAFrame* ImGuiOnceUponAFrame_ImGuiOnceUponAFrame(void);
extern  void ImGuiOnceUponAFrame_destroy(ImGuiOnceUponAFrame* self);
extern  ImGuiTextFilter* ImGuiTextFilter_ImGuiTextFilter(const char* default_filter);
extern  void ImGuiTextFilter_destroy(ImGuiTextFilter* self);
extern  _Bool ImGuiTextFilter_Draw(ImGuiTextFilter* self,const char* label,float width);
extern  _Bool ImGuiTextFilter_PassFilter(ImGuiTextFilter* self,const char* text,const char* text_end);
extern  void ImGuiTextFilter_Build(ImGuiTextFilter* self);
extern  void ImGuiTextFilter_Clear(ImGuiTextFilter* self);
extern  _Bool ImGuiTextFilter_IsActive(ImGuiTextFilter* self);
extern  ImGuiTextRange* ImGuiTextRange_ImGuiTextRange_Nil(void);
extern  void ImGuiTextRange_destroy(ImGuiTextRange* self);
extern  ImGuiTextRange* ImGuiTextRange_ImGuiTextRange_Str(const char* _b,const char* _e);
extern  _Bool ImGuiTextRange_empty(ImGuiTextRange* self);
extern  void ImGuiTextRange_split(ImGuiTextRange* self,char separator,ImVector_ImGuiTextRange* out);
extern  ImGuiTextBuffer* ImGuiTextBuffer_ImGuiTextBuffer(void);
extern  void ImGuiTextBuffer_destroy(ImGuiTextBuffer* self);
extern  const char* ImGuiTextBuffer_begin(ImGuiTextBuffer* self);
extern  const char* ImGuiTextBuffer_end(ImGuiTextBuffer* self);
extern  int ImGuiTextBuffer_size(ImGuiTextBuffer* self);
extern  _Bool ImGuiTextBuffer_empty(ImGuiTextBuffer* self);
extern  void ImGuiTextBuffer_clear(ImGuiTextBuffer* self);
extern  void ImGuiTextBuffer_resize(ImGuiTextBuffer* self,int size);
extern  void ImGuiTextBuffer_reserve(ImGuiTextBuffer* self,int capacity);
extern  const char* ImGuiTextBuffer_c_str(ImGuiTextBuffer* self);
extern  void ImGuiTextBuffer_append(ImGuiTextBuffer* self,const char* str,const char* str_end);
extern  void ImGuiTextBuffer_appendfv(ImGuiTextBuffer* self,const char* fmt,va_list args);
extern  ImGuiStoragePair* ImGuiStoragePair_ImGuiStoragePair_Int(ImGuiID _key,int _val);
extern  void ImGuiStoragePair_destroy(ImGuiStoragePair* self);
extern  ImGuiStoragePair* ImGuiStoragePair_ImGuiStoragePair_Float(ImGuiID _key,float _val);
extern  ImGuiStoragePair* ImGuiStoragePair_ImGuiStoragePair_Ptr(ImGuiID _key,void* _val);
extern  void ImGuiStorage_Clear(ImGuiStorage* self);
extern  int ImGuiStorage_GetInt(ImGuiStorage* self,ImGuiID key,int default_val);
extern  void ImGuiStorage_SetInt(ImGuiStorage* self,ImGuiID key,int val);
extern  _Bool ImGuiStorage_GetBool(ImGuiStorage* self,ImGuiID key,_Bool default_val);
extern  void ImGuiStorage_SetBool(ImGuiStorage* self,ImGuiID key,_Bool val);
extern  float ImGuiStorage_GetFloat(ImGuiStorage* self,ImGuiID key,float default_val);
extern  void ImGuiStorage_SetFloat(ImGuiStorage* self,ImGuiID key,float val);
extern  void* ImGuiStorage_GetVoidPtr(ImGuiStorage* self,ImGuiID key);
extern  void ImGuiStorage_SetVoidPtr(ImGuiStorage* self,ImGuiID key,void* val);
extern  int* ImGuiStorage_GetIntRef(ImGuiStorage* self,ImGuiID key,int default_val);
extern  _Bool* ImGuiStorage_GetBoolRef(ImGuiStorage* self,ImGuiID key,_Bool default_val);
extern  float* ImGuiStorage_GetFloatRef(ImGuiStorage* self,ImGuiID key,float default_val);
extern  void** ImGuiStorage_GetVoidPtrRef(ImGuiStorage* self,ImGuiID key,void* default_val);
extern  void ImGuiStorage_BuildSortByKey(ImGuiStorage* self);
extern  void ImGuiStorage_SetAllInt(ImGuiStorage* self,int val);
extern  ImGuiListClipper* ImGuiListClipper_ImGuiListClipper(void);
extern  void ImGuiListClipper_destroy(ImGuiListClipper* self);
extern  void ImGuiListClipper_Begin(ImGuiListClipper* self,int items_count,float items_height);
extern  void ImGuiListClipper_End(ImGuiListClipper* self);
extern  _Bool ImGuiListClipper_Step(ImGuiListClipper* self);
extern  void ImGuiListClipper_IncludeItemByIndex(ImGuiListClipper* self,int item_index);
extern  void ImGuiListClipper_IncludeItemsByIndex(ImGuiListClipper* self,int item_begin,int item_end);
extern  void ImGuiListClipper_SeekCursorForItem(ImGuiListClipper* self,int item_index);
extern  ImColor* ImColor_ImColor_Nil(void);
extern  void ImColor_destroy(ImColor* self);
extern  ImColor* ImColor_ImColor_Float(float r,float g,float b,float a);
extern  ImColor* ImColor_ImColor_Vec4(const ImVec4_c col);
extern  ImColor* ImColor_ImColor_Int(int r,int g,int b,int a);
extern  ImColor* ImColor_ImColor_U32(ImU32 rgba);
extern  void ImColor_SetHSV(ImColor* self,float h,float s,float v,float a);
extern  ImColor_c ImColor_HSV(float h,float s,float v,float a);
extern  ImGuiSelectionBasicStorage* ImGuiSelectionBasicStorage_ImGuiSelectionBasicStorage(void);
extern  void ImGuiSelectionBasicStorage_destroy(ImGuiSelectionBasicStorage* self);
extern  void ImGuiSelectionBasicStorage_ApplyRequests(ImGuiSelectionBasicStorage* self,ImGuiMultiSelectIO* ms_io);
extern  _Bool ImGuiSelectionBasicStorage_Contains(ImGuiSelectionBasicStorage* self,ImGuiID id);
extern  void ImGuiSelectionBasicStorage_Clear(ImGuiSelectionBasicStorage* self);
extern  void ImGuiSelectionBasicStorage_Swap(ImGuiSelectionBasicStorage* self,ImGuiSelectionBasicStorage* r);
extern  void ImGuiSelectionBasicStorage_SetItemSelected(ImGuiSelectionBasicStorage* self,ImGuiID id,_Bool selected);
extern  _Bool ImGuiSelectionBasicStorage_GetNextSelectedItem(ImGuiSelectionBasicStorage* self,void** opaque_it,ImGuiID* out_id);
extern  ImGuiID ImGuiSelectionBasicStorage_GetStorageIdFromIndex(ImGuiSelectionBasicStorage* self,int idx);
extern  ImGuiSelectionExternalStorage* ImGuiSelectionExternalStorage_ImGuiSelectionExternalStorage(void);
extern  void ImGuiSelectionExternalStorage_destroy(ImGuiSelectionExternalStorage* self);
extern  void ImGuiSelectionExternalStorage_ApplyRequests(ImGuiSelectionExternalStorage* self,ImGuiMultiSelectIO* ms_io);
extern  ImDrawCmd* ImDrawCmd_ImDrawCmd(void);
extern  void ImDrawCmd_destroy(ImDrawCmd* self);
extern  ImTextureID ImDrawCmd_GetTexID(ImDrawCmd* self);
extern  ImDrawListSplitter* ImDrawListSplitter_ImDrawListSplitter(void);
extern  void ImDrawListSplitter_destroy(ImDrawListSplitter* self);
extern  void ImDrawListSplitter_Clear(ImDrawListSplitter* self);
extern  void ImDrawListSplitter_ClearFreeMemory(ImDrawListSplitter* self);
extern  void ImDrawListSplitter_Split(ImDrawListSplitter* self,ImDrawList* draw_list,int count);
extern  void ImDrawListSplitter_Merge(ImDrawListSplitter* self,ImDrawList* draw_list);
extern  void ImDrawListSplitter_SetCurrentChannel(ImDrawListSplitter* self,ImDrawList* draw_list,int channel_idx);
extern  ImDrawList* ImDrawList_ImDrawList(ImDrawListSharedData* shared_data);
extern  void ImDrawList_destroy(ImDrawList* self);
extern  void ImDrawList_PushClipRect(ImDrawList* self,const ImVec2_c clip_rect_min,const ImVec2_c clip_rect_max,_Bool intersect_with_current_clip_rect);
extern  void ImDrawList_PushClipRectFullScreen(ImDrawList* self);
extern  void ImDrawList_PopClipRect(ImDrawList* self);
extern  void ImDrawList_PushTexture(ImDrawList* self,ImTextureRef_c tex_ref);
extern  void ImDrawList_PopTexture(ImDrawList* self);
extern  ImVec2_c ImDrawList_GetClipRectMin(ImDrawList* self);
extern  ImVec2_c ImDrawList_GetClipRectMax(ImDrawList* self);
extern  void ImDrawList_AddLine(ImDrawList* self,const ImVec2_c p1,const ImVec2_c p2,ImU32 col,float thickness);
extern  void ImDrawList_AddLineH(ImDrawList* self,float min_x,float max_x,float y,ImU32 col,float thickness);
extern  void ImDrawList_AddLineV(ImDrawList* self,float x,float min_y,float max_y,ImU32 col,float thickness);
extern  void ImDrawList_AddRect(ImDrawList* self,const ImVec2_c p_min,const ImVec2_c p_max,ImU32 col,float rounding,float thickness,ImDrawFlags flags);
extern  void ImDrawList_AddRectFilled(ImDrawList* self,const ImVec2_c p_min,const ImVec2_c p_max,ImU32 col,float rounding,ImDrawFlags flags);
extern  void ImDrawList_AddRectFilledMultiColor(ImDrawList* self,const ImVec2_c p_min,const ImVec2_c p_max,ImU32 col_upr_left,ImU32 col_upr_right,ImU32 col_bot_right,ImU32 col_bot_left);
extern  void ImDrawList_AddQuad(ImDrawList* self,const ImVec2_c p1,const ImVec2_c p2,const ImVec2_c p3,const ImVec2_c p4,ImU32 col,float thickness);
extern  void ImDrawList_AddQuadFilled(ImDrawList* self,const ImVec2_c p1,const ImVec2_c p2,const ImVec2_c p3,const ImVec2_c p4,ImU32 col);
extern  void ImDrawList_AddTriangle(ImDrawList* self,const ImVec2_c p1,const ImVec2_c p2,const ImVec2_c p3,ImU32 col,float thickness);
extern  void ImDrawList_AddTriangleFilled(ImDrawList* self,const ImVec2_c p1,const ImVec2_c p2,const ImVec2_c p3,ImU32 col);
extern  void ImDrawList_AddCircle(ImDrawList* self,const ImVec2_c center,float radius,ImU32 col,int num_segments,float thickness);
extern  void ImDrawList_AddCircleFilled(ImDrawList* self,const ImVec2_c center,float radius,ImU32 col,int num_segments);
extern  void ImDrawList_AddNgon(ImDrawList* self,const ImVec2_c center,float radius,ImU32 col,int num_segments,float thickness);
extern  void ImDrawList_AddNgonFilled(ImDrawList* self,const ImVec2_c center,float radius,ImU32 col,int num_segments);
extern  void ImDrawList_AddEllipse(ImDrawList* self,const ImVec2_c center,const ImVec2_c radius,ImU32 col,float rot,int num_segments,float thickness);
extern  void ImDrawList_AddEllipseFilled(ImDrawList* self,const ImVec2_c center,const ImVec2_c radius,ImU32 col,float rot,int num_segments);
extern  void ImDrawList_AddText_Vec2(ImDrawList* self,const ImVec2_c pos,ImU32 col,const char* text_begin,const char* text_end);
extern  void ImDrawList_AddText_FontPtr(ImDrawList* self,ImFont* font,float font_size,const ImVec2_c pos,ImU32 col,const char* text_begin,const char* text_end,float wrap_width,const ImVec4* cpu_fine_clip_rect);
extern  void ImDrawList_AddBezierCubic(ImDrawList* self,const ImVec2_c p1,const ImVec2_c p2,const ImVec2_c p3,const ImVec2_c p4,ImU32 col,float thickness,int num_segments);
extern  void ImDrawList_AddBezierQuadratic(ImDrawList* self,const ImVec2_c p1,const ImVec2_c p2,const ImVec2_c p3,ImU32 col,float thickness,int num_segments);
extern  void ImDrawList_AddPolyline(ImDrawList* self,const ImVec2_c* points,int num_points,ImU32 col,float thickness,ImDrawFlags flags);
extern  void ImDrawList_AddConvexPolyFilled(ImDrawList* self,const ImVec2_c* points,int num_points,ImU32 col);
extern  void ImDrawList_AddConcavePolyFilled(ImDrawList* self,const ImVec2_c* points,int num_points,ImU32 col);
extern  void ImDrawList_AddImage(ImDrawList* self,ImTextureRef_c tex_ref,const ImVec2_c p_min,const ImVec2_c p_max,const ImVec2_c uv_min,const ImVec2_c uv_max,ImU32 col);
extern  void ImDrawList_AddImageQuad(ImDrawList* self,ImTextureRef_c tex_ref,const ImVec2_c p1,const ImVec2_c p2,const ImVec2_c p3,const ImVec2_c p4,const ImVec2_c uv1,const ImVec2_c uv2,const ImVec2_c uv3,const ImVec2_c uv4,ImU32 col);
extern  void ImDrawList_AddImageRounded(ImDrawList* self,ImTextureRef_c tex_ref,const ImVec2_c p_min,const ImVec2_c p_max,const ImVec2_c uv_min,const ImVec2_c uv_max,ImU32 col,float rounding,ImDrawFlags flags);
extern  void ImDrawList_PathClear(ImDrawList* self);
extern  void ImDrawList_PathLineTo(ImDrawList* self,const ImVec2_c pos);
extern  void ImDrawList_PathLineToMergeDuplicate(ImDrawList* self,const ImVec2_c pos);
extern  void ImDrawList_PathFillConvex(ImDrawList* self,ImU32 col);
extern  void ImDrawList_PathFillConcave(ImDrawList* self,ImU32 col);
extern  void ImDrawList_PathStroke(ImDrawList* self,ImU32 col,float thickness,ImDrawFlags flags);
extern  void ImDrawList_PathArcTo(ImDrawList* self,const ImVec2_c center,float radius,float a_min,float a_max,int num_segments);
extern  void ImDrawList_PathArcToFast(ImDrawList* self,const ImVec2_c center,float radius,int a_min_of_12,int a_max_of_12);
extern  void ImDrawList_PathEllipticalArcTo(ImDrawList* self,const ImVec2_c center,const ImVec2_c radius,float rot,float a_min,float a_max,int num_segments);
extern  void ImDrawList_PathBezierCubicCurveTo(ImDrawList* self,const ImVec2_c p2,const ImVec2_c p3,const ImVec2_c p4,int num_segments);
extern  void ImDrawList_PathBezierQuadraticCurveTo(ImDrawList* self,const ImVec2_c p2,const ImVec2_c p3,int num_segments);
extern  void ImDrawList_PathRect(ImDrawList* self,const ImVec2_c rect_min,const ImVec2_c rect_max,float rounding,ImDrawFlags flags);
extern  void ImDrawList_AddCallback(ImDrawList* self,ImDrawCallback callback,void* userdata,size_t userdata_size);
extern  void ImDrawList_AddDrawCmd(ImDrawList* self);
extern  ImDrawList* ImDrawList_CloneOutput(ImDrawList* self);
extern  void ImDrawList_ChannelsSplit(ImDrawList* self,int count);
extern  void ImDrawList_ChannelsMerge(ImDrawList* self);
extern  void ImDrawList_ChannelsSetCurrent(ImDrawList* self,int n);
extern  void ImDrawList_PrimReserve(ImDrawList* self,int idx_count,int vtx_count);
extern  void ImDrawList_PrimUnreserve(ImDrawList* self,int idx_count,int vtx_count);
extern  void ImDrawList_PrimRect(ImDrawList* self,const ImVec2_c a,const ImVec2_c b,ImU32 col);
extern  void ImDrawList_PrimRectUV(ImDrawList* self,const ImVec2_c a,const ImVec2_c b,const ImVec2_c uv_a,const ImVec2_c uv_b,ImU32 col);
extern  void ImDrawList_PrimQuadUV(ImDrawList* self,const ImVec2_c a,const ImVec2_c b,const ImVec2_c c,const ImVec2_c d,const ImVec2_c uv_a,const ImVec2_c uv_b,const ImVec2_c uv_c,const ImVec2_c uv_d,ImU32 col);
extern  void ImDrawList_PrimWriteVtx(ImDrawList* self,const ImVec2_c pos,const ImVec2_c uv,ImU32 col);
extern  void ImDrawList_PrimWriteIdx(ImDrawList* self,ImDrawIdx idx);
extern  void ImDrawList_PrimVtx(ImDrawList* self,const ImVec2_c pos,const ImVec2_c uv,ImU32 col);
extern  void ImDrawList__SetDrawListSharedData(ImDrawList* self,ImDrawListSharedData* data);
extern  void ImDrawList__ResetForNewFrame(ImDrawList* self);
extern  void ImDrawList__ClearFreeMemory(ImDrawList* self);
extern  void ImDrawList__PopUnusedDrawCmd(ImDrawList* self);
extern  void ImDrawList__TryMergeDrawCmds(ImDrawList* self);
extern  void ImDrawList__OnChangedClipRect(ImDrawList* self);
extern  void ImDrawList__OnChangedTexture(ImDrawList* self);
extern  void ImDrawList__OnChangedVtxOffset(ImDrawList* self);
extern  void ImDrawList__SetTexture(ImDrawList* self,ImTextureRef_c tex_ref);
extern  int ImDrawList__CalcCircleAutoSegmentCount(ImDrawList* self,float radius);
extern  void ImDrawList__PathArcToFastEx(ImDrawList* self,const ImVec2_c center,float radius,int a_min_sample,int a_max_sample,int a_step);
extern  void ImDrawList__PathArcToN(ImDrawList* self,const ImVec2_c center,float radius,float a_min,float a_max,int num_segments);
extern  ImDrawData* ImDrawData_ImDrawData(void);
extern  void ImDrawData_destroy(ImDrawData* self);
extern  void ImDrawData_Clear(ImDrawData* self);
extern  void ImDrawData_AddDrawList(ImDrawData* self,ImDrawList* draw_list);
extern  void ImDrawData_DeIndexAllBuffers(ImDrawData* self);
extern  void ImDrawData_ScaleClipRects(ImDrawData* self,const ImVec2_c fb_scale);
extern  ImTextureData* ImTextureData_ImTextureData(void);
extern  void ImTextureData_destroy(ImTextureData* self);
extern  void ImTextureData_Create(ImTextureData* self,ImTextureFormat format,int w,int h);
extern  void ImTextureData_DestroyPixels(ImTextureData* self);
extern  void* ImTextureData_GetPixels(ImTextureData* self);
extern  void* ImTextureData_GetPixelsAt(ImTextureData* self,int x,int y);
extern  int ImTextureData_GetSizeInBytes(ImTextureData* self);
extern  int ImTextureData_GetPitch(ImTextureData* self);
extern  ImTextureRef_c ImTextureData_GetTexRef(ImTextureData* self);
extern  ImTextureID ImTextureData_GetTexID(ImTextureData* self);
extern  void ImTextureData_SetTexID(ImTextureData* self,ImTextureID tex_id);
extern  void ImTextureData_SetStatus(ImTextureData* self,ImTextureStatus status);
extern  ImFontConfig* ImFontConfig_ImFontConfig(void);
extern  void ImFontConfig_destroy(ImFontConfig* self);
extern  ImFontGlyph* ImFontGlyph_ImFontGlyph(void);
extern  void ImFontGlyph_destroy(ImFontGlyph* self);
extern  ImFontGlyphRangesBuilder* ImFontGlyphRangesBuilder_ImFontGlyphRangesBuilder(void);
extern  void ImFontGlyphRangesBuilder_destroy(ImFontGlyphRangesBuilder* self);
extern  void ImFontGlyphRangesBuilder_Clear(ImFontGlyphRangesBuilder* self);
extern  _Bool ImFontGlyphRangesBuilder_GetBit(ImFontGlyphRangesBuilder* self,size_t n);
extern  void ImFontGlyphRangesBuilder_SetBit(ImFontGlyphRangesBuilder* self,size_t n);
extern  void ImFontGlyphRangesBuilder_AddChar(ImFontGlyphRangesBuilder* self,ImWchar c);
extern  void ImFontGlyphRangesBuilder_AddText(ImFontGlyphRangesBuilder* self,const char* text,const char* text_end);
extern  void ImFontGlyphRangesBuilder_AddRanges(ImFontGlyphRangesBuilder* self,const ImWchar* ranges);
extern  void ImFontGlyphRangesBuilder_BuildRanges(ImFontGlyphRangesBuilder* self,ImVector_ImWchar* out_ranges);
extern  ImFontAtlasRect* ImFontAtlasRect_ImFontAtlasRect(void);
extern  void ImFontAtlasRect_destroy(ImFontAtlasRect* self);
extern  ImFontAtlas* ImFontAtlas_ImFontAtlas(void);
extern  void ImFontAtlas_destroy(ImFontAtlas* self);
extern  ImFont* ImFontAtlas_AddFont(ImFontAtlas* self,const ImFontConfig* font_cfg);
extern  ImFont* ImFontAtlas_AddFontDefault(ImFontAtlas* self,const ImFontConfig* font_cfg);
extern  ImFont* ImFontAtlas_AddFontDefaultVector(ImFontAtlas* self,const ImFontConfig* font_cfg);
extern  ImFont* ImFontAtlas_AddFontDefaultBitmap(ImFontAtlas* self,const ImFontConfig* font_cfg);
extern  ImFont* ImFontAtlas_AddFontFromFileTTF(ImFontAtlas* self,const char* filename,float size_pixels,const ImFontConfig* font_cfg,const ImWchar* glyph_ranges);
extern  ImFont* ImFontAtlas_AddFontFromMemoryTTF(ImFontAtlas* self,void* font_data,int font_data_size,float size_pixels,const ImFontConfig* font_cfg,const ImWchar* glyph_ranges);
extern  ImFont* ImFontAtlas_AddFontFromMemoryCompressedTTF(ImFontAtlas* self,const void* compressed_font_data,int compressed_font_data_size,float size_pixels,const ImFontConfig* font_cfg,const ImWchar* glyph_ranges);
extern  ImFont* ImFontAtlas_AddFontFromMemoryCompressedBase85TTF(ImFontAtlas* self,const char* compressed_font_data_base85,float size_pixels,const ImFontConfig* font_cfg,const ImWchar* glyph_ranges);
extern  void ImFontAtlas_RemoveFont(ImFontAtlas* self,ImFont* font);
extern  void ImFontAtlas_Clear(ImFontAtlas* self);
extern  void ImFontAtlas_ClearFonts(ImFontAtlas* self);
extern  void ImFontAtlas_CompactCache(ImFontAtlas* self);
extern  void ImFontAtlas_SetFontLoader(ImFontAtlas* self,const ImFontLoader* font_loader);
extern  void ImFontAtlas_ClearInputData(ImFontAtlas* self);
extern  void ImFontAtlas_ClearTexData(ImFontAtlas* self);
extern  const ImWchar* ImFontAtlas_GetGlyphRangesDefault(ImFontAtlas* self);
extern  ImFontAtlasRectId ImFontAtlas_AddCustomRect(ImFontAtlas* self,int width,int height,ImFontAtlasRect* out_r);
extern  void ImFontAtlas_RemoveCustomRect(ImFontAtlas* self,ImFontAtlasRectId id);
extern  _Bool ImFontAtlas_GetCustomRect(ImFontAtlas* self,ImFontAtlasRectId id,ImFontAtlasRect* out_r);
extern  ImFontBaked* ImFontBaked_ImFontBaked(void);
extern  void ImFontBaked_destroy(ImFontBaked* self);
extern  void ImFontBaked_ClearOutputData(ImFontBaked* self);
extern  ImFontGlyph* ImFontBaked_FindGlyph(ImFontBaked* self,ImWchar c);
extern  ImFontGlyph* ImFontBaked_FindGlyphNoFallback(ImFontBaked* self,ImWchar c);
extern  float ImFontBaked_GetCharAdvance(ImFontBaked* self,ImWchar c);
extern  _Bool ImFontBaked_IsGlyphLoaded(ImFontBaked* self,ImWchar c);
extern  ImFont* ImFont_ImFont(void);
extern  void ImFont_destroy(ImFont* self);
extern  _Bool ImFont_IsGlyphInFont(ImFont* self,ImWchar c);
extern  _Bool ImFont_IsLoaded(ImFont* self);
extern  const char* ImFont_GetDebugName(ImFont* self);
extern  ImFontBaked* ImFont_GetFontBaked(ImFont* self,float font_size,float density);
extern  ImVec2_c ImFont_CalcTextSizeA(ImFont* self,float size,float max_width,float wrap_width,const char* text_begin,const char* text_end,const char** out_remaining);
extern  const char* ImFont_CalcWordWrapPosition(ImFont* self,float size,const char* text,const char* text_end,float wrap_width);
extern  void ImFont_RenderChar(ImFont* self,ImDrawList* draw_list,float size,const ImVec2_c pos,ImU32 col,ImWchar c,const ImVec4* cpu_fine_clip);
extern  void ImFont_RenderText(ImFont* self,ImDrawList* draw_list,float size,const ImVec2_c pos,ImU32 col,const ImVec4_c clip_rect,const char* text_begin,const char* text_end,float wrap_width,ImDrawTextFlags flags);
extern  void ImFont_ClearOutputData(ImFont* self);
extern  void ImFont_AddRemapChar(ImFont* self,ImWchar from_codepoint,ImWchar to_codepoint);
extern  _Bool ImFont_IsGlyphRangeUnused(ImFont* self,unsigned int c_begin,unsigned int c_last);
extern  ImGuiViewport* ImGuiViewport_ImGuiViewport(void);
extern  void ImGuiViewport_destroy(ImGuiViewport* self);
extern  ImVec2_c ImGuiViewport_GetCenter(ImGuiViewport* self);
extern  ImVec2_c ImGuiViewport_GetWorkCenter(ImGuiViewport* self);
extern  ImGuiPlatformIO* ImGuiPlatformIO_ImGuiPlatformIO(void);
extern  void ImGuiPlatformIO_destroy(ImGuiPlatformIO* self);
extern  void ImGuiPlatformIO_ClearPlatformHandlers(ImGuiPlatformIO* self);
extern  void ImGuiPlatformIO_ClearRendererHandlers(ImGuiPlatformIO* self);
extern  ImGuiPlatformImeData* ImGuiPlatformImeData_ImGuiPlatformImeData(void);
extern  void ImGuiPlatformImeData_destroy(ImGuiPlatformImeData* self);
extern  ImGuiID igImHashData(const void* data,size_t data_size,ImGuiID seed);
extern  ImGuiID igImHashStr(const char* data,size_t data_size,ImGuiID seed);
extern  const char* igImHashSkipUncontributingPrefix(const char* label);
extern  void igImQsort(void* base,size_t count,size_t size_of_element,int(*compare_func)(void const*,void const*));
extern  ImU32 igImAlphaBlendColors(ImU32 col_a,ImU32 col_b);
extern  _Bool igImIsPowerOfTwo_Int(int v);
extern  _Bool igImIsPowerOfTwo_U64(ImU64 v);
extern  int igImUpperPowerOfTwo(int v);
extern  unsigned int igImCountSetBits(unsigned int v);
extern  int igImStricmp(const char* str1,const char* str2);
extern  int igImStrnicmp(const char* str1,const char* str2,size_t count);
extern  void igImStrncpy(char* dst,const char* src,size_t count);
extern  char* igImStrdup(const char* str);
extern  void* igImMemdup(const void* src,size_t size);
extern  char* igImStrdupcpy(char* dst,size_t* p_dst_size,const char* str);
extern  const char* igImStrchrRange(const char* str_begin,const char* str_end,char c);
extern  const char* igImStreolRange(const char* str,const char* str_end);
extern  const char* igImStristr(const char* haystack,const char* haystack_end,const char* needle,const char* needle_end);
extern  void igImStrTrimBlanks(char* str);
extern  const char* igImStrSkipBlank(const char* str);
extern  int igImStrlenW(const ImWchar* str);
extern  const char* igImStrbol(const char* buf_mid_line,const char* buf_begin);
extern  char igImToUpper(char c);
extern  _Bool igImCharIsBlankA(char c);
extern  _Bool igImCharIsBlankW(unsigned int c);
extern  _Bool igImCharIsXdigitA(char c);
extern  int igImFormatString(char* buf,size_t buf_size,const char* fmt,...);
extern  int igImFormatStringV(char* buf,size_t buf_size,const char* fmt,va_list args);
extern  void igImFormatStringToTempBuffer(const char** out_buf,const char** out_buf_end,const char* fmt,...);
extern  void igImFormatStringToTempBufferV(const char** out_buf,const char** out_buf_end,const char* fmt,va_list args);
extern  const char* igImParseFormatFindStart(const char* format);
extern  const char* igImParseFormatFindEnd(const char* format);
extern  const char* igImParseFormatTrimDecorations(const char* format,char* buf,size_t buf_size);
extern  void igImParseFormatSanitizeForPrinting(const char* fmt_in,char* fmt_out,size_t fmt_out_size);
extern  const char* igImParseFormatSanitizeForScanning(const char* fmt_in,char* fmt_out,size_t fmt_out_size);
extern  int igImParseFormatPrecision(const char* format,int default_value);
extern  int igImTextCharToUtf8(char out_buf[5],unsigned int c);
extern  int igImTextStrToUtf8(char* out_buf,int out_buf_size,const ImWchar* in_text,const ImWchar* in_text_end);
extern  int igImTextCharFromUtf8(unsigned int* out_char,const char* in_text,const char* in_text_end);
extern  int igImTextStrFromUtf8(ImWchar* out_buf,int out_buf_size,const char* in_text,const char* in_text_end,const char** in_remaining);
extern  int igImTextCountCharsFromUtf8(const char* in_text,const char* in_text_end);
extern  int igImTextCountUtf8BytesFromChar(const char* in_text,const char* in_text_end);
extern  int igImTextCountUtf8BytesFromStr(const ImWchar* in_text,const ImWchar* in_text_end);
extern  const char* igImTextFindPreviousUtf8Codepoint(const char* in_text_start,const char* in_p);
extern  const char* igImTextFindValidUtf8CodepointEnd(const char* in_text_start,const char* in_text_end,const char* in_p);
extern  int igImTextCountLines(const char* in_text,const char* in_text_end);
extern  ImVec2_c igImFontCalcTextSizeEx(ImFont* font,float size,float max_width,float wrap_width,const char* text_begin,const char* text_end_display,const char* text_end,const char** out_remaining,ImVec2_c* out_offset,ImDrawTextFlags flags);
extern  const char* igImFontCalcWordWrapPositionEx(ImFont* font,float size,const char* text,const char* text_end,float wrap_width,ImDrawTextFlags flags);
extern  const char* igImTextCalcWordWrapNextLineStart(const char* text,const char* text_end,ImDrawTextFlags flags);
extern  void igImTextInitClassifiers(void);
extern  void igImTextClassifierClear(ImU32* bits,unsigned int codepoint_min,unsigned int codepoint_end,ImWcharClass char_class);
extern  void igImTextClassifierSetCharClass(ImU32* bits,unsigned int codepoint_min,unsigned int codepoint_end,ImWcharClass char_class,unsigned int c);
extern  void igImTextClassifierSetCharClassFromStr(ImU32* bits,unsigned int codepoint_min,unsigned int codepoint_end,ImWcharClass char_class,const char* s);
extern  ImFileHandle igImFileOpen(const char* filename,const char* mode);
extern  _Bool igImFileClose(ImFileHandle file);
extern  ImU64 igImFileGetSize(ImFileHandle file);
extern  ImU64 igImFileRead(void* data,ImU64 size,ImU64 count,ImFileHandle file);
extern  ImU64 igImFileWrite(const void* data,ImU64 size,ImU64 count,ImFileHandle file);
extern  void* igImFileLoadToMemory(const char* filename,const char* mode,size_t* out_file_size,int padding_bytes);
extern  float igImPow_Float(float x,float y);
extern  double igImPow_double(double x,double y);
extern  float igImLog_Float(float x);
extern  double igImLog_double(double x);
extern  int igImAbs_Int(int x);
extern  float igImAbs_Float(float x);
extern  double igImAbs_double(double x);
extern  float igImSign_Float(float x);
extern  double igImSign_double(double x);
extern  float igImRsqrt_Float(float x);
extern  double igImRsqrt_double(double x);
extern  ImVec2_c igImMin(const ImVec2_c lhs,const ImVec2_c rhs);
extern  ImVec2_c igImMax(const ImVec2_c lhs,const ImVec2_c rhs);
extern  ImVec2_c igImClamp(const ImVec2_c v,const ImVec2_c mn,const ImVec2_c mx);
extern  ImVec2_c igImLerp_Vec2Float(const ImVec2_c a,const ImVec2_c b,float t);
extern  ImVec2_c igImLerp_Vec2Vec2(const ImVec2_c a,const ImVec2_c b,const ImVec2_c t);
extern  ImVec4_c igImLerp_Vec4(const ImVec4_c a,const ImVec4_c b,float t);
extern  float igImSaturate(float f);
extern  float igImLengthSqr_Vec2(const ImVec2_c lhs);
extern  float igImLengthSqr_Vec4(const ImVec4_c lhs);
extern  float igImInvLength(const ImVec2_c lhs,float fail_value);
extern  float igImTrunc_Float(float f);
extern  ImVec2_c igImTrunc_Vec2(const ImVec2_c v);
extern  float igImFloor_Float(float f);
extern  ImVec2_c igImFloor_Vec2(const ImVec2_c v);
extern  float igImTrunc64(float f);
extern  float igImRound64(float f);
extern  int igImModPositive(int a,int b);
extern  float igImDot(const ImVec2_c a,const ImVec2_c b);
extern  ImVec2_c igImRotate(const ImVec2_c v,float cos_a,float sin_a);
extern  float igImLinearSweep(float current,float target,float speed);
extern  float igImLinearRemapClamp(float s0,float s1,float d0,float d1,float x);
extern  ImVec2_c igImMul(const ImVec2_c lhs,const ImVec2_c rhs);
extern  _Bool igImIsFloatAboveGuaranteedIntegerPrecision(float f);
extern  float igImExponentialMovingAverage(float avg,float sample,int n);
extern  ImVec2_c igImBezierCubicCalc(const ImVec2_c p1,const ImVec2_c p2,const ImVec2_c p3,const ImVec2_c p4,float t);
extern  ImVec2_c igImBezierCubicClosestPoint(const ImVec2_c p1,const ImVec2_c p2,const ImVec2_c p3,const ImVec2_c p4,const ImVec2_c p,int num_segments);
extern  ImVec2_c igImBezierCubicClosestPointCasteljau(const ImVec2_c p1,const ImVec2_c p2,const ImVec2_c p3,const ImVec2_c p4,const ImVec2_c p,float tess_tol);
extern  ImVec2_c igImBezierQuadraticCalc(const ImVec2_c p1,const ImVec2_c p2,const ImVec2_c p3,float t);
extern  ImVec2_c igImLineClosestPoint(const ImVec2_c a,const ImVec2_c b,const ImVec2_c p);
extern  _Bool igImTriangleContainsPoint(const ImVec2_c a,const ImVec2_c b,const ImVec2_c c,const ImVec2_c p);
extern  ImVec2_c igImTriangleClosestPoint(const ImVec2_c a,const ImVec2_c b,const ImVec2_c c,const ImVec2_c p);
extern  void igImTriangleBarycentricCoords(const ImVec2_c a,const ImVec2_c b,const ImVec2_c c,const ImVec2_c p,float* out_u,float* out_v,float* out_w);
extern  float igImTriangleArea(const ImVec2_c a,const ImVec2_c b,const ImVec2_c c);
extern  _Bool igImTriangleIsClockwise(const ImVec2_c a,const ImVec2_c b,const ImVec2_c c);
extern  ImVec1* ImVec1_ImVec1_Nil(void);
extern  void ImVec1_destroy(ImVec1* self);
extern  ImVec1* ImVec1_ImVec1_Float(float _x);
extern  ImVec2i* ImVec2i_ImVec2i_Nil(void);
extern  void ImVec2i_destroy(ImVec2i* self);
extern  ImVec2i* ImVec2i_ImVec2i_Int(int _x,int _y);
extern  ImVec2ih* ImVec2ih_ImVec2ih_Nil(void);
extern  void ImVec2ih_destroy(ImVec2ih* self);
extern  ImVec2ih* ImVec2ih_ImVec2ih_short(short _x,short _y);
extern  ImVec2ih* ImVec2ih_ImVec2ih_Vec2(const ImVec2_c rhs);
extern  ImRect* ImRect_ImRect_Nil(void);
extern  void ImRect_destroy(ImRect* self);
extern  ImRect* ImRect_ImRect_Vec2(const ImVec2_c min,const ImVec2_c max);
extern  ImRect* ImRect_ImRect_Vec4(const ImVec4_c v);
extern  ImRect* ImRect_ImRect_Float(float x1,float y1,float x2,float y2);
extern  ImVec2_c ImRect_GetCenter(ImRect* self);
extern  ImVec2_c ImRect_GetSize(ImRect* self);
extern  float ImRect_GetWidth(ImRect* self);
extern  float ImRect_GetHeight(ImRect* self);
extern  float ImRect_GetArea(ImRect* self);
extern  ImVec2_c ImRect_GetTL(ImRect* self);
extern  ImVec2_c ImRect_GetTR(ImRect* self);
extern  ImVec2_c ImRect_GetBL(ImRect* self);
extern  ImVec2_c ImRect_GetBR(ImRect* self);
extern  _Bool ImRect_Contains_Vec2(ImRect* self,const ImVec2_c p);
extern  _Bool ImRect_Contains_Rect(ImRect* self,const ImRect_c r);
extern  _Bool ImRect_ContainsWithPad(ImRect* self,const ImVec2_c p,const ImVec2_c pad);
extern  _Bool ImRect_Overlaps(ImRect* self,const ImRect_c r);
extern  void ImRect_Add_Vec2(ImRect* self,const ImVec2_c p);
extern  void ImRect_Add_Rect(ImRect* self,const ImRect_c r);
extern  void ImRect_AddX(ImRect* self,float x);
extern  void ImRect_AddY(ImRect* self,float y);
extern  void ImRect_Expand_Float(ImRect* self,const float amount);
extern  void ImRect_Expand_Vec2(ImRect* self,const ImVec2_c amount);
extern  void ImRect_Translate(ImRect* self,const ImVec2_c d);
extern  void ImRect_TranslateX(ImRect* self,float dx);
extern  void ImRect_TranslateY(ImRect* self,float dy);
extern  void ImRect_ClipWith(ImRect* self,const ImRect_c r);
extern  void ImRect_ClipWithFull(ImRect* self,const ImRect_c r);
extern  _Bool ImRect_IsInverted(ImRect* self);
extern  ImVec4_c ImRect_ToVec4(ImRect* self);
extern  const ImVec4_c* ImRect_AsVec4(ImRect* self);
extern  size_t igImBitArrayGetStorageSizeInBytes(int bitcount);
extern  void igImBitArrayClearAllBits(ImU32* arr,int bitcount);
extern  _Bool igImBitArrayTestBit(const ImU32* arr,int n);
extern  void igImBitArrayClearBit(ImU32* arr,int n);
extern  void igImBitArraySetBit(ImU32* arr,int n);
extern  void igImBitArraySetBitRange(ImU32* arr,int n,int n2);
extern  void ImBitVector_Create(ImBitVector* self,int sz);
extern  void ImBitVector_Clear(ImBitVector* self);
extern  _Bool ImBitVector_TestBit(ImBitVector* self,int n);
extern  void ImBitVector_SetBit(ImBitVector* self,int n);
extern  void ImBitVector_ClearBit(ImBitVector* self,int n);
extern  void ImGuiTextIndex_clear(ImGuiTextIndex* self);
extern  int ImGuiTextIndex_size(ImGuiTextIndex* self);
extern  const char* ImGuiTextIndex_get_line_begin(ImGuiTextIndex* self,const char* base,int n);
extern  const char* ImGuiTextIndex_get_line_end(ImGuiTextIndex* self,const char* base,int n);
extern  void ImGuiTextIndex_append(ImGuiTextIndex* self,const char* base,int old_size,int new_size);
extern  ImGuiStoragePair* igImLowerBound(ImGuiStoragePair* in_begin,ImGuiStoragePair* in_end,ImGuiID key);
extern  ImDrawListSharedData* ImDrawListSharedData_ImDrawListSharedData(void);
extern  void ImDrawListSharedData_destroy(ImDrawListSharedData* self);
extern  void ImDrawListSharedData_SetCircleTessellationMaxError(ImDrawListSharedData* self,float max_error);
extern  ImDrawDataBuilder* ImDrawDataBuilder_ImDrawDataBuilder(void);
extern  void ImDrawDataBuilder_destroy(ImDrawDataBuilder* self);
extern  void* ImGuiStyleVarInfo_GetVarPtr(ImGuiStyleVarInfo* self,void* parent);
extern  ImGuiStyleMod* ImGuiStyleMod_ImGuiStyleMod_Int(ImGuiStyleVar idx,int v);
extern  void ImGuiStyleMod_destroy(ImGuiStyleMod* self);
extern  ImGuiStyleMod* ImGuiStyleMod_ImGuiStyleMod_Float(ImGuiStyleVar idx,float v);
extern  ImGuiStyleMod* ImGuiStyleMod_ImGuiStyleMod_Vec2(ImGuiStyleVar idx,ImVec2_c v);
extern  ImGuiComboPreviewData* ImGuiComboPreviewData_ImGuiComboPreviewData(void);
extern  void ImGuiComboPreviewData_destroy(ImGuiComboPreviewData* self);
extern  ImGuiMenuColumns* ImGuiMenuColumns_ImGuiMenuColumns(void);
extern  void ImGuiMenuColumns_destroy(ImGuiMenuColumns* self);
extern  void ImGuiMenuColumns_Update(ImGuiMenuColumns* self,float spacing,_Bool window_reappearing);
extern  float ImGuiMenuColumns_DeclColumns(ImGuiMenuColumns* self,float w_icon,float w_label,float w_shortcut,float w_mark);
extern  void ImGuiMenuColumns_CalcNextTotalWidth(ImGuiMenuColumns* self,_Bool update_offsets);
extern  ImGuiInputTextDeactivatedState* ImGuiInputTextDeactivatedState_ImGuiInputTextDeactivatedState(void);
extern  void ImGuiInputTextDeactivatedState_destroy(ImGuiInputTextDeactivatedState* self);
extern  void ImGuiInputTextDeactivatedState_ClearFreeMemory(ImGuiInputTextDeactivatedState* self);
extern  ImGuiInputTextState* ImGuiInputTextState_ImGuiInputTextState(void);
extern  void ImGuiInputTextState_destroy(ImGuiInputTextState* self);
extern  void ImGuiInputTextState_ClearText(ImGuiInputTextState* self);
extern  void ImGuiInputTextState_ClearFreeMemory(ImGuiInputTextState* self);
extern  void ImGuiInputTextState_OnKeyPressed(ImGuiInputTextState* self,int key);
extern  void ImGuiInputTextState_OnCharPressed(ImGuiInputTextState* self,unsigned int c);
extern  float ImGuiInputTextState_GetPreferredOffsetX(ImGuiInputTextState* self);
extern  const char* ImGuiInputTextState_GetText(ImGuiInputTextState* self);
extern  void ImGuiInputTextState_CursorAnimReset(ImGuiInputTextState* self);
extern  void ImGuiInputTextState_CursorClamp(ImGuiInputTextState* self);
extern  _Bool ImGuiInputTextState_HasSelection(ImGuiInputTextState* self);
extern  void ImGuiInputTextState_ClearSelection(ImGuiInputTextState* self);
extern  int ImGuiInputTextState_GetCursorPos(ImGuiInputTextState* self);
extern  int ImGuiInputTextState_GetSelectionStart(ImGuiInputTextState* self);
extern  int ImGuiInputTextState_GetSelectionEnd(ImGuiInputTextState* self);
extern  void ImGuiInputTextState_SetSelection(ImGuiInputTextState* self,int start,int end);
extern  void ImGuiInputTextState_SelectAll(ImGuiInputTextState* self);
extern  void ImGuiInputTextState_ReloadUserBufAndSelectAll(ImGuiInputTextState* self);
extern  void ImGuiInputTextState_ReloadUserBufAndKeepSelection(ImGuiInputTextState* self);
extern  void ImGuiInputTextState_ReloadUserBufAndMoveToEnd(ImGuiInputTextState* self);
extern  ImGuiNextWindowData* ImGuiNextWindowData_ImGuiNextWindowData(void);
extern  void ImGuiNextWindowData_destroy(ImGuiNextWindowData* self);
extern  void ImGuiNextWindowData_ClearFlags(ImGuiNextWindowData* self);
extern  ImGuiNextItemData* ImGuiNextItemData_ImGuiNextItemData(void);
extern  void ImGuiNextItemData_destroy(ImGuiNextItemData* self);
extern  void ImGuiNextItemData_ClearFlags(ImGuiNextItemData* self);
extern  ImGuiLastItemData* ImGuiLastItemData_ImGuiLastItemData(void);
extern  void ImGuiLastItemData_destroy(ImGuiLastItemData* self);
extern  ImGuiErrorRecoveryState* ImGuiErrorRecoveryState_ImGuiErrorRecoveryState(void);
extern  void ImGuiErrorRecoveryState_destroy(ImGuiErrorRecoveryState* self);
extern  ImGuiPtrOrIndex* ImGuiPtrOrIndex_ImGuiPtrOrIndex_Ptr(void* ptr);
extern  void ImGuiPtrOrIndex_destroy(ImGuiPtrOrIndex* self);
extern  ImGuiPtrOrIndex* ImGuiPtrOrIndex_ImGuiPtrOrIndex_Int(int index);
extern  ImGuiPopupData* ImGuiPopupData_ImGuiPopupData(void);
extern  void ImGuiPopupData_destroy(ImGuiPopupData* self);
extern  ImGuiInputEvent* ImGuiInputEvent_ImGuiInputEvent(void);
extern  void ImGuiInputEvent_destroy(ImGuiInputEvent* self);
extern  ImGuiKeyRoutingData* ImGuiKeyRoutingData_ImGuiKeyRoutingData(void);
extern  void ImGuiKeyRoutingData_destroy(ImGuiKeyRoutingData* self);
extern  ImGuiKeyRoutingTable* ImGuiKeyRoutingTable_ImGuiKeyRoutingTable(void);
extern  void ImGuiKeyRoutingTable_destroy(ImGuiKeyRoutingTable* self);
extern  void ImGuiKeyRoutingTable_Clear(ImGuiKeyRoutingTable* self);
extern  ImGuiKeyOwnerData* ImGuiKeyOwnerData_ImGuiKeyOwnerData(void);
extern  void ImGuiKeyOwnerData_destroy(ImGuiKeyOwnerData* self);
extern  ImGuiListClipperRange ImGuiListClipperRange_FromIndices(int min,int max);
extern  ImGuiListClipperRange ImGuiListClipperRange_FromPositions(float y1,float y2,int off_min,int off_max);
extern  ImGuiListClipperData* ImGuiListClipperData_ImGuiListClipperData(void);
extern  void ImGuiListClipperData_destroy(ImGuiListClipperData* self);
extern  void ImGuiListClipperData_Reset(ImGuiListClipperData* self,ImGuiListClipper* clipper);
extern  ImGuiNavItemData* ImGuiNavItemData_ImGuiNavItemData(void);
extern  void ImGuiNavItemData_destroy(ImGuiNavItemData* self);
extern  void ImGuiNavItemData_Clear(ImGuiNavItemData* self);
extern  ImGuiTypingSelectState* ImGuiTypingSelectState_ImGuiTypingSelectState(void);
extern  void ImGuiTypingSelectState_destroy(ImGuiTypingSelectState* self);
extern  void ImGuiTypingSelectState_Clear(ImGuiTypingSelectState* self);
extern  ImGuiOldColumnData* ImGuiOldColumnData_ImGuiOldColumnData(void);
extern  void ImGuiOldColumnData_destroy(ImGuiOldColumnData* self);
extern  ImGuiOldColumns* ImGuiOldColumns_ImGuiOldColumns(void);
extern  void ImGuiOldColumns_destroy(ImGuiOldColumns* self);
extern  ImGuiBoxSelectState* ImGuiBoxSelectState_ImGuiBoxSelectState(void);
extern  void ImGuiBoxSelectState_destroy(ImGuiBoxSelectState* self);
extern  ImGuiMultiSelectTempData* ImGuiMultiSelectTempData_ImGuiMultiSelectTempData(void);
extern  void ImGuiMultiSelectTempData_destroy(ImGuiMultiSelectTempData* self);
extern  void ImGuiMultiSelectTempData_Clear(ImGuiMultiSelectTempData* self);
extern  void ImGuiMultiSelectTempData_ClearIO(ImGuiMultiSelectTempData* self);
extern  ImGuiMultiSelectState* ImGuiMultiSelectState_ImGuiMultiSelectState(void);
extern  void ImGuiMultiSelectState_destroy(ImGuiMultiSelectState* self);
extern  ImGuiViewportP* ImGuiViewportP_ImGuiViewportP(void);
extern  void ImGuiViewportP_destroy(ImGuiViewportP* self);
extern  ImVec2_c ImGuiViewportP_CalcWorkRectPos(ImGuiViewportP* self,const ImVec2_c inset_min);
extern  ImVec2_c ImGuiViewportP_CalcWorkRectSize(ImGuiViewportP* self,const ImVec2_c inset_min,const ImVec2_c inset_max);
extern  void ImGuiViewportP_UpdateWorkRect(ImGuiViewportP* self);
extern  ImRect_c ImGuiViewportP_GetMainRect(ImGuiViewportP* self);
extern  ImRect_c ImGuiViewportP_GetWorkRect(ImGuiViewportP* self);
extern  ImRect_c ImGuiViewportP_GetBuildWorkRect(ImGuiViewportP* self);
extern  ImGuiWindowSettings* ImGuiWindowSettings_ImGuiWindowSettings(void);
extern  void ImGuiWindowSettings_destroy(ImGuiWindowSettings* self);
extern  char* ImGuiWindowSettings_GetName(ImGuiWindowSettings* self);
extern  ImGuiSettingsHandler* ImGuiSettingsHandler_ImGuiSettingsHandler(void);
extern  void ImGuiSettingsHandler_destroy(ImGuiSettingsHandler* self);
extern  ImGuiDebugAllocInfo* ImGuiDebugAllocInfo_ImGuiDebugAllocInfo(void);
extern  void ImGuiDebugAllocInfo_destroy(ImGuiDebugAllocInfo* self);
extern  ImGuiStackLevelInfo* ImGuiStackLevelInfo_ImGuiStackLevelInfo(void);
extern  void ImGuiStackLevelInfo_destroy(ImGuiStackLevelInfo* self);
extern  ImGuiDebugItemPathQuery* ImGuiDebugItemPathQuery_ImGuiDebugItemPathQuery(void);
extern  void ImGuiDebugItemPathQuery_destroy(ImGuiDebugItemPathQuery* self);
extern  ImGuiIDStackTool* ImGuiIDStackTool_ImGuiIDStackTool(void);
extern  void ImGuiIDStackTool_destroy(ImGuiIDStackTool* self);
extern  ImGuiContextHook* ImGuiContextHook_ImGuiContextHook(void);
extern  void ImGuiContextHook_destroy(ImGuiContextHook* self);
extern  ImGuiContext* ImGuiContext_ImGuiContext(ImFontAtlas* shared_font_atlas);
extern  void ImGuiContext_destroy(ImGuiContext* self);
extern  ImGuiWindow* ImGuiWindow_ImGuiWindow(ImGuiContext* context,const char* name);
extern  void ImGuiWindow_destroy(ImGuiWindow* self);
extern  ImGuiID ImGuiWindow_GetID_Str(ImGuiWindow* self,const char* str,const char* str_end);
extern  ImGuiID ImGuiWindow_GetID_Ptr(ImGuiWindow* self,const void* ptr);
extern  ImGuiID ImGuiWindow_GetID_Int(ImGuiWindow* self,int n);
extern  ImGuiID ImGuiWindow_GetIDFromPos(ImGuiWindow* self,const ImVec2_c p_abs);
extern  ImGuiID ImGuiWindow_GetIDFromRectangle(ImGuiWindow* self,const ImRect_c r_abs);
extern  ImRect_c ImGuiWindow_Rect(ImGuiWindow* self);
extern  ImRect_c ImGuiWindow_TitleBarRect(ImGuiWindow* self);
extern  ImRect_c ImGuiWindow_MenuBarRect(ImGuiWindow* self);
extern  ImGuiTabItem* ImGuiTabItem_ImGuiTabItem(void);
extern  void ImGuiTabItem_destroy(ImGuiTabItem* self);
extern  ImGuiTabBar* ImGuiTabBar_ImGuiTabBar(void);
extern  void ImGuiTabBar_destroy(ImGuiTabBar* self);
extern  ImGuiTableColumn* ImGuiTableColumn_ImGuiTableColumn(void);
extern  void ImGuiTableColumn_destroy(ImGuiTableColumn* self);
extern  ImGuiTableInstanceData* ImGuiTableInstanceData_ImGuiTableInstanceData(void);
extern  void ImGuiTableInstanceData_destroy(ImGuiTableInstanceData* self);
extern  ImGuiTable* ImGuiTable_ImGuiTable(void);
extern  void ImGuiTable_destroy(ImGuiTable* self);
extern  ImGuiTableTempData* ImGuiTableTempData_ImGuiTableTempData(void);
extern  void ImGuiTableTempData_destroy(ImGuiTableTempData* self);
extern  ImGuiTableColumnSettings* ImGuiTableColumnSettings_ImGuiTableColumnSettings(void);
extern  void ImGuiTableColumnSettings_destroy(ImGuiTableColumnSettings* self);
extern  ImGuiTableSettings* ImGuiTableSettings_ImGuiTableSettings(void);
extern  void ImGuiTableSettings_destroy(ImGuiTableSettings* self);
extern  ImGuiTableColumnSettings* ImGuiTableSettings_GetColumnSettings(ImGuiTableSettings* self);
extern  ImGuiIO* igGetIO_ContextPtr(ImGuiContext* ctx);
extern  ImGuiPlatformIO* igGetPlatformIO_ContextPtr(ImGuiContext* ctx);
extern  float igGetScale(void);
extern  ImGuiWindow* igGetCurrentWindowRead(void);
extern  ImGuiWindow* igGetCurrentWindow(void);
extern  ImGuiWindow* igFindWindowByID(ImGuiID id);
extern  ImGuiWindow* igFindWindowByName(const char* name);
extern  void igUpdateWindowParentAndRootLinks(ImGuiWindow* window,ImGuiWindowFlags flags,ImGuiWindow* parent_window);
extern  void igUpdateWindowSkipRefresh(ImGuiWindow* window);
extern  ImVec2_c igCalcWindowNextAutoFitSize(ImGuiWindow* window);
extern  _Bool igIsWindowChildOf(ImGuiWindow* window,ImGuiWindow* potential_parent,_Bool popup_hierarchy);
extern  _Bool igIsWindowInBeginStack(ImGuiWindow* window);
extern  _Bool igIsWindowWithinBeginStackOf(ImGuiWindow* window,ImGuiWindow* potential_parent);
extern  _Bool igIsWindowAbove(ImGuiWindow* potential_above,ImGuiWindow* potential_below);
extern  _Bool igIsWindowNavFocusable(ImGuiWindow* window);
extern  void igSetWindowPos_WindowPtr(ImGuiWindow* window,const ImVec2_c pos,ImGuiCond cond);
extern  void igSetWindowSize_WindowPtr(ImGuiWindow* window,const ImVec2_c size,ImGuiCond cond);
extern  void igSetWindowCollapsed_WindowPtr(ImGuiWindow* window,_Bool collapsed,ImGuiCond cond);
extern  void igSetWindowHitTestHole(ImGuiWindow* window,const ImVec2_c pos,const ImVec2_c size);
extern  void igSetWindowHiddenAndSkipItemsForCurrentFrame(ImGuiWindow* window);
extern  void igSetWindowParentWindowForFocusRoute(ImGuiWindow* window,ImGuiWindow* parent_window);
extern  ImRect_c igWindowRectAbsToRel(ImGuiWindow* window,const ImRect_c r);
extern  ImRect_c igWindowRectRelToAbs(ImGuiWindow* window,const ImRect_c r);
extern  ImVec2_c igWindowPosAbsToRel(ImGuiWindow* window,const ImVec2_c p);
extern  ImVec2_c igWindowPosRelToAbs(ImGuiWindow* window,const ImVec2_c p);
extern  void igFocusWindow(ImGuiWindow* window,ImGuiFocusRequestFlags flags);
extern  void igFocusTopMostWindowUnderOne(ImGuiWindow* under_this_window,ImGuiWindow* ignore_window,ImGuiViewport* filter_viewport,ImGuiFocusRequestFlags flags);
extern  void igBringWindowToFocusFront(ImGuiWindow* window);
extern  void igBringWindowToDisplayFront(ImGuiWindow* window);
extern  void igBringWindowToDisplayBack(ImGuiWindow* window);
extern  void igBringWindowToDisplayBehind(ImGuiWindow* window,ImGuiWindow* above_window);
extern  int igFindWindowDisplayIndex(ImGuiWindow* window);
extern  ImGuiWindow* igFindBottomMostVisibleWindowWithinBeginStack(ImGuiWindow* window);
extern  void igSetNextWindowRefreshPolicy(ImGuiWindowRefreshFlags flags);
extern  void igRegisterUserTexture(ImTextureData* tex);
extern  void igUnregisterUserTexture(ImTextureData* tex);
extern  void igRegisterFontAtlas(ImFontAtlas* atlas);
extern  void igUnregisterFontAtlas(ImFontAtlas* atlas);
extern  void igSetCurrentFont(ImFont* font,float font_size_before_scaling,float font_size_after_scaling);
extern  void igUpdateCurrentFontSize(float restore_font_size_after_scaling);
extern  void igSetFontRasterizerDensity(float rasterizer_density);
extern  float igGetFontRasterizerDensity(void);
extern  float igGetRoundedFontSize(float size);
extern  ImFont* igGetDefaultFont(void);
extern  void igPushPasswordFont(void);
extern  void igPopPasswordFont(void);
extern  ImDrawList* igGetForegroundDrawList_WindowPtr(ImGuiWindow* window);
extern  ImDrawList* igGetBackgroundDrawList_ViewportPtr(ImGuiViewport* viewport);
extern  ImDrawList* igGetForegroundDrawList_ViewportPtr(ImGuiViewport* viewport);
extern  void igAddDrawListToDrawDataEx(ImDrawData* draw_data,ImVector_ImDrawListPtr* out_list,ImDrawList* draw_list);
extern  void igInitialize(void);
extern  void igShutdown(void);
extern  void igSetContextName(ImGuiContext* ctx,const char* name);
extern  ImGuiID igAddContextHook(ImGuiContext* ctx,const ImGuiContextHook* hook);
extern  void igRemoveContextHook(ImGuiContext* ctx,ImGuiID hook_to_remove);
extern  void igCallContextHooks(ImGuiContext* ctx,ImGuiContextHookType type);
extern  void igUpdateInputEvents(_Bool trickle_fast_inputs);
extern  void igUpdateHoveredWindowAndCaptureFlags(const ImVec2_c mouse_pos);
extern  void igFindHoveredWindowEx(const ImVec2_c pos,_Bool find_first_and_in_any_viewport,ImGuiWindow** out_hovered_window,ImGuiWindow** out_hovered_window_under_moving_window);
extern  void igStartMouseMovingWindow(ImGuiWindow* window);
extern  void igStopMouseMovingWindow(void);
extern  void igUpdateMouseMovingWindowNewFrame(void);
extern  void igUpdateMouseMovingWindowEndFrame(void);
extern  ImGuiViewport* igGetWindowViewport(void);
extern  void igScaleWindowsInViewport(ImGuiViewportP* viewport,float scale);
extern  void igSetWindowViewport(ImGuiWindow* window,ImGuiViewportP* viewport);
extern  void igMarkIniSettingsDirty_Nil(void);
extern  void igMarkIniSettingsDirty_WindowPtr(ImGuiWindow* window);
extern  void igClearIniSettings(void);
extern  void igAddSettingsHandler(const ImGuiSettingsHandler* handler);
extern  void igRemoveSettingsHandler(const char* type_name);
extern  ImGuiSettingsHandler* igFindSettingsHandler(const char* type_name);
extern  ImGuiWindowSettings* igCreateNewWindowSettings(const char* name);
extern  ImGuiWindowSettings* igFindWindowSettingsByID(ImGuiID id);
extern  ImGuiWindowSettings* igFindWindowSettingsByWindow(ImGuiWindow* window);
extern  void igClearWindowSettings(const char* name);
extern  void igLocalizeRegisterEntries(const ImGuiLocEntry* entries,int count);
extern  const char* igLocalizeGetMsg(ImGuiLocKey key);
extern  void igSetScrollX_WindowPtr(ImGuiWindow* window,float scroll_x);
extern  void igSetScrollY_WindowPtr(ImGuiWindow* window,float scroll_y);
extern  void igSetScrollFromPosX_WindowPtr(ImGuiWindow* window,float local_x,float center_x_ratio);
extern  void igSetScrollFromPosY_WindowPtr(ImGuiWindow* window,float local_y,float center_y_ratio);
extern  void igScrollToItem(ImGuiScrollFlags flags);
extern  void igScrollToRect(ImGuiWindow* window,const ImRect_c rect,ImGuiScrollFlags flags);
extern  ImVec2_c igScrollToRectEx(ImGuiWindow* window,const ImRect_c rect,ImGuiScrollFlags flags);
extern  void igScrollToBringRectIntoView(ImGuiWindow* window,const ImRect_c rect);
extern  ImGuiItemStatusFlags igGetItemStatusFlags(void);
extern  ImGuiID igGetActiveID(void);
extern  ImGuiID igGetFocusID(void);
extern  void igSetActiveID(ImGuiID id,ImGuiWindow* window);
extern  void igSetFocusID(ImGuiID id,ImGuiWindow* window);
extern  void igClearActiveID(void);
extern  ImGuiID igGetHoveredID(void);
extern  void igSetHoveredID(ImGuiID id);
extern  void igKeepAliveID(ImGuiID id);
extern  void igMarkItemEdited(ImGuiID id);
extern  void igPushOverrideID(ImGuiID id);
extern  ImGuiID igGetIDWithSeed_Str(const char* str_id_begin,const char* str_id_end,ImGuiID seed);
extern  ImGuiID igGetIDWithSeed_Int(int n,ImGuiID seed);
extern  void igItemSize_Vec2(const ImVec2_c size,float text_baseline_y);
extern  void igItemSize_Rect(const ImRect_c bb,float text_baseline_y);
extern  _Bool igItemAdd(const ImRect_c bb,ImGuiID id,const ImRect* nav_bb,ImGuiItemFlags extra_flags);
extern  _Bool igItemHoverable(const ImRect_c bb,ImGuiID id,ImGuiItemFlags item_flags);
extern  _Bool igIsWindowContentHoverable(ImGuiWindow* window,ImGuiHoveredFlags flags);
extern  _Bool igIsClippedEx(const ImRect_c bb,ImGuiID id);
extern  void igSetLastItemData(ImGuiID item_id,ImGuiItemFlags item_flags,ImGuiItemStatusFlags status_flags,const ImRect_c item_rect);
extern  ImVec2_c igCalcItemSize(ImVec2_c size,float default_w,float default_h);
extern  float igCalcWrapWidthForPos(const ImVec2_c pos,float wrap_pos_x);
extern  void igPushMultiItemsWidths(int components,float width_full);
extern  void igShrinkWidths(ImGuiShrinkWidthItem* items,int count,float width_excess,float width_min);
extern  void igCalcClipRectVisibleItemsY(const ImRect_c clip_rect,const ImVec2_c pos,float items_height,int* out_visible_start,int* out_visible_end);
extern  const ImGuiStyleVarInfo* igGetStyleVarInfo(ImGuiStyleVar idx);
extern  void igBeginDisabledOverrideReenable(void);
extern  void igEndDisabledOverrideReenable(void);
extern  void igLogBegin(ImGuiLogFlags flags,int auto_open_depth);
extern  void igLogToBuffer(int auto_open_depth);
extern  void igLogRenderedText(const ImVec2_c* ref_pos,const char* text,const char* text_end);
extern  void igLogSetNextTextDecoration(const char* prefix,const char* suffix);
extern  _Bool igBeginChildEx(const char* name,ImGuiID id,const ImVec2_c size_arg,ImGuiChildFlags child_flags,ImGuiWindowFlags window_flags);
extern  ImGuiWindow* igFindFrontMostVisibleChildWindow(ImGuiWindow* window);
extern  _Bool igBeginPopupEx(ImGuiID id,ImGuiWindowFlags extra_window_flags);
extern  _Bool igBeginPopupMenuEx(ImGuiID id,const char* label,ImGuiWindowFlags extra_window_flags);
extern  void igOpenPopupEx(ImGuiID id,ImGuiPopupFlags popup_flags);
extern  void igClosePopupToLevel(int remaining,_Bool restore_focus_to_window_under_popup);
extern  void igClosePopupsOverWindow(ImGuiWindow* ref_window,_Bool restore_focus_to_window_under_popup);
extern  void igClosePopupsExceptModals(void);
extern  _Bool igIsPopupOpen_ID(ImGuiID id,ImGuiPopupFlags popup_flags);
extern  ImRect_c igGetPopupAllowedExtentRect(ImGuiWindow* window);
extern  ImGuiWindow* igGetTopMostPopupModal(void);
extern  ImGuiWindow* igGetTopMostAndVisiblePopupModal(void);
extern  ImGuiWindow* igFindBlockingModal(ImGuiWindow* window);
extern  ImVec2_c igFindBestWindowPosForPopup(ImGuiWindow* window);
extern  ImVec2_c igFindBestWindowPosForPopupEx(const ImVec2_c ref_pos,const ImVec2_c size,ImGuiDir* last_dir,const ImRect_c r_outer,const ImRect_c r_avoid,ImGuiPopupPositionPolicy policy);
extern  ImGuiMouseButton igGetMouseButtonFromPopupFlags(ImGuiPopupFlags flags);
extern  _Bool igIsPopupOpenRequestForItem(ImGuiPopupFlags flags,ImGuiID id);
extern  _Bool igIsPopupOpenRequestForWindow(ImGuiPopupFlags flags);
extern  _Bool igBeginTooltipEx(ImGuiTooltipFlags tooltip_flags,ImGuiWindowFlags extra_window_flags);
extern  _Bool igBeginTooltipHidden(void);
extern  _Bool igBeginViewportSideBar(const char* name,ImGuiViewport* viewport,ImGuiDir dir,float size,ImGuiWindowFlags window_flags);
extern  _Bool igBeginMenuEx(const char* label,const char* icon,_Bool enabled);
extern  _Bool igMenuItemEx(const char* label,const char* icon,const char* shortcut,_Bool selected,_Bool enabled);
extern  _Bool igBeginComboPopup(ImGuiID popup_id,const ImRect_c bb,ImGuiComboFlags flags);
extern  _Bool igBeginComboPreview(void);
extern  void igEndComboPreview(void);
extern  void igNavInitWindow(ImGuiWindow* window,_Bool force_reinit);
extern  void igNavInitRequestApplyResult(void);
extern  _Bool igNavMoveRequestButNoResultYet(void);
extern  void igNavMoveRequestSubmit(ImGuiDir move_dir,ImGuiDir clip_dir,ImGuiNavMoveFlags move_flags,ImGuiScrollFlags scroll_flags);
extern  void igNavMoveRequestForward(ImGuiDir move_dir,ImGuiDir clip_dir,ImGuiNavMoveFlags move_flags,ImGuiScrollFlags scroll_flags);
extern  void igNavMoveRequestResolveWithLastItem(ImGuiNavItemData* result);
extern  void igNavMoveRequestResolveWithPastTreeNode(ImGuiNavItemData* result,const ImGuiTreeNodeStackData* tree_node_data);
extern  void igNavMoveRequestCancel(void);
extern  void igNavMoveRequestApplyResult(void);
extern  void igNavMoveRequestTryWrapping(ImGuiWindow* window,ImGuiNavMoveFlags move_flags);
extern  void igNavHighlightActivated(ImGuiID id);
extern  void igNavClearPreferredPosForAxis(ImGuiAxis axis);
extern  void igSetNavCursorVisibleAfterMove(void);
extern  void igNavUpdateCurrentWindowIsScrollPushableX(void);
extern  void igSetNavWindow(ImGuiWindow* window);
extern  void igSetNavID(ImGuiID id,ImGuiNavLayer nav_layer,ImGuiID focus_scope_id,const ImRect_c rect_rel);
extern  void igSetNavFocusScope(ImGuiID focus_scope_id);
extern  void igFocusItem(void);
extern  void igActivateItemByID(ImGuiID id);
extern  _Bool igIsNamedKey(ImGuiKey key);
extern  _Bool igIsNamedKeyOrMod(ImGuiKey key);
extern  _Bool igIsLegacyKey(ImGuiKey key);
extern  _Bool igIsKeyboardKey(ImGuiKey key);
extern  _Bool igIsGamepadKey(ImGuiKey key);
extern  _Bool igIsMouseKey(ImGuiKey key);
extern  _Bool igIsAliasKey(ImGuiKey key);
extern  _Bool igIsLRModKey(ImGuiKey key);
extern  ImGuiKeyChord igFixupKeyChord(ImGuiKeyChord key_chord);
extern  ImGuiKey igConvertSingleModFlagToKey(ImGuiKey key);
extern  ImGuiKeyData* igGetKeyData_ContextPtr(ImGuiContext* ctx,ImGuiKey key);
extern  ImGuiKeyData* igGetKeyData_Key(ImGuiKey key);
extern  const char* igGetKeyChordName(ImGuiKeyChord key_chord);
extern  ImGuiKey igMouseButtonToKey(ImGuiMouseButton button);
extern  _Bool igIsMouseDragPastThreshold(ImGuiMouseButton button,float lock_threshold);
extern  ImVec2_c igGetKeyMagnitude2d(ImGuiKey key_left,ImGuiKey key_right,ImGuiKey key_up,ImGuiKey key_down);
extern  float igGetNavTweakPressedAmount(ImGuiAxis axis);
extern  int igCalcTypematicRepeatAmount(float t0,float t1,float repeat_delay,float repeat_rate);
extern  void igGetTypematicRepeatRate(ImGuiInputFlags flags,float* repeat_delay,float* repeat_rate);
extern  void igTeleportMousePos(const ImVec2_c pos);
extern  void igSetActiveIdUsingAllKeyboardKeys(void);
extern  _Bool igIsActiveIdUsingNavDir(ImGuiDir dir);
extern  ImGuiID igGetKeyOwner(ImGuiKey key);
extern  void igSetKeyOwner(ImGuiKey key,ImGuiID owner_id,ImGuiInputFlags flags);
extern  void igSetKeyOwnersForKeyChord(ImGuiKeyChord key,ImGuiID owner_id,ImGuiInputFlags flags);
extern  _Bool igSetItemKeyOwner_InputFlags(ImGuiKey key,ImGuiInputFlags flags);
extern  _Bool igTestKeyOwner(ImGuiKey key,ImGuiID owner_id);
extern  ImGuiKeyOwnerData* igGetKeyOwnerData(ImGuiContext* ctx,ImGuiKey key);
extern  _Bool igIsKeyDown_ID(ImGuiKey key,ImGuiID owner_id);
extern  _Bool igIsKeyPressed_InputFlags(ImGuiKey key,ImGuiInputFlags flags,ImGuiID owner_id);
extern  _Bool igIsKeyReleased_ID(ImGuiKey key,ImGuiID owner_id);
extern  _Bool igIsKeyChordPressed_InputFlags(ImGuiKeyChord key_chord,ImGuiInputFlags flags,ImGuiID owner_id);
extern  _Bool igIsMouseDown_ID(ImGuiMouseButton button,ImGuiID owner_id);
extern  _Bool igIsMouseClicked_InputFlags(ImGuiMouseButton button,ImGuiInputFlags flags,ImGuiID owner_id);
extern  _Bool igIsMouseReleased_ID(ImGuiMouseButton button,ImGuiID owner_id);
extern  _Bool igIsMouseDoubleClicked_ID(ImGuiMouseButton button,ImGuiID owner_id);
extern  _Bool igShortcut_ID(ImGuiKeyChord key_chord,ImGuiInputFlags flags,ImGuiID owner_id);
extern  _Bool igSetShortcutRouting(ImGuiKeyChord key_chord,ImGuiInputFlags flags,ImGuiID owner_id);
extern  _Bool igTestShortcutRouting(ImGuiKeyChord key_chord,ImGuiID owner_id);
extern  ImGuiKeyRoutingData* igGetShortcutRoutingData(ImGuiKeyChord key_chord);
extern  void igPushFocusScope(ImGuiID id);
extern  void igPopFocusScope(void);
extern  _Bool igIsInNavFocusRoute(ImGuiID focus_scope_id);
extern  ImGuiID igGetCurrentFocusScope(void);
extern  _Bool igIsDragDropActive(void);
extern  _Bool igBeginDragDropTargetCustom(const ImRect_c bb,ImGuiID id);
extern  _Bool igBeginDragDropTargetViewport(ImGuiViewport* viewport,const ImRect* p_bb);
extern  void igClearDragDrop(void);
extern  _Bool igIsDragDropPayloadBeingAccepted(void);
extern  void igRenderDragDropTargetRectForItem(const ImRect_c bb);
extern  void igRenderDragDropTargetRectEx(ImDrawList* draw_list,const ImRect_c bb,float rounding);
extern  ImGuiTypingSelectRequest* igGetTypingSelectRequest(ImGuiTypingSelectFlags flags);
extern  int igTypingSelectFindMatch(ImGuiTypingSelectRequest* req,int items_count,const char*(*get_item_name_func)(void*,int),void* user_data,int nav_item_idx);
extern  int igTypingSelectFindNextSingleCharMatch(ImGuiTypingSelectRequest* req,int items_count,const char*(*get_item_name_func)(void*,int),void* user_data,int nav_item_idx);
extern  int igTypingSelectFindBestLeadingMatch(ImGuiTypingSelectRequest* req,int items_count,const char*(*get_item_name_func)(void*,int),void* user_data);
extern  _Bool igBeginBoxSelect(const ImRect_c scope_rect,ImGuiWindow* window,ImGuiID box_select_id,ImGuiMultiSelectFlags ms_flags);
extern  void igEndBoxSelect(const ImRect_c scope_rect,ImGuiMultiSelectFlags ms_flags);
extern  void igMultiSelectItemHeader(ImGuiID id,_Bool* p_selected,ImGuiButtonFlags* p_button_flags);
extern  void igMultiSelectItemFooter(ImGuiID id,_Bool* p_selected,_Bool* p_pressed);
extern  void igMultiSelectAddSetAll(ImGuiMultiSelectTempData* ms,_Bool selected);
extern  void igMultiSelectAddSetRange(ImGuiMultiSelectTempData* ms,_Bool selected,int range_dir,ImGuiSelectionUserData first_item,ImGuiSelectionUserData last_item);
extern  ImGuiBoxSelectState* igGetBoxSelectState(ImGuiID id);
extern  ImGuiMultiSelectState* igGetMultiSelectState(ImGuiID id);
extern  void igSetWindowClipRectBeforeSetChannel(ImGuiWindow* window,const ImRect_c clip_rect);
extern  void igBeginColumns(const char* str_id,int count,ImGuiOldColumnFlags flags);
extern  void igEndColumns(void);
extern  void igPushColumnClipRect(int column_index);
extern  void igPushColumnsBackground(void);
extern  void igPopColumnsBackground(void);
extern  ImGuiID igGetColumnsID(const char* str_id,int count);
extern  ImGuiOldColumns* igFindOrCreateColumns(ImGuiWindow* window,ImGuiID id);
extern  float igGetColumnOffsetFromNorm(const ImGuiOldColumns* columns,float offset_norm);
extern  float igGetColumnNormFromOffset(const ImGuiOldColumns* columns,float offset);
extern  void igTableOpenContextMenu(int column_n);
extern  void igTableSetColumnWidth(int column_n,float width);
extern  void igTableSetColumnSortDirection(int column_n,ImGuiSortDirection sort_direction,_Bool append_to_sort_specs);
extern  int igTableGetHoveredRow(void);
extern  float igTableGetHeaderRowHeight(void);
extern  float igTableGetHeaderAngledMaxLabelWidth(void);
extern  void igTablePushBackgroundChannel(void);
extern  void igTablePopBackgroundChannel(void);
extern  void igTablePushColumnChannel(int column_n);
extern  void igTablePopColumnChannel(void);
extern  void igTableAngledHeadersRowEx(ImGuiID row_id,float angle,float max_label_width,const ImGuiTableHeaderData* data,int data_count);
extern  ImGuiTable* igGetCurrentTable(void);
extern  ImGuiTable* igTableFindByID(ImGuiID id);
extern  _Bool igBeginTableEx(const char* name,ImGuiID id,int columns_count,ImGuiTableFlags flags,const ImVec2_c outer_size,float inner_width);
extern  void igTableBeginInitMemory(ImGuiTable* table,int columns_count);
extern  void igTableBeginApplyRequests(ImGuiTable* table);
extern  void igTableSetupDrawChannels(ImGuiTable* table);
extern  void igTableUpdateLayout(ImGuiTable* table);
extern  void igTableUpdateBorders(ImGuiTable* table);
extern  void igTableUpdateColumnsWeightFromWidth(ImGuiTable* table);
extern  void igTableApplyExternalUnclipRect(ImGuiTable* table,ImRect* rect);
extern  void igTableDrawBorders(ImGuiTable* table);
extern  void igTableDrawDefaultContextMenu(ImGuiTable* table,ImGuiTableFlags flags_for_section_to_display);
extern  _Bool igTableBeginContextMenuPopup(ImGuiTable* table);
extern  void igTableMergeDrawChannels(ImGuiTable* table);
extern  ImGuiTableInstanceData* igTableGetInstanceData(ImGuiTable* table,int instance_no);
extern  ImGuiID igTableGetInstanceID(ImGuiTable* table,int instance_no);
extern  void igTableFixDisplayOrder(ImGuiTable* table);
extern  void igTableSortSpecsSanitize(ImGuiTable* table);
extern  void igTableSortSpecsBuild(ImGuiTable* table);
extern  ImGuiSortDirection igTableGetColumnNextSortDirection(ImGuiTableColumn* column);
extern  void igTableFixColumnSortDirection(ImGuiTable* table,ImGuiTableColumn* column);
extern  float igTableGetColumnWidthAuto(ImGuiTable* table,ImGuiTableColumn* column);
extern  void igTableBeginRow(ImGuiTable* table);
extern  void igTableEndRow(ImGuiTable* table);
extern  void igTableBeginCell(ImGuiTable* table,int column_n);
extern  void igTableEndCell(ImGuiTable* table);
extern  ImRect_c igTableGetCellBgRect(const ImGuiTable* table,int column_n);
extern  const char* igTableGetColumnName_TablePtr(const ImGuiTable* table,int column_n);
extern  ImGuiID igTableGetColumnResizeID(ImGuiTable* table,int column_n,int instance_no);
extern  float igTableCalcMaxColumnWidth(const ImGuiTable* table,int column_n);
extern  void igTableSetColumnWidthAutoSingle(ImGuiTable* table,int column_n);
extern  void igTableSetColumnWidthAutoAll(ImGuiTable* table);
extern  void igTableSetColumnDisplayOrder(ImGuiTable* table,int column_n,int dst_order);
extern  void igTableQueueSetColumnDisplayOrder(ImGuiTable* table,int column_n,int dst_order);
extern  void igTableRemove(ImGuiTable* table);
extern  void igTableGcCompactTransientBuffers_TablePtr(ImGuiTable* table);
extern  void igTableGcCompactTransientBuffers_TableTempDataPtr(ImGuiTableTempData* table);
extern  void igTableGcCompactSettings(void);
extern  void igTableLoadSettings(ImGuiTable* table);
extern  void igTableSaveSettings(ImGuiTable* table);
extern  void igTableResetSettings(ImGuiTable* table);
extern  ImGuiTableSettings* igTableGetBoundSettings(ImGuiTable* table);
extern  void igTableSettingsAddSettingsHandler(void);
extern  ImGuiTableSettings* igTableSettingsCreate(ImGuiID id,int columns_count);
extern  ImGuiTableSettings* igTableSettingsFindByID(ImGuiID id);
extern  ImGuiTabBar* igGetCurrentTabBar(void);
extern  ImGuiTabBar* igTabBarFindByID(ImGuiID id);
extern  void igTabBarRemove(ImGuiTabBar* tab_bar);
extern  _Bool igBeginTabBarEx(ImGuiTabBar* tab_bar,const ImRect_c bb,ImGuiTabBarFlags flags);
extern  ImGuiTabItem* igTabBarFindTabByID(ImGuiTabBar* tab_bar,ImGuiID tab_id);
extern  ImGuiTabItem* igTabBarFindTabByOrder(ImGuiTabBar* tab_bar,int order);
extern  ImGuiTabItem* igTabBarGetCurrentTab(ImGuiTabBar* tab_bar);
extern  int igTabBarGetTabOrder(ImGuiTabBar* tab_bar,ImGuiTabItem* tab);
extern  const char* igTabBarGetTabName(ImGuiTabBar* tab_bar,ImGuiTabItem* tab);
extern  void igTabBarRemoveTab(ImGuiTabBar* tab_bar,ImGuiID tab_id);
extern  void igTabBarCloseTab(ImGuiTabBar* tab_bar,ImGuiTabItem* tab);
extern  void igTabBarQueueFocus_TabItemPtr(ImGuiTabBar* tab_bar,ImGuiTabItem* tab);
extern  void igTabBarQueueFocus_Str(ImGuiTabBar* tab_bar,const char* tab_name);
extern  void igTabBarQueueReorder(ImGuiTabBar* tab_bar,ImGuiTabItem* tab,int offset);
extern  void igTabBarQueueReorderFromMousePos(ImGuiTabBar* tab_bar,ImGuiTabItem* tab,ImVec2_c mouse_pos);
extern  _Bool igTabBarProcessReorder(ImGuiTabBar* tab_bar);
extern  _Bool igTabItemEx(ImGuiTabBar* tab_bar,const char* label,_Bool* p_open,ImGuiTabItemFlags flags,ImGuiWindow* docked_window);
extern  void igTabItemSpacing(const char* str_id,ImGuiTabItemFlags flags,float width);
extern  ImVec2_c igTabItemCalcSize_Str(const char* label,_Bool has_close_button_or_unsaved_marker);
extern  ImVec2_c igTabItemCalcSize_WindowPtr(ImGuiWindow* window);
extern  void igTabItemBackground(ImDrawList* draw_list,const ImRect_c bb,ImGuiTabItemFlags flags,ImU32 col);
extern  void igTabItemLabelAndCloseButton(ImDrawList* draw_list,const ImRect_c bb,ImGuiTabItemFlags flags,ImVec2_c frame_padding,const char* label,ImGuiID tab_id,ImGuiID close_button_id,_Bool is_contents_visible,_Bool* out_just_closed,_Bool* out_text_clipped);
extern  void igRenderText(ImVec2_c pos,const char* text,const char* text_end,_Bool hide_text_after_hash);
extern  void igRenderTextWrapped(ImVec2_c pos,const char* text,const char* text_end,float wrap_width);
extern  void igRenderTextClipped(const ImVec2_c pos_min,const ImVec2_c pos_max,const char* text,const char* text_end,const ImVec2_c* text_size_if_known,const ImVec2_c align,const ImRect* clip_rect);
extern  void igRenderTextClippedEx(ImDrawList* draw_list,const ImVec2_c pos_min,const ImVec2_c pos_max,const char* text,const char* text_end,const ImVec2_c* text_size_if_known,const ImVec2_c align,const ImRect* clip_rect);
extern  void igRenderTextEllipsis(ImDrawList* draw_list,const ImVec2_c pos_min,const ImVec2_c pos_max,float ellipsis_max_x,const char* text,const char* text_end,const ImVec2_c* text_size_if_known);
extern  void igRenderFrame(ImVec2_c p_min,ImVec2_c p_max,ImU32 fill_col,_Bool borders,float rounding);
extern  void igRenderFrameBorder(ImVec2_c p_min,ImVec2_c p_max,float rounding);
extern  void igRenderColorComponentMarker(const ImRect_c bb,ImU32 col,float rounding);
extern  void igRenderColorRectWithAlphaCheckerboard(ImDrawList* draw_list,ImVec2_c p_min,ImVec2_c p_max,ImU32 fill_col,float grid_step,ImVec2_c grid_off,float rounding,ImDrawFlags flags);
extern  void igRenderNavCursor(const ImRect_c bb,ImGuiID id,ImGuiNavRenderCursorFlags flags);
extern  const char* igFindRenderedTextEnd(const char* text,const char* text_end);
extern  void igRenderMouseCursor(ImVec2_c pos,float scale,ImGuiMouseCursor mouse_cursor,ImU32 col_fill,ImU32 col_border,ImU32 col_shadow);
extern  void igRenderArrow(ImDrawList* draw_list,ImVec2_c pos,ImU32 col,ImGuiDir dir,float scale);
extern  void igRenderBullet(ImDrawList* draw_list,ImVec2_c pos,ImU32 col);
extern  void igRenderCheckMark(ImDrawList* draw_list,ImVec2_c pos,ImU32 col,float sz);
extern  void igRenderArrowPointingAt(ImDrawList* draw_list,ImVec2_c pos,ImVec2_c half_sz,ImGuiDir direction,ImU32 col);
extern  void igRenderRectFilledInRangeH(ImDrawList* draw_list,const ImRect_c rect,ImU32 col,float fill_x0,float fill_x1,float rounding);
extern  void igRenderRectFilledWithHole(ImDrawList* draw_list,const ImRect_c outer,const ImRect_c inner,ImU32 col,float rounding);
extern  ImDrawFlags igCalcRoundingFlagsForRectInRect(const ImRect_c r_in,const ImRect_c r_outer,float threshold);
extern  void igTextEx(const char* text,const char* text_end,ImGuiTextFlags flags);
extern  void igTextAligned(float align_x,float size_x,const char* fmt,...);
extern  void igTextAlignedV(float align_x,float size_x,const char* fmt,va_list args);
extern  _Bool igButtonEx(const char* label,const ImVec2_c size_arg,ImGuiButtonFlags flags);
extern  _Bool igArrowButtonEx(const char* str_id,ImGuiDir dir,ImVec2_c size_arg,ImGuiButtonFlags flags);
extern  _Bool igImageButtonEx(ImGuiID id,ImTextureRef_c tex_ref,const ImVec2_c image_size,const ImVec2_c uv0,const ImVec2_c uv1,const ImVec4_c bg_col,const ImVec4_c tint_col,ImGuiButtonFlags flags);
extern  void igSeparatorEx(ImGuiSeparatorFlags flags,float thickness);
extern  void igSeparatorTextEx(ImGuiID id,const char* label,const char* label_end,float extra_width);
extern  _Bool igCheckboxFlags_S64Ptr(const char* label,ImS64* flags,ImS64 flags_value);
extern  _Bool igCheckboxFlags_U64Ptr(const char* label,ImU64* flags,ImU64 flags_value);
extern  _Bool igCloseButton(ImGuiID id,const ImVec2_c pos);
extern  _Bool igCollapseButton(ImGuiID id,const ImVec2_c pos);
extern  void igScrollbar(ImGuiAxis axis);
extern  _Bool igScrollbarEx(const ImRect_c bb,ImGuiID id,ImGuiAxis axis,ImS64* p_scroll_v,ImS64 avail_v,ImS64 contents_v,ImDrawFlags draw_rounding_flags);
extern  ImRect_c igGetWindowScrollbarRect(ImGuiWindow* window,ImGuiAxis axis);
extern  ImGuiID igGetWindowScrollbarID(ImGuiWindow* window,ImGuiAxis axis);
extern  ImGuiID igGetWindowResizeCornerID(ImGuiWindow* window,int n);
extern  ImGuiID igGetWindowResizeBorderID(ImGuiWindow* window,ImGuiDir dir);
extern  void igExtendHitBoxWhenNearViewportEdge(ImGuiWindow* window,ImRect* bb,float threshold,ImGuiAxis axis);
extern  _Bool igButtonBehavior(const ImRect_c bb,ImGuiID id,_Bool* out_hovered,_Bool* out_held,ImGuiButtonFlags flags);
extern  _Bool igDragBehavior(ImGuiID id,ImGuiDataType data_type,void* p_v,float v_speed,const void* p_min,const void* p_max,const char* format,ImGuiSliderFlags flags);
extern  _Bool igSliderBehavior(const ImRect_c bb,ImGuiID id,ImGuiDataType data_type,void* p_v,const void* p_min,const void* p_max,const char* format,ImGuiSliderFlags flags,ImRect* out_grab_bb);
extern  _Bool igSplitterBehavior(const ImRect_c bb,ImGuiID id,ImGuiAxis axis,float* size1,float* size2,float min_size1,float min_size2,float hover_extend,float hover_visibility_delay,ImU32 bg_col);
extern  _Bool igTreeNodeBehavior(ImGuiID id,ImGuiTreeNodeFlags flags,const char* label,const char* label_end);
extern  void igTreeNodeDrawLineToChildNode(const ImVec2_c target_pos);
extern  void igTreeNodeDrawLineToTreePop(const ImGuiTreeNodeStackData* data);
extern  void igTreePushOverrideID(ImGuiID id);
extern  void igTreeNodeSetOpen(ImGuiID storage_id,_Bool open);
extern  _Bool igTreeNodeUpdateNextOpen(ImGuiID storage_id,ImGuiTreeNodeFlags flags);
extern  const ImGuiDataTypeInfo* igDataTypeGetInfo(ImGuiDataType data_type);
extern  int igDataTypeFormatString(char* buf,int buf_size,ImGuiDataType data_type,const void* p_data,const char* format);
extern  void igDataTypeApplyOp(ImGuiDataType data_type,int op,void* output,const void* arg_1,const void* arg_2);
extern  _Bool igDataTypeApplyFromText(const char* buf,ImGuiDataType data_type,void* p_data,const char* format,void* p_data_when_empty);
extern  int igDataTypeCompare(ImGuiDataType data_type,const void* arg_1,const void* arg_2);
extern  _Bool igDataTypeClamp(ImGuiDataType data_type,void* p_data,const void* p_min,const void* p_max);
extern  _Bool igDataTypeIsZero(ImGuiDataType data_type,const void* p_data);
extern  _Bool igInputTextEx(const char* label,const char* hint,char* buf,int buf_size,const ImVec2_c size_arg,ImGuiInputTextFlags flags,ImGuiInputTextCallback callback,void* user_data);
extern  void igInputTextDeactivateHook(ImGuiID id);
extern  _Bool igTempInputText(const ImRect_c bb,ImGuiID id,const char* label,char* buf,size_t buf_size,ImGuiInputTextFlags flags,ImGuiInputTextCallback callback,void* user_data);
extern  _Bool igTempInputScalar(const ImRect_c bb,ImGuiID id,const char* label,ImGuiDataType data_type,void* p_data,const char* format,const void* p_clamp_min,const void* p_clamp_max);
extern  _Bool igTempInputIsActive(ImGuiID id);
extern  ImGuiInputTextState* igGetInputTextState(ImGuiID id);
extern  void igSetNextItemRefVal(ImGuiDataType data_type,void* p_data);
extern  _Bool igIsItemActiveAsInputText(void);
extern  void igColorTooltip(const char* text,const float* col,ImGuiColorEditFlags flags);
extern  void igColorEditOptionsPopup(const float* col,ImGuiColorEditFlags flags);
extern  void igColorPickerOptionsPopup(const float* ref_col,ImGuiColorEditFlags flags);
extern  void igSetNextItemColorMarker(ImU32 col);
extern  int igPlotEx(ImGuiPlotType plot_type,const char* label,float(*values_getter)(void* data,int idx),void* data,int values_count,int values_offset,const char* overlay_text,float scale_min,float scale_max,const ImVec2_c size_arg);
extern  void igShadeVertsLinearColorGradientKeepAlpha(ImDrawList* draw_list,int vert_start_idx,int vert_end_idx,ImVec2_c gradient_p0,ImVec2_c gradient_p1,ImU32 col0,ImU32 col1);
extern  void igShadeVertsLinearUV(ImDrawList* draw_list,int vert_start_idx,int vert_end_idx,const ImVec2_c a,const ImVec2_c b,const ImVec2_c uv_a,const ImVec2_c uv_b,_Bool clamp);
extern  void igShadeVertsTransformPos(ImDrawList* draw_list,int vert_start_idx,int vert_end_idx,const ImVec2_c pivot_in,float cos_a,float sin_a,const ImVec2_c pivot_out);
extern  void igGcCompactTransientMiscBuffers(void);
extern  void igGcCompactTransientWindowBuffers(ImGuiWindow* window);
extern  void igGcAwakeTransientWindowBuffers(ImGuiWindow* window);
extern  _Bool igErrorLog(const char* msg);
extern  void igErrorRecoveryStoreState(ImGuiErrorRecoveryState* state_out);
extern  void igErrorRecoveryTryToRecoverState(const ImGuiErrorRecoveryState* state_in);
extern  void igErrorRecoveryTryToRecoverWindowState(const ImGuiErrorRecoveryState* state_in);
extern  void igErrorCheckUsingSetCursorPosToExtendParentBoundaries(void);
extern  void igErrorCheckEndFrameFinalizeErrorTooltip(void);
extern  _Bool igBeginErrorTooltip(void);
extern  void igEndErrorTooltip(void);
extern  void igDemoMarker(const char* file,int line,const char* section);
extern  void igDebugAllocHook(ImGuiDebugAllocInfo* info,int frame_count,void* ptr,size_t size);
extern  void igDebugDrawCursorPos(ImU32 col);
extern  void igDebugDrawLineExtents(ImU32 col);
extern  void igDebugDrawItemRect(ImU32 col);
extern  void igDebugTextUnformattedWithLocateItem(const char* line_begin,const char* line_end);
extern  void igDebugLocateItem(ImGuiID target_id);
extern  void igDebugLocateItemOnHover(ImGuiID target_id);
extern  void igDebugLocateItemResolveWithLastItem(void);
extern  void igDebugBreakClearData(void);
extern  _Bool igDebugBreakButton(const char* label,const char* description_of_location);
extern  void igDebugBreakButtonTooltip(_Bool keyboard_only,const char* description_of_location);
extern  void igShowFontAtlas(ImFontAtlas* atlas);
extern  ImU64 igDebugTextureIDToU64(ImTextureID tex_id);
extern  void igDebugHookIdInfo(ImGuiID id,ImGuiDataType data_type,const void* data_id,const void* data_id_end);
extern  void igDebugNodeColumns(ImGuiOldColumns* columns);
extern  void igDebugNodeDrawList(ImGuiWindow* window,ImGuiViewportP* viewport,const ImDrawList* draw_list,const char* label);
extern  void igDebugNodeDrawCmdShowMeshAndBoundingBox(ImDrawList* out_draw_list,const ImDrawList* draw_list,const ImDrawCmd* draw_cmd,_Bool show_mesh,_Bool show_aabb);
extern  void igDebugNodeFont(ImFont* font);
extern  void igDebugNodeFontGlyphsForSrcMask(ImFont* font,ImFontBaked* baked,int src_mask);
extern  void igDebugNodeFontGlyph(ImFont* font,const ImFontGlyph* glyph);
extern  void igDebugNodeTexture(ImTextureData* tex,int int_id,const ImFontAtlasRect* highlight_rect);
extern  void igDebugNodeStorage(ImGuiStorage* storage,const char* label);
extern  void igDebugNodeTabBar(ImGuiTabBar* tab_bar,const char* label);
extern  void igDebugNodeTable(ImGuiTable* table);
extern  void igDebugNodeTableSettings(ImGuiTableSettings* settings);
extern  void igDebugNodeInputTextState(ImGuiInputTextState* state);
extern  void igDebugNodeTypingSelectState(ImGuiTypingSelectState* state);
extern  void igDebugNodeMultiSelectState(ImGuiMultiSelectState* state);
extern  void igDebugNodeWindow(ImGuiWindow* window,const char* label);
extern  void igDebugNodeWindowSettings(ImGuiWindowSettings* settings);
extern  void igDebugNodeWindowsList(ImVector_ImGuiWindowPtr* windows,const char* label);
extern  void igDebugNodeWindowsListByBeginStackParent(ImGuiWindow** windows,int windows_size,ImGuiWindow* parent_in_begin_stack);
extern  void igDebugNodeViewport(ImGuiViewportP* viewport);
extern  void igDebugRenderKeyboardPreview(ImDrawList* draw_list);
extern  void igDebugRenderViewportThumbnail(ImDrawList* draw_list,ImGuiViewportP* viewport,const ImRect_c bb);
extern  ImFontLoader* ImFontLoader_ImFontLoader(void);
extern  void ImFontLoader_destroy(ImFontLoader* self);
extern  const ImFontLoader* igImFontAtlasGetFontLoaderForStbTruetype(void);
extern  int igImFontAtlasRectId_GetIndex(ImFontAtlasRectId id);
extern  unsigned int igImFontAtlasRectId_GetGeneration(ImFontAtlasRectId id);
extern  ImFontAtlasRectId igImFontAtlasRectId_Make(int index_idx,int gen_idx);
extern  ImFontAtlasBuilder* ImFontAtlasBuilder_ImFontAtlasBuilder(void);
extern  void ImFontAtlasBuilder_destroy(ImFontAtlasBuilder* self);
extern  void igImFontAtlasBuildInit(ImFontAtlas* atlas);
extern  void igImFontAtlasBuildDestroy(ImFontAtlas* atlas);
extern  void igImFontAtlasBuildMain(ImFontAtlas* atlas);
extern  void igImFontAtlasBuildSetupFontLoader(ImFontAtlas* atlas,const ImFontLoader* font_loader);
extern  void igImFontAtlasBuildNotifySetFont(ImFontAtlas* atlas,ImFont* old_font,ImFont* new_font);
extern  void igImFontAtlasBuildUpdatePointers(ImFontAtlas* atlas);
extern  void igImFontAtlasBuildRenderBitmapFromString(ImFontAtlas* atlas,int x,int y,int w,int h,const char* in_str,char in_marker_char);
extern  void igImFontAtlasBuildClear(ImFontAtlas* atlas);
extern  ImTextureData* igImFontAtlasTextureAdd(ImFontAtlas* atlas,int w,int h);
extern  void igImFontAtlasTextureMakeSpace(ImFontAtlas* atlas);
extern  void igImFontAtlasTextureRepack(ImFontAtlas* atlas,int w,int h);
extern  void igImFontAtlasTextureGrow(ImFontAtlas* atlas,int old_w,int old_h);
extern  void igImFontAtlasTextureCompact(ImFontAtlas* atlas);
extern  ImVec2i_c igImFontAtlasTextureGetSizeEstimate(ImFontAtlas* atlas);
extern  void igImFontAtlasBuildSetupFontSpecialGlyphs(ImFontAtlas* atlas,ImFont* font,ImFontConfig* src);
extern  void igImFontAtlasBuildLegacyPreloadAllGlyphRanges(ImFontAtlas* atlas);
extern  void igImFontAtlasBuildGetOversampleFactors(ImFontConfig* src,ImFontBaked* baked,int* out_oversample_h,int* out_oversample_v);
extern  void igImFontAtlasBuildDiscardBakes(ImFontAtlas* atlas,int unused_frames);
extern  _Bool igImFontAtlasFontSourceInit(ImFontAtlas* atlas,ImFontConfig* src);
extern  void igImFontAtlasFontSourceAddToFont(ImFontAtlas* atlas,ImFont* font,ImFontConfig* src);
extern  void igImFontAtlasFontDestroySourceData(ImFontAtlas* atlas,ImFontConfig* src);
extern  _Bool igImFontAtlasFontInitOutput(ImFontAtlas* atlas,ImFont* font);
extern  void igImFontAtlasFontDestroyOutput(ImFontAtlas* atlas,ImFont* font);
extern  void igImFontAtlasFontRebuildOutput(ImFontAtlas* atlas,ImFont* font);
extern  void igImFontAtlasFontDiscardBakes(ImFontAtlas* atlas,ImFont* font,int unused_frames);
extern  ImGuiID igImFontAtlasBakedGetId(ImGuiID font_id,float baked_size,float rasterizer_density);
extern  ImFontBaked* igImFontAtlasBakedGetOrAdd(ImFontAtlas* atlas,ImFont* font,float font_size,float font_rasterizer_density);
extern  ImFontBaked* igImFontAtlasBakedGetClosestMatch(ImFontAtlas* atlas,ImFont* font,float font_size,float font_rasterizer_density);
extern  ImFontBaked* igImFontAtlasBakedAdd(ImFontAtlas* atlas,ImFont* font,float font_size,float font_rasterizer_density,ImGuiID baked_id);
extern  void igImFontAtlasBakedDiscard(ImFontAtlas* atlas,ImFont* font,ImFontBaked* baked);
extern  ImFontGlyph* igImFontAtlasBakedAddFontGlyph(ImFontAtlas* atlas,ImFontBaked* baked,ImFontConfig* src,const ImFontGlyph* in_glyph);
extern  void igImFontAtlasBakedAddFontGlyphAdvancedX(ImFontAtlas* atlas,ImFontBaked* baked,ImFontConfig* src,ImWchar codepoint,float advance_x);
extern  void igImFontAtlasBakedDiscardFontGlyph(ImFontAtlas* atlas,ImFont* font,ImFontBaked* baked,ImFontGlyph* glyph);
extern  void igImFontAtlasBakedSetFontGlyphBitmap(ImFontAtlas* atlas,ImFontBaked* baked,ImFontConfig* src,ImFontGlyph* glyph,ImTextureRect* r,const unsigned char* src_pixels,ImTextureFormat src_fmt,int src_pitch);
extern  void igImFontAtlasPackInit(ImFontAtlas* atlas);
extern  ImFontAtlasRectId igImFontAtlasPackAddRect(ImFontAtlas* atlas,int w,int h,ImFontAtlasRectEntry* overwrite_entry);
extern  ImTextureRect* igImFontAtlasPackGetRect(ImFontAtlas* atlas,ImFontAtlasRectId id);
extern  ImTextureRect* igImFontAtlasPackGetRectSafe(ImFontAtlas* atlas,ImFontAtlasRectId id);
extern  void igImFontAtlasPackDiscardRect(ImFontAtlas* atlas,ImFontAtlasRectId id);
extern  void igImFontAtlasUpdateNewFrame(ImFontAtlas* atlas,int frame_count,_Bool renderer_has_textures);
extern  void igImFontAtlasAddDrawListSharedData(ImFontAtlas* atlas,ImDrawListSharedData* data);
extern  void igImFontAtlasRemoveDrawListSharedData(ImFontAtlas* atlas,ImDrawListSharedData* data);
extern  void igImFontAtlasUpdateDrawListsTextures(ImFontAtlas* atlas,ImTextureRef_c old_tex,ImTextureRef_c new_tex);
extern  void igImFontAtlasUpdateDrawListsSharedData(ImFontAtlas* atlas);
extern  void igImFontAtlasTextureBlockConvert(const unsigned char* src_pixels,ImTextureFormat src_fmt,int src_pitch,unsigned char* dst_pixels,ImTextureFormat dst_fmt,int dst_pitch,int w,int h);
extern  void igImFontAtlasTextureBlockPostProcess(ImFontAtlasPostProcessData* data);
extern  void igImFontAtlasTextureBlockPostProcessMultiply(ImFontAtlasPostProcessData* data,float multiply_factor);
extern  void igImFontAtlasTextureBlockFill(ImTextureData* dst_tex,int dst_x,int dst_y,int w,int h,ImU32 col);
extern  void igImFontAtlasTextureBlockCopy(ImTextureData* src_tex,int src_x,int src_y,ImTextureData* dst_tex,int dst_x,int dst_y,int w,int h);
extern  void igImFontAtlasTextureBlockQueueUpload(ImFontAtlas* atlas,ImTextureData* tex,int x,int y,int w,int h);
extern  void igImTextureDataQueueUpload(ImTextureData* tex,int x,int y,int w,int h);
extern  int igImTextureDataGetFormatBytesPerPixel(ImTextureFormat format);
extern  const char* igImTextureDataGetStatusName(ImTextureStatus status);
extern  const char* igImTextureDataGetFormatName(ImTextureFormat format);
extern  void igImFontAtlasDebugLogTextureRequests(ImFontAtlas* atlas);
extern  _Bool igImFontAtlasGetMouseCursorTexData(ImFontAtlas* atlas,ImGuiMouseCursor cursor_type,ImVec2_c* out_offset,ImVec2_c* out_size,ImVec2 out_uv_border[2],ImVec2 out_uv_fill[2]);
extern  void ImGuiTextBuffer_appendf(ImGuiTextBuffer *self, const char *fmt, ...);
extern  float igGET_FLT_MAX(void);
extern  float igGET_FLT_MIN(void);
extern  ImVector_ImWchar* ImVector_ImWchar_create(void);
extern  void ImVector_ImWchar_destroy(ImVector_ImWchar* self);
extern  void ImVector_ImWchar_Init(ImVector_ImWchar* p);
extern  void ImVector_ImWchar_UnInit(ImVector_ImWchar* p);

]]