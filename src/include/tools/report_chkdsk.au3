

Func LoadReportCHKDSK()
	Local Const $sToolExistCpt = "Report_CHKDSK"
	Dim $aKPRemoveProcessList
	Dim $aKPRemoveDesktopList
	Dim $aKPRemoveDownloadList

	Local Const $sDescriptionPattern = Null
	Local Const $sReg1 = "(?i)^Report_CHKDSK.*\.exe$"
	Local Const $sReg2 = "(?i)^RapportCHK.*\.txt$"

	Local Const $aArr1[1][3] = [[$sToolExistCpt, $sReg1, False]]
	Local Const $aArr2[1][5] = [[$sToolExistCpt, 'file', $sDescriptionPattern, $sReg1, False]]
	Local Const $aArr3[1][5] = [[$sToolExistCpt, 'file', $sDescriptionPattern, $sReg2, False]]

	_ArrayAdd($aKPRemoveProcessList, $aArr1)
	_ArrayAdd($aKPRemoveDesktopList, $aArr2)
	_ArrayAdd($aKPRemoveDesktopList, $aArr3)
	_ArrayAdd($aKPRemoveDownloadList, $aArr2)
	_ArrayAdd($aKPRemoveDownloadList, $aArr3)

EndFunc   ;==>LoadReportCHKDSK

LoadReportCHKDSK()
