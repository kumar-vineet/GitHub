﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\Core\GUI_UC_ConvertUC2UTF8.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_GUI_UC_ConvertUC2UTF8
EXTRN	_GUI_UC_Encode:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\simulation\gui\core\gui_uc_convertuc2utf8.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _GUI_UC_ConvertUC2UTF8
_TEXT	SEGMENT
tv65 = -220						; size = 4
tv69 = -218						; size = 2
_NumBytes$6085 = -20					; size = 4
_LenDest$ = -8						; size = 4
_s$ = 8							; size = 4
_Len$ = 12						; size = 4
_pBuffer$ = 16						; size = 4
_BufferSize$ = 20					; size = 4
_GUI_UC_ConvertUC2UTF8 PROC				; COMDAT
; Line 35
	push	ebp
	mov	ebp, esp
	sub	esp, 220				; 000000dcH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-220]
	mov	ecx, 55					; 00000037H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 37
	mov	DWORD PTR _LenDest$[ebp], 0
$LN3@GUI_UC_Con:
; Line 39
	mov	eax, DWORD PTR _Len$[ebp]
	mov	DWORD PTR tv65[ebp], eax
	mov	ecx, DWORD PTR _Len$[ebp]
	sub	ecx, 1
	mov	DWORD PTR _Len$[ebp], ecx
	cmp	DWORD PTR tv65[ebp], 0
	je	SHORT $LN2@GUI_UC_Con
; Line 41
	mov	eax, DWORD PTR _s$[ebp]
	mov	cx, WORD PTR [eax]
	mov	WORD PTR tv69[ebp], cx
	mov	edx, DWORD PTR _s$[ebp]
	add	edx, 2
	mov	DWORD PTR _s$[ebp], edx
	movzx	eax, WORD PTR tv69[ebp]
	push	eax
	mov	ecx, DWORD PTR _pBuffer$[ebp]
	push	ecx
	call	_GUI_UC_Encode
	add	esp, 8
	mov	DWORD PTR _NumBytes$6085[ebp], eax
; Line 42
	mov	eax, DWORD PTR _LenDest$[ebp]
	add	eax, DWORD PTR _NumBytes$6085[ebp]
	cmp	eax, DWORD PTR _BufferSize$[ebp]
	jle	SHORT $LN1@GUI_UC_Con
; Line 43
	jmp	SHORT $LN2@GUI_UC_Con
$LN1@GUI_UC_Con:
; Line 45
	mov	eax, DWORD PTR _pBuffer$[ebp]
	add	eax, DWORD PTR _NumBytes$6085[ebp]
	mov	DWORD PTR _pBuffer$[ebp], eax
; Line 46
	mov	eax, DWORD PTR _LenDest$[ebp]
	add	eax, DWORD PTR _NumBytes$6085[ebp]
	mov	DWORD PTR _LenDest$[ebp], eax
; Line 47
	jmp	SHORT $LN3@GUI_UC_Con
$LN2@GUI_UC_Con:
; Line 49
	mov	eax, DWORD PTR _LenDest$[ebp]
; Line 50
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 220				; 000000dcH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_GUI_UC_ConvertUC2UTF8 ENDP
_TEXT	ENDS
END