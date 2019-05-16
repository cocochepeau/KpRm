
Func LoadZHPCleaner()
	Local Const $sDescriptionPattern = Null
	Local Const $sToolExistCpt = "ZHPCleaner"

	Dim $aKPRemoveProcessList
	Dim $aKPRemoveDesktopList
	Dim $aKPRemoveDownloadList

	Local Const $sReg1 = "(?i)^ZHPCleaner.*\.exe$"
	Local Const $sReg2 = "(?i)^ZHPCleaner.*\.(exe|txt|lnk)$"

	Local Const $aArr1[1][3] = [[$sToolExistCpt, $sReg1, False]]
	Local Const $aArr2[1][5] = [[$sToolExistCpt, 'file', $sDescriptionPattern, $sReg2, False]]

	_ArrayAdd($aKPRemoveProcessList, $aArr1)
	_ArrayAdd($aKPRemoveDesktopList, $aArr2)
	_ArrayAdd($aKPRemoveDownloadList, $aArr2)

EndFunc   ;==>LoadZHPCleaner

LoadZHPCleaner()
