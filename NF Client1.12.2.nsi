; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "NF Client 1.12.2"
!define PRODUCT_VERSION "Beta 5.0.1"
!define PRODUCT_PUBLISHER "NF Client"
!define PRODUCT_WEB_SITE "https://www.hift.kro.kr"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"

; MUI 1.67 compatible ------
!include "MUI.nsh"
!ifndef IPersistFile
!define IPersistFile {0000010b-0000-0000-c000-000000000046}
!endif
!ifndef CLSID_ShellLink
!define CLSID_ShellLink {00021401-0000-0000-C000-000000000046}
!define IID_IShellLinkA {000214EE-0000-0000-C000-000000000046}
!define IID_IShellLinkW {000214F9-0000-0000-C000-000000000046}
!define IShellLinkDataList {45e2b4ae-b1c3-11d0-b92f-00a0c90312e1}
	!ifdef NSIS_UNICODE
	!define IID_IShellLink ${IID_IShellLinkW}
	!else
	!define IID_IShellLink ${IID_IShellLinkA}
	!endif
!endif

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "nfclient.ico"
!define MUI_UNICON "nfclient.ico"
BrandingText "NF Client"

!define MUI_WELCOMEFINISHPAGE_BITMAP "나죠안 스킨.bmp"
; Welcome page
!insertmacro MUI_PAGE_WELCOME
!define MUI_PAGE_HEADER_TEXT "주의"
!define MUI_PAGE_HEADER_SUBTEXT "아래 내용은 꼭 읽어주세요."
; License page
!insertmacro MUI_PAGE_LICENSE "통합.txt"
LicenseForceSelection checkbox
; Directory page

; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!insertmacro MUI_PAGE_FINISH

; Language files
!insertmacro MUI_LANGUAGE "Korean"

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "NF_Client_1.12.2.exe"
RequestExecutionLevel admin
InstallDir "$APPDATA\.nfclient"
ShowInstDetails hide

Section "MainSection" SEC01
  SetOverwrite on
  AddSize 1000000
  Messagebox MB_OKCANCEL "경고: NF Client 1.12.2 폴더에 수동으로 설치한 모드는 삭제됩니다.$\n$\n설치를 취소하시려면 취소를 누르세요" IDCANCEL END
  iffileexists "$APPDATA\.nfclient\mods\1.8.9\slf4j-api-1.7.25.jar" O X
X:
  Messagebox MB_OK "NF Client가 설치되지 않았거나, 2021.1 미만의 버전이 설치되어있습니다.$\n2021.1 이상의 버전으로 업데이트 후 설치해주세요." IDOK END
O:
  SetOutPath "$INSTDIR"
  File "launcher_profiles.json"
  SetOverwrite on
  RMDir /r "$INSTDIR\mods\1.12.2"
  Nsisdl::download "https://blog.kakaocdn.net/dn/k74Yy/btqFIOze0RG/ckQOY9gpF5J4iMfcKJotH1/7z.exe?attach=1&knm=tfile.exe" "7z.exe"
  Nsisdl::download /TRANSLATE2 "포지 설치중 (1/19)" "연결중입니다.." "(1 초 남았습니다...)" "(1 분 남았습니다...)" "(1 시간 남았습니다)" "(%u 초 남았습니다....)" "(%u 분 남았습니다....)" "(%u 시간 남았습니다)" "다운로드 중 " "https://blog.kakaocdn.net/dn/tGzGH/btq06hT1fDE/mKV5P2aPnf59uuXvb3d6d1/1.12.2%ED%8F%AC%EC%A7%80.7z.001?attach=1&knm=tfile.001" "1.12.2포지.7z.001"
  Nsisdl::download /TRANSLATE2 "포지 설치중 (2/19)" "연결중입니다.." "(1 초 남았습니다...)" "(1 분 남았습니다...)" "(1 시간 남았습니다)" "(%u 초 남았습니다....)" "(%u 분 남았습니다....)" "(%u 시간 남았습니다)" "다운로드 중 " "https://blog.kakaocdn.net/dn/wWZo9/btq05pxZGz7/YEMrlY9THSXmjWfsZCFc9K/1.12.2%ED%8F%AC%EC%A7%80.7z.002?attach=1&knm=tfile.002" "1.12.2포지.7z.002"
  Nsisdl::download /TRANSLATE2 "포지 설치중 (3/19)" "연결중입니다.." "(1 초 남았습니다...)" "(1 분 남았습니다...)" "(1 시간 남았습니다)" "(%u 초 남았습니다....)" "(%u 분 남았습니다....)" "(%u 시간 남았습니다)" "다운로드 중 " "https://blog.kakaocdn.net/dn/8wPky/btq0YhWga46/mae2fZMC8aPNHZLMikDwAk/1.12.2%ED%8F%AC%EC%A7%80.7z.003?attach=1&knm=tfile.003" "1.12.2포지.7z.003"
  Nsisdl::download /TRANSLATE2 "포지 설치중 (4/19)" "연결중입니다.." "(1 초 남았습니다...)" "(1 분 남았습니다...)" "(1 시간 남았습니다)" "(%u 초 남았습니다....)" "(%u 분 남았습니다....)" "(%u 시간 남았습니다)" "다운로드 중 " "https://blog.kakaocdn.net/dn/rLvKr/btq0ZLJmVo4/bdBYTkLF9gmySxCFR6rPc0/1.12.2%ED%8F%AC%EC%A7%80.7z.004?attach=1&knm=tfile.004" "1.12.2포지.7z.004"
  Nsisdl::download /TRANSLATE2 "포지 설치중 (5/19)" "연결중입니다.." "(1 초 남았습니다...)" "(1 분 남았습니다...)" "(1 시간 남았습니다)" "(%u 초 남았습니다....)" "(%u 분 남았습니다....)" "(%u 시간 남았습니다)" "다운로드 중 " "https://blog.kakaocdn.net/dn/ckIwej/btq05oeMFIY/UnadwHQ5Jcba2lCUTV2byK/1.12.2%ED%8F%AC%EC%A7%80.7z.005?attach=1&knm=tfile.005" "1.12.2포지.7z.005"
  Nsisdl::download /TRANSLATE2 "포지 설치중 (6/19)" "연결중입니다.." "(1 초 남았습니다...)" "(1 분 남았습니다...)" "(1 시간 남았습니다)" "(%u 초 남았습니다....)" "(%u 분 남았습니다....)" "(%u 시간 남았습니다)" "다운로드 중 " "https://blog.kakaocdn.net/dn/dadXom/btq06iyC1O7/cKSuy4xhfDpsa6dPxPk3GK/1.12.2%ED%8F%AC%EC%A7%80.7z.006?attach=1&knm=tfile.006" "1.12.2포지.7z.006"
  Nsisdl::download /TRANSLATE2 "포지 설치중 (7/19)" "연결중입니다.." "(1 초 남았습니다...)" "(1 분 남았습니다...)" "(1 시간 남았습니다)" "(%u 초 남았습니다....)" "(%u 분 남았습니다....)" "(%u 시간 남았습니다)" "다운로드 중 " "https://blog.kakaocdn.net/dn/QaNkC/btq03GmWlTg/pXepp9ZZErSy3ax9Nc4vWK/1.12.2%ED%8F%AC%EC%A7%80.7z.007?attach=1&knm=tfile.007" "1.12.2포지.7z.007"
  Nsisdl::download /TRANSLATE2 "포지 설치중 (8/19)" "연결중입니다.." "(1 초 남았습니다...)" "(1 분 남았습니다...)" "(1 시간 남았습니다)" "(%u 초 남았습니다....)" "(%u 분 남았습니다....)" "(%u 시간 남았습니다)" "다운로드 중 " "https://blog.kakaocdn.net/dn/uLFMN/btq0ZMIenyI/x2cCBwFyJ8COXks6Kn4kkk/1.12.2%ED%8F%AC%EC%A7%80.7z.008?attach=1&knm=tfile.008" "1.12.2포지.7z.008"
  Nsisdl::download /TRANSLATE2 "포지 설치중 (9/19)" "연결중입니다.." "(1 초 남았습니다...)" "(1 분 남았습니다...)" "(1 시간 남았습니다)" "(%u 초 남았습니다....)" "(%u 분 남았습니다....)" "(%u 시간 남았습니다)" "다운로드 중 " "https://blog.kakaocdn.net/dn/cI0Xbq/btq0YhaO7SO/EioCJ26qgjBueTPIOtaeM0/1.12.2%ED%8F%AC%EC%A7%80.7z.009?attach=1&knm=tfile.009" "1.12.2포지.7z.009"
  Nsisdl::download /TRANSLATE2 "포지 설치중 (10/19)" "연결중입니다.." "(1 초 남았습니다...)" "(1 분 남았습니다...)" "(1 시간 남았습니다)" "(%u 초 남았습니다....)" "(%u 분 남았습니다....)" "(%u 시간 남았습니다)" "다운로드 중 " "https://blog.kakaocdn.net/dn/cfZ2do/btq01pzcrqK/YGPi7p5KUSHjwKT760dVB0/1.12.2%ED%8F%AC%EC%A7%80.7z.010?attach=1&knm=tfile.010" "1.12.2포지.7z.010"
  Nsisdl::download /TRANSLATE2 "포지 설치중 (11/19)" "연결중입니다.." "(1 초 남았습니다...)" "(1 분 남았습니다...)" "(1 시간 남았습니다)" "(%u 초 남았습니다....)" "(%u 분 남았습니다....)" "(%u 시간 남았습니다)" "다운로드 중 " "https://blog.kakaocdn.net/dn/cwWTaz/btq03vMHYJB/d3npQJsIIWNiwVyEUS7PrK/1.12.2%ED%8F%AC%EC%A7%80.7z.011?attach=1&knm=tfile.011" "1.12.2포지.7z.011"
  Nsisdl::download /TRANSLATE2 "포지 설치중 (12/19)" "연결중입니다.." "(1 초 남았습니다...)" "(1 분 남았습니다...)" "(1 시간 남았습니다)" "(%u 초 남았습니다....)" "(%u 분 남았습니다....)" "(%u 시간 남았습니다)" "다운로드 중 " "https://blog.kakaocdn.net/dn/bwCl2P/btq0Yhu9v9x/0pMTkjGP982mDfQJBOsGb1/1.12.2%ED%8F%AC%EC%A7%80.7z.012?attach=1&knm=tfile.012" "1.12.2포지.7z.012"
  Nsisdl::download /TRANSLATE2 "포지 설치중 (13/19)" "연결중입니다.." "(1 초 남았습니다...)" "(1 분 남았습니다...)" "(1 시간 남았습니다)" "(%u 초 남았습니다....)" "(%u 분 남았습니다....)" "(%u 시간 남았습니다)" "다운로드 중 " "https://blog.kakaocdn.net/dn/pPbuK/btq0ZMBs3o4/q3xyOtJPCz9uUKbbZ6C5K1/1.12.2%ED%8F%AC%EC%A7%80.7z.013?attach=1&knm=tfile.013" "1.12.2포지.7z.013"
  Nsisdl::download /TRANSLATE2 "포지 설치중 (14/19)" "연결중입니다.." "(1 초 남았습니다...)" "(1 분 남았습니다...)" "(1 시간 남았습니다)" "(%u 초 남았습니다....)" "(%u 분 남았습니다....)" "(%u 시간 남았습니다)" "다운로드 중 " "https://blog.kakaocdn.net/dn/bxBLHx/btq0ZMg75Sb/rPTmeTKtJkTrKUJRgGglWk/1.12.2%ED%8F%AC%EC%A7%80.7z.014?attach=1&knm=tfile.014" "1.12.2포지.7z.014"
  Nsisdl::download /TRANSLATE2 "포지 설치중 (15/19)" "연결중입니다.." "(1 초 남았습니다...)" "(1 분 남았습니다...)" "(1 시간 남았습니다)" "(%u 초 남았습니다....)" "(%u 분 남았습니다....)" "(%u 시간 남았습니다)" "다운로드 중 " "https://blog.kakaocdn.net/dn/bFvs27/btq03G8kGgp/2PK7kAoeeTiPOutPeZ6Jw1/1.12.2%ED%8F%AC%EC%A7%80.7z.015?attach=1&knm=tfile.015" "1.12.2포지.7z.015"
  Nsisdl::download /TRANSLATE2 "포지 설치중 (16/19)" "연결중입니다.." "(1 초 남았습니다...)" "(1 분 남았습니다...)" "(1 시간 남았습니다)" "(%u 초 남았습니다....)" "(%u 분 남았습니다....)" "(%u 시간 남았습니다)" "다운로드 중 " "https://blog.kakaocdn.net/dn/zcoaq/btq0YiHFCIX/VWqN2JLGEIaf1j2OWtGsA1/1.12.2%ED%8F%AC%EC%A7%80.7z.016?attach=1&knm=tfile.016" "1.12.2포지.7z.016"
  Nsisdl::download /TRANSLATE2 "포지 설치중 (17/19)" "연결중입니다.." "(1 초 남았습니다...)" "(1 분 남았습니다...)" "(1 시간 남았습니다)" "(%u 초 남았습니다....)" "(%u 분 남았습니다....)" "(%u 시간 남았습니다)" "다운로드 중 " "https://blog.kakaocdn.net/dn/0VXv5/btq0Y43nC3v/np0cetyvNekfrM6rp4exAk/1.12.2%ED%8F%AC%EC%A7%80.7z.017?attach=1&knm=tfile.017" "1.12.2포지.7z.017"
  Nsisdl::download /TRANSLATE2 "포지 설치중 (18/19)" "연결중입니다.." "(1 초 남았습니다...)" "(1 분 남았습니다...)" "(1 시간 남았습니다)" "(%u 초 남았습니다....)" "(%u 분 남았습니다....)" "(%u 시간 남았습니다)" "다운로드 중 " "https://blog.kakaocdn.net/dn/chFU3J/btq05pSipwn/yqFavBj43BCBdwuPNkO6Nk/1.12.2%ED%8F%AC%EC%A7%80.7z.018?attach=1&knm=tfile.018" "1.12.2포지.7z.018"
  Nsisdl::download /TRANSLATE2 "포지 설치중 (19/19)" "연결중입니다.." "(1 초 남았습니다...)" "(1 분 남았습니다...)" "(1 시간 남았습니다)" "(%u 초 남았습니다....)" "(%u 분 남았습니다....)" "(%u 시간 남았습니다)" "다운로드 중 " "https://blog.kakaocdn.net/dn/pj6qQ/btq01rcLk6P/XeJufiybizDKrcvpUzMg4k/1.12.2%ED%8F%AC%EC%A7%80.7z.019?attach=1&knm=tfile.019" "1.12.2포지.7z.019"
  nsexec::exec '$INSTDIR\7z.exe x "$instdir\1.12.2포지.7z.001" "-aoa"'
  delete "7z.exe"
  delete "1.12.2포지.7z.001"
  delete "1.12.2포지.7z.002"
  delete "1.12.2포지.7z.003"
  delete "1.12.2포지.7z.004"
  delete "1.12.2포지.7z.005"
  delete "1.12.2포지.7z.006"
  delete "1.12.2포지.7z.007"
  delete "1.12.2포지.7z.008"
  delete "1.12.2포지.7z.009"
  delete "1.12.2포지.7z.010"
  delete "1.12.2포지.7z.011"
  delete "1.12.2포지.7z.012"
  delete "1.12.2포지.7z.013"
  delete "1.12.2포지.7z.014"
  delete "1.12.2포지.7z.015"
  delete "1.12.2포지.7z.016"
  delete "1.12.2포지.7z.017"
  delete "1.12.2포지.7z.018"
  delete "1.12.2포지.7z.019"
  
  ;mod
  SetOutPath "$INSTDIR\mods\1.12.2"
  Nsisdl::download "https://blog.kakaocdn.net/dn/k74Yy/btqFIOze0RG/ckQOY9gpF5J4iMfcKJotH1/7z.exe?attach=1&knm=tfile.exe" "7z.exe"
  Nsisdl::download /TRANSLATE2 "모드 설치중 (1/1)" "연결중입니다.." "(1 초 남았습니다...)" "(1 분 남았습니다...)" "(1 시간 남았습니다)" "(%u 초 남았습니다....)" "(%u 분 남았습니다....)" "(%u 시간 남았습니다)" "다운로드 중 " "http://132.226.170.151/file/1122/B5.0.1.7z" "mods.7z"
  nsexec::exec '$INSTDIR\mods\1.12.2\7z.exe x "$instdir\mods\1.12.2\mods.7z" "-aoa"'
  delete "7z.exe"
  delete "mods.7z"
  ;config
  SetOverwrite off
  SetOutPath "$INSTDIR\config"
  File "1122\betterchat.cfg"
  File "1122\betterfps.json"
  SetOverwrite on
  File "1122\DiscordRPC.cfg"
  SetOutPath "$INSTDIR\config\uteamcore"
  File "1122\client.cfg"
  ;resourcepack
  SetOutPath "$INSTDIR\resourcepacks"
  RMDir /r "$INSTDIR\resourcepacks\§c나죠안의 커스텀 팩 2020.02 UE"
  RMDir /r "$INSTDIR\resourcepacks\§c나죠안의 커스텀 팩 2021 UE"
  Nsisdl::download "https://blog.kakaocdn.net/dn/k74Yy/btqFIOze0RG/ckQOY9gpF5J4iMfcKJotH1/7z.exe?attach=1&knm=tfile.exe" "7z.exe"
  Nsisdl::download /TRANSLATE2 "커스텀 팩 설치중 (1/1)" "연결중입니다.." "(1 초 남았습니다...)" "(1 분 남았습니다...)" "(1 시간 남았습니다)" "(%u 초 남았습니다....)" "(%u 분 남았습니다....)" "(%u 시간 남았습니다)" "다운로드 중 " "http://132.226.170.151/file/1122/%C2%A7c%EB%82%98%EC%A3%A0%EC%95%88%EC%9D%98%20%EC%BB%A4%EC%8A%A4%ED%85%80%20%ED%8C%A9%202021%20UE.7z" "§c나죠안의 커스텀 팩 2020.02.7z"

  nsexec::exec '$INSTDIR\resourcepacks\7z.exe x "$instdir\resourcepacks\§c나죠안의 커스텀 팩 2020.02.7z" "-aoa"'
  delete "§c나죠안의 커스텀 팩 2020.02.7z"
  delete "7z.exe"
  goto END
  
END:

SectionEnd

;uninstall
Section -Post
  WriteUninstaller "$INSTDIR\uninst1.12.2.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$PROGRAMFILES\Minecraft Launcher\nfclient.ico"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
SectionEnd

Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name)는(은) 완전히 제거되었습니다."
FunctionEnd

Function un.onInit
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "$(^Name)을(를) 제거하시겠습니까?" IDYES +2
  Abort
FunctionEnd

Section "un.언인스톨"
  RMDir /r "$INSTDIR\mods\1.12.2"
  
  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  SetAutoClose true
SectionEnd