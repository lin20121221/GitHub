﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\Widget\BUTTON_Get.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_BUTTON_GetFont
EXTRN	_GUI_ALLOC_UnlockH:PROC
EXTRN	_BUTTON_LockH:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\simulation\gui\widget\button_get.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _BUTTON_GetFont
_TEXT	SEGMENT
_pObj$11316 = -20					; size = 4
_pFont$ = -8						; size = 4
_hObj$ = 8						; size = 4
_BUTTON_GetFont PROC					; COMDAT
; Line 40
	push	ebp
	mov	ebp, esp
	sub	esp, 216				; 000000d8H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-216]
	mov	ecx, 54					; 00000036H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 41
	mov	DWORD PTR _pFont$[ebp], 0
; Line 42
	cmp	DWORD PTR _hObj$[ebp], 0
	je	SHORT $LN1@BUTTON_Get
; Line 45
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_BUTTON_LockH
	add	esp, 4
	mov	DWORD PTR _pObj$11316[ebp], eax
; Line 46
	mov	eax, DWORD PTR _pObj$11316[ebp]
	mov	ecx, DWORD PTR [eax+88]
	mov	DWORD PTR _pFont$[ebp], ecx
; Line 47
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pObj$11316[ebp], 0
$LN1@BUTTON_Get:
; Line 50
	mov	eax, DWORD PTR _pFont$[ebp]
; Line 51
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_BUTTON_GetFont ENDP
_TEXT	ENDS
PUBLIC	_BUTTON_GetText
EXTRN	_memcpy:PROC
EXTRN	_strlen:PROC
EXTRN	_GUI_ALLOC_LockH:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _BUTTON_GetText
_TEXT	SEGMENT
_Len$11330 = -32					; size = 4
_pText$11328 = -20					; size = 4
_pObj$11326 = -8					; size = 4
_hObj$ = 8						; size = 4
_pBuffer$ = 12						; size = 4
_MaxLen$ = 16						; size = 4
_BUTTON_GetText PROC					; COMDAT
; Line 57
	push	ebp
	mov	ebp, esp
	sub	esp, 228				; 000000e4H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-228]
	mov	ecx, 57					; 00000039H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 58
	cmp	DWORD PTR _hObj$[ebp], 0
	je	$LN5@BUTTON_Get@2
; Line 61
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_BUTTON_LockH
	add	esp, 4
	mov	DWORD PTR _pObj$11326[ebp], eax
; Line 62
	mov	eax, DWORD PTR _pObj$11326[ebp]
	cmp	DWORD PTR [eax+104], 0
	je	SHORT $LN3@BUTTON_Get@2
; Line 63
	mov	eax, DWORD PTR _pObj$11326[ebp]
	mov	ecx, DWORD PTR [eax+104]
	push	ecx
	call	_GUI_ALLOC_LockH
	add	esp, 4
	mov	DWORD PTR _pText$11328[ebp], eax
; Line 64
	mov	eax, DWORD PTR _pText$11328[ebp]
	push	eax
	call	_strlen
	add	esp, 4
	mov	DWORD PTR _Len$11330[ebp], eax
; Line 65
	mov	eax, DWORD PTR _MaxLen$[ebp]
	sub	eax, 1
	cmp	DWORD PTR _Len$11330[ebp], eax
	jle	SHORT $LN2@BUTTON_Get@2
; Line 66
	mov	eax, DWORD PTR _MaxLen$[ebp]
	sub	eax, 1
	mov	DWORD PTR _Len$11330[ebp], eax
$LN2@BUTTON_Get@2:
; Line 68
	mov	eax, DWORD PTR _Len$11330[ebp]
	push	eax
	mov	ecx, DWORD PTR _pText$11328[ebp]
	push	ecx
	mov	edx, DWORD PTR _pBuffer$[ebp]
	push	edx
	call	_memcpy
	add	esp, 12					; 0000000cH
; Line 69
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pText$11328[ebp], 0
; Line 70
	mov	eax, DWORD PTR _pBuffer$[ebp]
	add	eax, DWORD PTR _Len$11330[ebp]
	mov	BYTE PTR [eax], 0
; Line 71
	jmp	SHORT $LN1@BUTTON_Get@2
$LN3@BUTTON_Get@2:
; Line 72
	mov	eax, DWORD PTR _pBuffer$[ebp]
	mov	BYTE PTR [eax], 0
$LN1@BUTTON_Get@2:
; Line 74
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pObj$11326[ebp], 0
$LN5@BUTTON_Get@2:
; Line 77
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 228				; 000000e4H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_BUTTON_GetText ENDP
_TEXT	ENDS
END