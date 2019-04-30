
Func LoadQuickDiag()

	Local Const $ToolExistCpt = "quickdiag"
	Dim $KPRemoveProcessList
	Dim $KPRemoveDesktopList
	Dim $KPRemoveDownloadList
	Dim $KPRemoveHomeDriveList
	Dim $KPRemoveSoftwareKeyList

	Local Const $descriptionPattern = "(?i)^SosVirus"
	Local Const $reg1 = "(?i)^QuickDiag.*\.exe$"
	Local Const $reg2 = "(?i)^QuickDiag.*\.(exe|txt)$"
	Local Const $reg3 = "(?i)^QuickScript.*\.txt$"
	Local Const $reg4 = "(?i)^QuickDiag.*\.txt$"
	Local Const $reg5 = "(?i)^QuickDiag"
	Local Const $reg6 = "(?i)^g3n-h@ckm@n$"

	Local Const $arr1[1][2] = [[$ToolExistCpt, $reg1]]
	Local Const $arr2[1][5] = [[$ToolExistCpt, 'file', $descriptionPattern, $reg2, True]]
	Local Const $arr3[1][5] = [[$ToolExistCpt, 'file', Null, $reg3, True]]
	Local Const $arr4[1][5] = [[$ToolExistCpt, 'file', Null, $reg4, True]]
	Local Const $arr5[1][5] = [[$ToolExistCpt, 'folder', Null, $reg5, True]]
	Local Const $arr6[1][2] = [[$ToolExistCpt, $reg6]]

	_ArrayAdd($KPRemoveProcessList, $arr1)
	_ArrayAdd($KPRemoveDesktopList, $arr2)
	_ArrayAdd($KPRemoveDownloadList, $arr2)
	_ArrayAdd($KPRemoveDesktopList, $arr3)
	_ArrayAdd($KPRemoveDownloadList, $arr3)
	_ArrayAdd($KPRemoveHomeDriveList, $arr4)
	_ArrayAdd($KPRemoveHomeDriveList, $arr5)
	_ArrayAdd($KPRemoveSoftwareKeyList, $arr6)

EndFunc

LoadQuickDiag()
