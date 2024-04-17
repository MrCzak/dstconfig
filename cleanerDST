C:
:: Kopia zapasowa
rd  /s /q    "C:\Users\%username%\Documents\Klei_kopia"
xcopy "C:\Users\%username%\Documents\Klei" "C:\Users\%username%\Documents\Klei_kopia" /s /i

:: Don't starve together
rd  /s /q    "C:\Users\%username%\Documents\Klei\Agreements\"
for /d %%F in (C:\Users\%username%\Documents\Klei\DoNotStarveTogether*) do (
	for /d %%G in (%%F\*) do (
		for /d %%H in (%%G\Cluster_*) do (
			for /d %%I in (%%H\*) do (
				rd  /s /q    "%%I\backup"
				del /s /q /f "%%I\server_chat_log.txt"
				del /s /q /f "%%I\server_log.txt"
				rd  /s /q    "%%I\save\client_temp"
				rd  /s /q    "%%I\save\event_match_stats"
				rd  /s /q    "%%I\save\mod_config_data"
				rd  /s /q    "%%I\save\server_temp"
				rd  /s /q    "%%I\save\world_presets
				del /s /q /f "%%I\save\boot_modindex"
				del /s /q /f "%%I\save\modindex"
				del /s /q /f "%%I\save\profile"
				del /s /q /f "%%I\save\shardindex_time"
			)
		)
	rd  /s /q    "%%G\CloudSaves\"
	rd  /s /q    "%%G\client_save\client_temp"
	rd  /s /q    "%%G\client_save\server_temp"
	rd  /s /q    "%%G\client_save\session"
	del /s /q /f "%%G\client_save\keyvalue_cookbook_prod"
	del /s /q /f "%%G\client_save\keyvalue_plantregistry_prod"
	del /s /q /f "%%G\client_save\loadingtips"
	del /s /q /f "%%G\client_save\shardsaveindex"
	del /s /q /f "%%G\client_save\morgue"
	del /s /q /f "%%G\client_save\boot_modindex"
	del /s /q /f "%%G\client_save\cookbook_prod"
	del /s /q /f "%%G\client_save\inventory_cache_prod"
	del /s /q /f "%%G\client_save\inventory_cache_prod_sig"
	del /s /q /f "%%G\client_save\motd_info"
	del /s /q /f "%%G\client_save\plantregistry_prod"
	del /s /q /f "%%G\client_save\pricing_cache"
	del /s /q /f "%%G\client_save\shardindex_time"
	del /s /q /f "%%G\client_save\cookbook"
	del /s /q /f "%%G\client_save\ping_cache"
	del /s /q /f "%%G\client_save\plantregistry"
	del /s /q /f "%%G\client_save\server_preferences"
	del /s /q /f "%%G\client_save\slot"
	del /s /q /f "%%G\client_save\cached_userid"
	del /s /q /f "%%G\client_save\keyvalue_generic_prod"
	del /s /q /f "%%G\client_save\generickv"
	
	del /s /q /f "%%G\client_save\modconfiguration_workshop-2226345952
	del /s /q /f "%%G\client_save\modconfiguration_workshop-1992293314
	del /s /q /f "%%G\client_save\modconfiguration_workshop-2250176974
	del /s /q /f "%%G\client_save\modconfiguration_workshop-1824509831
	del /s /q /f "%%G\client_save\modconfiguration_workshop-1583765151
	del /s /q /f "%%G\client_save\modconfiguration_workshop-1438294126
	del /s /q /f "%%G\client_save\modconfiguration_workshop-2091585361
	del /s /q /f "%%G\client_save\modconfiguration_workshop-2706972372
	del /s /q /f "%%G\client_save\modconfiguration_workshop-1661492580
	del /s /q /f "%%G\client_save\modconfiguration_workshop-2525856394
	del /s /q /f "%%G\client_save\modconfiguration_workshop-2032536958
	del /s /q /f "%%G\client_save\modconfiguration_workshop-2351915881
	del /s /q /f "%%G\client_save\modconfiguration_workshop-2585253003
	del /s /q /f "%%G\client_save\modconfiguration_workshop-2616799130
	del /s /q /f "%%G\client_save\modconfiguration_workshop-2776801650
	del /s /q /f "%%G\client_save\modconfiguration_workshop-727774324
	del /s /q /f "%%G\client_save\modconfiguration_workshop-2634508979
	del /s /q /f "%%G\client_save\modconfiguration_workshop-2622561786
	del /s /q /f "%%G\client_save\modconfiguration_workshop-416991215
	del /s /q /f "%%G\client_save\modconfiguration_workshop-2525858933
	del /s /q /f "%%G\client_save\modconfiguration_workshop-1273382163
	del /s /q /f "%%G\client_save\modconfiguration_workshop-2336089085
	del /s /q /f "%%G\client_save\modconfiguration_workshop-352373173
	del /s /q /f "%%G\client_save\modconfiguration_workshop-2276842170
	del /s /q /f "%%G\client_save\modconfiguration_workshop-1901927445
	del /s /q /f "%%G\client_save\modconfiguration_workshop-2655730459
	del /s /q /f "%%G\client_save\modconfiguration_workshop-2795617613
	del /s /q /f "%%G\client_save\modconfiguration_workshop-2444884963
	del /s /q /f "%%G\client_save\modconfiguration_workshop-2573375368
	del /s /q /f "%%G\client_save\modconfiguration_workshop-2655376273
	del /s /q /f "%%G\client_save\modconfiguration_workshop-2753482847
	del /s /q /f "%%G\client_save\modconfiguration_workshop-2794584441
	del /s /q /f "%%G\client_save\modconfiguration_workshop-2330539193
	del /s /q /f "%%G\client_save\modconfiguration_workshop-2369560337
	del /s /q /f "%%G\client_save\modconfiguration_workshop-1232919354
	del /s /q /f "%%G\client_save\modconfiguration_workshop-2598087493
	del /s /q /f "%%G\client_save\modconfiguration_workshop-2796122895
	del /s /q /f "%%G\client_save\modconfiguration_workshop-1557935632
	del /s /q /f "%%G\client_save\modconfiguration_workshop-1262092067
	del /s /q /f "%%G\client_save\modconfiguration_workshop-1876137475
	del /s /q /f "%%G\client_save\modconfiguration_workshop-343753877
	del /s /q /f "%%G\client_save\modconfiguration_workshop-2027096956
	del /s /q /f "%%G\client_save\modconfiguration_workshop-2763963752
	del /s /q /f "%%G\client_save\modconfiguration_workshop-823132929
	del /s /q /f "%%G\client_save\modconfiguration_workshop-1365141672
	del /s /q /f "%%G\client_save\modconfiguration_workshop-2501419004
	del /s /q /f "%%G\client_save\modconfiguration_workshop-2595004536
	del /s /q /f "%%G\client_save\modconfiguration_workshop-2034314229
	del /s /q /f "%%G\client_save\modconfiguration_workshop-2421565258
	del /s /q /f "%%G\client_save\modconfiguration_workshop-1777679820
	del /s /q /f "%%G\client_save\modconfiguration_workshop-1704104804
	del /s /q /f "%%G\client_save\modconfiguration_workshop-2787589608
	del /s /q /f "%%G\client_save\modconfiguration_workshop-2786299410
	del /s /q /f "%%G\client_save\modconfiguration_workshop-1923504381
	del /s /q /f "%%G\client_save\modconfiguration_workshop-2680697207
	del /s /q /f "%%G\client_save\modconfiguration_workshop-2798585012
	)
rd  /s /q    "%%F\backup\"
del /s /q /f "%%F\caves_server_chat_log.txt"
del /s /q /f "%%F\caves_server_log.txt"
del /s /q /f "%%F\client_chat_log.txt"
del /s /q /f "%%F\client_log.txt"
del /s /q /f "%%F\master_server_chat_log.txt"
del /s /q /f "%%F\master_server_log.txt"
del /s /q /f "%%F\donotstarvetogether_client.dmp"
)

:: Czyszczenie pustych folderów
cd "C:\Users\%username%\Documents\Klei\"
for /f "delims=" %%d in ('dir /s /b /ad ^| sort /r') do rd "%%d"

:: Czyszczenie folderu z grą
::SET "filename=Don't Starve Together"
::setlocal ENABLEDELAYEDEXPANSION
::for /f "tokens=2" %%i in ('wmic logicaldisk where "drivetype=3" ^|find /i ":"') do (
::	set "Fixed_Drive=%%i"
::	echo Szukam folderu/pliku "%filename%" na dysku !Fixed_Drive!
::		@For /f "delims=" %%x in ('Dir /b /s /a "!Fixed_Drive!\%filename%"') do (
::			@echo Znaleziono folder, jego lokacja: %%x
::			SET miejsceSteam=%%x
::			goto koniec
::		)
::)
for /f "tokens=2*" %%a in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 322330" /v "InstallLocation"') do (set miejsceSteam=%%b)
:koniec
rd  /s /q    "%miejsceSteam%\bin"
::rd  /s /q    "%miejsceSteam%\cached_mod_manifests"
rd  /s /q    "%miejsceSteam%\cached_mods"
rd  /s /q    "%miejsceSteam%\DXRedist"
rd  /s /q    "%miejsceSteam%\VCRedist"
del /s /q /f "%miejsceSteam%\installscript_new.vdf"
::del /s /q /f "%miejsceSteam%\data\dropsdata_*.json"
