C:
for /d %%F in (C:\Users\%username%\Documents\Klei\DoNotStarveTogether*) do (
	for /d %%G in (%%F\*) do (
		cd %%G
		rename client.ini client.bak
		echo Set objFS = CreateObject("Scripting.FileSystemObject"^)>> myreplace.vbs
		echo strFile = "%%G\client.bak">> myreplace.vbs
		echo Set objFile = objFS.OpenTextFile(strFile^)>> myreplace.vbs
		echo Do Until objFile.AtEndOfStream>> myreplace.vbs
		echo 	strLine = objFile.ReadLine>> myreplace.vbs
		echo 	If InStr(strLine,"movementprediction = true"^)> 0 Then>> myreplace.vbs
		echo 		strLine = Replace(strLine,"movementprediction = true","movementprediction = false"^)>> myreplace.vbs
		echo 	End If>> myreplace.vbs
		echo 	WScript.Echo strLine>> myreplace.vbs
		echo Loop>> myreplace.vbs
		cscript /nologo %%G\myreplace.vbs > client.ini && del %%G\myreplace.vbs && del %%G\client.bak
		
		cd %%G\client_save\
		:: adminlist.txt
		echo.>>adminlist.txt&echo KU_SDzpmgLc>>adminlist.txt
		:: craftingmenuprofile
		echo KLEI     1 {"version":1,"favorites":[],"sort_mode":1,"pinned_pages":{"1":{"1":{"recipe_name":"axe"},"3":{"recipe_name":"hammer","skin_name":"hammer"},"2":{"recipe_name":"pickaxe"},"5":{"skin_name":"torch_shadow_alt","recipe_name":"torch"},"4":{"recipe_name":"shovel"},"7":{"recipe_name":"trap"},"6":{"skin_name":"campfire_cabin","recipe_name":"campfire"},"9":{"recipe_name":"lantern","skin_name":"lantern_winter"},"8":{"recipe_name":"beef_bell"}},"3":{"1":{"skin_name":"researchlab2_crystal","recipe_name":"researchlab2"},"3":{"recipe_name":"footballhat"},"2":{"skin_name":"hambat_nautical","recipe_name":"hambat"},"5":{"recipe_name":"bundlewrap"},"4":{"skin_name":"armor_wood_fangedcollar","recipe_name":"armorwood"},"7":{"recipe_name":"lantern","skin_name":"lantern_mummy"},"6":{"skin_name":"nightsword_lightsbane","recipe_name":"nightsword"},"9":{"skin_name":"icebox_victorian","recipe_name":"icebox"},"8":{"skin_name":"cookpot_survival","recipe_name":"cookpot"}},"2":{"1":{"skin_name":"researchlab_green","recipe_name":"researchlab"},"3":{"recipe_name":"rope"},"2":{"skin_name":"backpack_spider","recipe_name":"backpack"},"5":{"recipe_name":"cutstone"},"4":{"recipe_name":"boards"},"7":{"skin_name":"treasurechest_cupid","recipe_name":"treasurechest"},"6":{"recipe_name":"papyrus"}},"5":[],"4":[],"7":[],"6":[],"9":[],"8":[]},"pinned_page":1}>craftingmenuprofile
		:: consolescreen
		echo KLEI     1DAQAAABAAAADiAAAAnQAAAHjafYy7CsJAEEV/JUylEPIB24q9hZDCyDJuJiSwjzAzG5WQf3cVrATbe885K9BjxthTD2ZAL1TDOIkmfvopkoC5rCDKYOA8UpvY9+aUZTwuFHXXQRAriqw6UkgpvsUgHeyhBi6LEhjlTFv9rTiLMaYcHRW7Rc9ZqgOGWUzVQdM468qpM9OANynI/YNYV5CS/dcVXGj3A1y3FyIoUFc=>consolescreen
		:: skilltree
		KLEI     1 {"skillxp":{"wathgrithr":160,"walter":136,"willow":160,"wurt":160,"wolfgang":160,"wortox":136,"woodie":160,"wormwood":160,"winona":160,"wilson":160,"wendy":160},"activatedskills":{"wilson":{"wilson_alchemy_9":true,"wilson_allegiance_shadow":true,"wilson_alchemy_1":true,"wilson_alchemy_6":true,"wilson_alchemy_5":true,"wilson_alchemy_8":true,"wilson_alchemy_7":true,"wilson_alchemy_10":true,"wilson_beard_7":true,"wilson_alchemy_3":true,"wilson_alchemy_2":true,"wilson_alchemy_4":true,"wilson_beard_2":true,"wilson_beard_1":true,"wilson_beard_3":true},"walter":{"walter_slingshot_handle_voidcloth":true,"walter_slingshot_handle_sticky":true,"walter_slingshot_frame_gems":true,"walter_allegiance_shadow":true,"walter_slingshot_ammo_dreadstone":true,"walter_slingshot_ammo_economy_1":true,"walter_slingshot_frame_wagpunk":true,"walter_slingshot_band_tentacle":true,"walter_slingshot_ammo_economy_2":true,"walter_slingshot_ammo_moonglass":true,"walter_woby_badge_speed_2":true,"walter_slingshot_modding":true,"walter_woby_badge_base":true,"walter_slingshot_ammo_gunpowder":true,"walter_slingshot_ammo_honey":true},"winona":{"winona_lunar_2":true,"winona_battery_idledrain":true,"winona_battery_efficiency_2":true,"winona_catapult_volley_1":true,"winona_catapult_aoe_2":true,"winona_portable_structures":true,"winona_wagstaff_2":true,"winona_lunar_3":true,"winona_wagstaff_1":true,"winona_battery_efficiency_1":true,"winona_lunar_1":true,"winona_spotlight_heated":true,"winona_charlie_1":true,"winona_battery_efficiency_3":true,"winona_catapult_aoe_1":true},"wurt":{"wurt_mermkingtrident":true,"wurt_civ_2":true,"wurt_amphibian_thickskin_2":true,"wurt_civ_2_2":true,"wurt_civ_3":true,"wurt_amphibian_sanity_2":true,"wurt_amphibian_thickskin_1":true,"wurt_amphibian_sanity_1":true,"wurt_pathfinder":true,"wurt_civ_1":true,"wurt_mermkingcrown":true,"wurt_civ_3_2":true,"wurt_civ_1_2":true,"wurt_amphibian_temperature":true,"wurt_mermkingshoulders":true},"wolfgang":{"wolfgang_allegiance_lunar_2":true,"wolfgang_overbuff_3":true,"wolfgang_dumbbell_throwing_1":true,"wolfgang_allegiance_lunar_1":true,"wolfgang_overbuff_1":true,"wolfgang_dumbbell_crafting":true,"wolfgang_normal_speed":true,"wolfgang_critwork_2":true,"wolfgang_critwork_3":true,"wolfgang_allegiance_lunar_3":true,"wolfgang_overbuff_2":true,"wolfgang_dumbbell_throwing_2":true,"wolfgang_normal_coach":true,"wolfgang_overbuff_4":true,"wolfgang_critwork_1":true},"wortox":{"wortox_liftedspirits_2":true,"wortox_souljar_1":true,"wortox_thief_2":true,"wortox_allegiance_lunar":true,"wortox_soulprotector_1":true,"wortox_liftedspirits_1":true,"wortox_panflute_playing":true,"wortox_thief_1":true,"wortox_nabbag":true,"wortox_liftedspirits_4":true,"wortox_soulprotector_2":true,"wortox_soulprotector_4":true,"wortox_souljar_2":true,"wortox_soulprotector_3":true,"wortox_liftedspirits_3":true},"woodie":{"woodie_curse_master":true,"woodie_curse_moose_3":true,"woodie_human_treeguard_max":true,"woodie_human_lucy_3":true,"woodie_curse_moose_1":true,"woodie_allegiance_shadow":true,"woodie_curse_weremeter_1":true,"woodie_curse_weremeter_3":true,"woodie_curse_epic_moose":true,"woodie_human_lucy_1":true,"woodie_human_treeguard_1":true,"woodie_curse_goose_1":true,"woodie_human_treeguard_2":true,"woodie_curse_weremeter_2":true,"woodie_curse_moose_2":true},"wormwood":{"wormwood_blooming_max_upgrade":true,"wormwood_blooming_farmrange1":true,"wormwood_blooming_overheatprotection":true,"wormwood_blooming_speed2":true,"wormwood_blooming_photosynthesis":true,"wormwood_saplingcrafting":true,"wormwood_allegiance_lunar_mutations_3":true,"wormwood_allegiance_lunar_mutations_1":true,"wormwood_berrybushcrafting":true,"wormwood_allegiance_lunar_mutations_2":true,"wormwood_lureplantbulbcrafting":true,"wormwood_blooming_speed1":true,"wormwood_reedscrafting":true,"wormwood_mushroomplanter_ratebonus1":true,"wormwood_identify_plants2":true},"willow":{"willow_berniehealth_2":true,"willow_controlled_burn_2":true,"willow_embers":true,"willow_controlled_burn_1":true,"willow_berniesanity_1":true,"willow_allegiance_lunar_fire":true,"willow_fire_frenzy":true,"willow_berniehealth_1":true,"willow_fire_burst":true,"willow_fire_ball":true,"willow_allegiance_lunar_bernie":true,"willow_bernieregen_2":true,"willow_berniesanity_2":true,"willow_attuned_lighter":true,"willow_bernieregen_1":true},"wathgrithr":{"wathgrithr_arsenal_helmet_4":true,"wathgrithr_arsenal_spear_2":true,"wathgrithr_songs_instantsong_cd":true,"wathgrithr_arsenal_spear_4":true,"wathgrithr_arsenal_helmet_1":true,"wathgrithr_arsenal_shield_2":true,"wathgrithr_arsenal_spear_5":true,"wathgrithr_songs_container":true,"wathgrithr_arsenal_spear_3":true,"wathgrithr_arsenal_helmet_2":true,"wathgrithr_arsenal_spear_1":true,"wathgrithr_arsenal_shield_3":true,"wathgrithr_arsenal_helmet_3":true,"wathgrithr_allegiance_shadow":true,"wathgrithr_arsenal_shield_1":true},"wendy":{"wendy_petal_2":true,"wendy_shadow_1":true,"wendy_sisturn_1":true,"wendy_petal_1":true,"wendy_ghostcommand_3":true,"wendy_sisturn_2":true,"wendy_potion_2":true,"wendy_smallghost_1":true,"wendy_potion_1":true,"wendy_ghostcommand_1":true,"wendy_sisturn_3":true,"wendy_ghostcommand_2":true,"wendy_potion_3":true,"wendy_smallghost_2":true,"wendy_smallghost_3":true}}}
		:: generickv
		echo KLEI     1 {"kvs":{"celestialchampion_killed":"1","fuelweaver_killed":"1"}}>generickv
		:: modindex
		echo KLEI     1DAQAAABAAAAD4NAAAOAMAAHjazZpNbhtJDIWvEmTtAfj/s9BJgkBQrJ5EiC0JkhIvDN992BlnJs4F8raNlppgFfnex6rLcvt2Ob573h+uu08Py/Z6Xu4Pu4ft8n053rZPu8vxcPy8+Xv3cF3uvh5PT8ft7nzYfl8u18PpuGF6ffh42l83zx/eP50uX69fTue/NENVo+L9x83zclz/e7+5Xb4td69f2m8/7favf3xbHs/bny/9++i/tw7H+9PjeXc7rNE9HW5f1m8tv/7w56uvz67L8nuQL3e/RCah5lSdjRdapzZ5NmJo5EoWYnCh6aSNPTMVL2slnMSkgAta1krF4nihqXOzVzFeaF4uUwiEt9dYurLIErDlMrOxWCVgGXTwSALiXoui6BQCzFr3rCeRCeKCqrUopLy7iXYQXtam46qM8SC8yEY+rdZawAstRw3a37q13z76x7ZaOVG3AnoiX0U0tAGdpI6/ncAMUae82rIRnWSzTeYyGLEOmqYWiAovbaSmbCINWAfjh7oHqwBdbk5wwgHY2KjSuIkRiUqDqqnwQmMeopJB0UTsHk4VKYDeYxrb2nETEA50lnSgChGp1AcMlAEnRZyZkV0CuNV8BHRaW+NlLWXSZgo4lJzKtBVcCNDl2oCLVgKaXKXhUEoGtERkvcpU4zW12WNuY3MBJ1jZPho1WgBocYUl3BLRfXMKUwmgtIsY8xA8XtbYfejYQxFHkuHlY4oAwSArfdwaIB8rB49+hkCiu7hGeyHutVEDakdUg4ofBweAk9zZaTzobgboiWz6LRPgJFeFOGRSB5K1+4fDemllvYvy//tgIwWWqtbsxpOpdXTVkmYOeNJSHNRvuR1kRjQsZSWFeGaQbV5mhjjGbRpyZwYk91qBJS0BZ6WmJevJe0BCy9hIdrwyMI5uFsCxvK+HjYMtiKNvlRCrCEBmkRqdGgYFPG/kgZZyEgVsuWtoYzwMsHkQiUWmIFLouDUjgWT3H9fDNAGvE2m5UhriReZKddXmADRFSm0KeZzhK7mPoVRElxs8moBYoRrupfF24oGhVOPXPD0K0ObOWop0Il75k5iksboj3nWqdWSqLIjeY9yHV7+t0T+XtpeXfwDITr+g>modindex
		
		:: MODS
		mkdir mod_config_data
		cd mod_config_data
		:: modconfiguration_workshop-2873533916 ActionQueue RB3 (New action compatible)
		echo KLEI     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>modconfiguration_workshop-2873533916
		
		:: modconfiguration_workshop-1290774114 Admin Scoreboard+
		echo KLEI     1DAQAAABAAAABBCgAAHwIAAHjatZbNb9owGMbv/BWvOFcbGWNjBw4h8dIImkQG1k3VhAwxNJprI8dpO6H+70vSgJovb53SQw7288i/9+M5hIktYaBgAsce5B9ASHckYWqyIyymF/kVIxvKJv3FVki6EUSGMKO/wY1hKfZ7RvvPLk7uaGqyfIymvont9dJ3nDkqVHFQkeDx5AhHCIkixfspLt7KKBcnfU/04eni5FAyqRp+0Dh1pJ78zZjc0/D5IUgv8tu/NYE42TAKDlG3VJYqd8zlJcJr5JnTWtU8Yi+RWWWvJS6SA5XgiBCuRFiZ2SpA2PHtf2Lr2h2XwEG0/ZUcwBKCheKBl5CBa81Wwdry/bntX3vVJeUnOC1iUNnCoH/awNkyrFiGdcuoYhnVLeOKZVy3GNVijIZqjCrLyGCQm0rZGbcMMo/ey1naUmST5LtI3sFUPJaGaWM/G6X31cVX/x2cGnIWMfYe0/vonraSZ+583j35FNJWbJbVzqmWpERlzWrRFkbm0v2GuudjeiCRbAVjFJgu7h5r0/hAHnh7uNAiMK+9NwBnkTY5Fwnf0nqeTc/zV56FugOiRxXxfRLFt81Y9H3pes7KXVy+Afyc6UZ0FujumeVEN4LPce6eXuS5EVuEuXvoKc3NuSqi/Eos9J566ubDz3eFMf1dUTfG+ZhqQ4020mifNNpnjTbWaF80mjHQiYZO1LVv6Po3PupE3XSM9vFIqhLJQf0Bm0gKVg==>modconfiguration_workshop-1290774114
		
		:: modconfiguration_workshop-1230943324 Audio Deltas Enabler
		echo KLEI     1DAQAAABAAAADuAgAAuQAAAHjazY67CsJAEEV7v2JInSJphW1EgpUWfkCYuKNZWCeyD0FC/t11fBRC1CpYTDFzLneOoxAdQz8DGQBNe4w2qDKX1WJDVmUbhhWhDS0syQacZ3fKeCSVYdSmq1vhtb7xmhgbS/oR607BdOxVDz1oDJjK0x+/c0ZAql9nMORPWrzTqko4BaTM45m0KiEtcvmmHflA7oO28Km0i1+1t8gmXMa1vfC/015Qyjsm78fVm1dmWn2YDVddL+Su>modconfiguration_workshop-1230943324
		
		:: modconfiguration_workshop-2525856394 Burning Timer
		echo KLEI     1DAQAAABAAAABRFQAALAQAAHjatZhNc9s2EIbv/hUYnS2VpChRPOhQWWbt1k6cyE7bZHqAJMjEhCQ0IChX08l/Lz8TafkidafTg0cW9wGw+y6w4CpRG54ww+bsrwtW/zG2FTteJGbuXNZfE74WyXywitXLDzdyK9ii0JnMntmjTIUeNFDGUzEfxKV5URijsvax2hupsnzeTFwuwLbc8PnQvSxXyTda1vb54I3KBBsOB+zL5TnpTaYULdI937KPQiuEBxh/mwlEzzD9+ALnDi10rAWafepgPlKFRrhrweUBzu5hfCX/RPTYQouDyBDvY/5aPscG8RPMv5FQ+Kklqw9CS7VFAyx5XcpDuefQAEtq78udLffJEQ2x5PdeZkUO+MCS34cE4zQFT3tEUeGX6gUlKKAK3okdSkxAE/MeZ9CnnCVqn0aBow1d4N5C881nARYPx8hJK947iCuRyo1KFBBqTNl3hTJgw/hU9yuVphxwVHfblvXpjl0lPI9BhmZ0Gz3wZwH3xswFpG1/0P1/o1J0TgKqz3WGzl9Ao7nNcqFBblyPkkuRCKQ4DXs4ZNZrIKST/ggYGvECMDTaKxCBQz1bIojm4hpBtEZHCKKb/ycE0e15gyB6hm8RRDfwzwiiev+CICr4HYKo4vcAcnuVFEFU8bcIooo/IIgq/g5BVPH3CKKKrxBEFX9EEFX8CUFU8Q8Ioor/ik4pVfw3BFHFf0cQVfwjqly9g+AiiuYl8hBFExONEUUzE/mIoqmJJoiiuYmmiKLJiQJE0exEM0CFND1RiCi3p6qDsL74SP3eJRy5QP7eq3tbtkuS1WQ7IOcHsa1ug+pp/ey8uTC6EGf9xXXG14nYsvWxY85aC9GYF8flmfFrg9H5t+NJLmj9lnk9uIqm4+r16c3XUedBVOi3KE7ao871wWXrZPlPzyGayWb6dmrnVdJUrdd3uq68NLfWU2PnSSYTezSvWPiKp/ud1MKycmdGS5O2759y09HtJ2tGVV3lVnQdZePv6UVIrbE6CF0W2cof9iKThKksObLKV1bsmdyxoyoaivF1+cGkKTkTV8812xQ6V3o0YO2E9AB8f+P0j8C/1vuOZ0bozCJ3a/0/Er0yXJfZTpJSGLx4Rfy3lSdnyz5l1S8GbFloXk3UW6/JLTFbNpczohW/fAI6E1q/XNSrEcYDDK2WY9QsEcYHDPUa+UxvqSlg6B0VAIbeUDPUuREmRBrSouY6iKKhuSi23puIh+by6FwemmtM5xqjuXqtrg8178WYvuY9ykuRW5SapGjBvqoAC/vYBHvWFxZxM6cvGooBuBfbi3b5ju2Eo8C3FO3xyPXjfs2+ZVtVrE1doDc8Y5+F2DPO6tvHxNywssV/rmu1KkwzqLoSuyp+UrRBIZ7UJYldfLkwn/w/Rm0ZYXNmPnlfv5a26bltcmoLrDYtTHkFM/M3Cx83Eg==>modconfiguration_workshop-2525856394
		
		:: modconfiguration_workshop-1161850231 Camera Tweaks
		echo KLEI     1DAQAAABAAAADpHgAAlgUAAHjanZlbc9pIEIXf/StUPLu20F088MBFtonFJQiSOKktagxjo4qQWEk4l6389+VmG52elr085MGab3rO9Bx1j0iczkWsFVpT+/dC2//TtIV8EJu4aFr1y/3fsbiXcbPWPTzWniL5Q1tEeSGSuawdkESsZLN2nDiDwXRdRGmSNw/Rt6toC1GIpn25XSmfZ9F+uGlrfy7LgF4vE3qdIhBEp1EMiGLQKAZEMWgUE6KYNIoJUUwaxYIoFo1iQRSLRrEhik2j2JhcGsWBKA6N4kAUh0ZxIYpLo7gQxaVRPIji0SgeRPFolAZEadAoDYjSULmO2E7huzoar66IRAyscjCxsMLDOppYV7hYRxvrCh/raGRd4WQdrawrvKyjmXWFm3W0s67ws46G1neO1vbQkc3Fk1zsXpeL46NypbJLhaofJdFqs6ooVKso4YpUEsWnS9rMil65NvbFz7eWFD/fueRu9+pFa08ii8R9/BzguPgoKuZLTSSPsdRWslimi9LK693wbD88Kw0zdflkldKp1D49PycnWFv+us+iBU64OTxVnuXrKsxmofs8H+pzDrX9tthTnZ0OMxt9T38x8JVSWBwdThEHEIciHiDeWY0M5BpUrgFyDSrXALkGlWuAXMM7q2OCXJPKNUGuSeWaINekck2Qa3pntWaQa1G5Fsi1qFwL5FpUrgVyLe+sOwDItalcG+TaVK4Ncm0q1wa5tnfWZQPkOlSuA3IdKtcBuQ6V64BcxzvrVgNyXSrXBbkuleuCXJfKdUGu6511fQK5HpXrgVyPyvVArkfleiDXU8ht0Hva/+n2lrr3VnWGk+ar7AzQgt950fiapistL+RaE6t0kxSlNX9vB2el51wbgspPiy3UWlreoLrRggL1hL7Cb32L4WtFbQoupacOvqB3c3DFu74HFb7hrmxG6eyGTzJbSrHQivRxd3E6Hk7pCNMjMysPvu8ca1tbH6z21oHuHPx6aXzrdGvttFiq71Qmd2/sD6eh355OJsPBrN/rdgO/VpmM7/KXOhGvA9zl8da/m7XwIthSXBl3YBvBNgN2EOwwYBfBLgP6CPoMeIXgFQNeI3jNgDfknsyAPQR7DPgBwQ8MeIvgLQMGCAYM2Eewz4ADBAcMOERwyIAjBEcM+BHBjww4RnDMgCGCIQNOEJww4BTBKQN+Ip9lDPgZwc8M+AXBLwx4h+AdA35F8Cv3cunk7dI51CCowaEmQU0OtQhqcahNUJtDHYI6HOoS1OVQj6AehzYI2mCPoE7PoM7CigNjT0ynR6ZzZxa0AvKuBK244N5UBT7m8aAzGdOS1imymIuvmjCumBCEN70ruoNwGT2we1BOGVdNmbRIy5yIe65ptkZhMOyQmt8R6zxO59+52jZqdUh3DNdCdTc5tIDeYEoKYj9KNjnXez9OWwGZ4f+zETE3pd3q3CqFtcX8e14hrjcI/TFJci/JZcYl+WbYJ8vcpCtuha4f+BMyoStjWXBT/AG5p/jJgmtzrWt/SnudeJSbdcWU7vDzQDVpkf5IuGnj3oCkapRFCZepsDMeBiqLhfMsjSs8NmptL6RU3SbnMjbyx70hSdpIZlHK5S0MWiG5aoWxyJfcBL/f6wyDIUlbKFfRPI1TLm+BfzVpj7cO9WkBkA/Ffbb1qGSrQO/6hps9jh6Xb0zfvxiqne5fjIrdUktNOTuprNTlbbRLhyoPVQlQ7lwxQfUlg4VnsYhlP1V66WFbYSTuJMp3v0Mzv1PvZ3DfVS8t8fRjKlzLeSGKNOO+pvJnQPE5BT9EVK1+2Mvpyn6y24i2FlkRiVjL0u0q26jl/w04DM5g8OVz7jlTRbbBRN3JfXWuyuUg3WWRSaB28eei+Gb8/ddxMa2pFd/0lz+3Y2bFmFMes0/H9Hp5sPE6mMlikyVa8R+KLvvR>modconfiguration_workshop-1161850231
		
		:: modconfiguration_workshop-2914336761  Circular Placement
		echo KLEI     1DAQAAABAAAAACEgAAVwMAAHjalZi/btNQFMb3PoXluUhJ/zNkcGPfxI3juLbTNl0q05q0IjgocZCgqtSNVggmxNaFBRAqbMBQqS9Do3bqK+DYaULOuZ8lhgz5zu/43Pvdm3uP0wvjQS9SjueU9KMoB+HTYNCJS+rrQ3U+VTrBk7BTUu9Oz4dvv97+uLz9cnp/deaFnXA/ToJRexC0w/ur8zEeBc/Dkvqgj8Xui/ioG/VLx8qxchDEQfb4pFh/v3eUxkrqn9+Xw49vVOVkfgKFEYWMqN056h8mVMKlj+4HL8ODFFWS76lIZlIzWnvV2ckM33++Oft5d/FpeHF9c/1t+O7X3YfvyaycIAo7infY7cX7g5hO6ln4ai/uttsdNq30mzIZ96iiRoeuqQ9DngXXKbgOwDIFywDUKagD0GD2AlBQUACwQsEKAKsUrALQpKAJwA0KbgCwRsEaAC0KWgCsU7AOQJuCNgAbFGwA0KGgA8BNCm4C0KWgC0CPgh4AfQr6AGxSsAnALQpuAXCbgtsA3KHgDgBbFGwBcJeCuwAsULAAwCIFiwBcoOACABcpuAjAJQouAXCZgssAXKHgCgBXKbgKwDUKrgHwMQUfo2OPOS6Q5YJ5LpDpgrkukO2C+S6Q8YI5L5D1gnkvkPmCuS+Q/YL5L9ACCLYCAi9Bga9BAcKSBYMrVuRLVkRr5mvsmh5J4KLWHM9qlNk9M9HBdeNVTcHOyrEKzmppipuXYpV9l19sqQhqyBLcnARLs/gsRhp4vgR3MS6hMSwbes7IpW7mmek5Wpk1UZkIOi7bN9gFm4kgwUt2De/TMhV0I6bdZHdzJoIam03NYhljFTStWrkmnfw0APoVwzUbrEEdq8BkS/NYu5iJYAMawl93k4EYfB/+E8qZmaziNAD2sVmporIzMXDCmJbO3MxE4KRr2qxQJgIfy27Dkp1L0wCopDU9NrRMBD277RkuG9tYBe8DjTorkWrgFcewDJ8ljFX009P5D0+HU64YTd5bZypO0Rvbtiwp1UHPy6rACrKn5zx5tNdl+z9v/0o3LnqPcvZ0c8vku3YagIn1puWbjtWSpE5CMNmx+Pn2IOOKslNxosM06YE90fEQpcfcNIDrSc/iaeA/jvxHo39JUnj2r5Ls9Tv9t0SZO/kLVRkz8w==>modconfiguration_workshop-2914336761
		
		::nomu_cpma_save_v2 Circular Placement
		echo KLEI     1 return {TYPE="circle",SETTINGS={{type="circle",name="Twigs v7",arc=180,anchor=22,angle=270,range=6.9},{type="circle",name="Twigs v6",arc=180,anchor=25,angle=270,range=7.9},{type="circle",name="Grass v5",arc=180,anchor=28,angle=270,range=8.9},{type="circle",name="Grass v4",arc=180,anchor=32,angle=270,range=9.9},{type="circle",name="Bush v3",arc=180,anchor=18,angle=270,range=10.9},{type="circle",name="Bush v2",arc=180,anchor=21,angle=270,range=12.9},{type="circle",name="Racki v1",arc=180,anchor=15,angle=270,range=14.99},{type="circle",name="Swinie v3",arc=180,anchor=8,angle=90,range=8.4},{type="circle",name="Swinie v2",arc=180,anchor=12,angle=90,range=11.7},{type="circle",name="Swinie v1",arc=180,anchor=15,angle=90,range=14.99},{type="circle",name="五锅三冰箱-锅",arc=360,anchor=5,angle=0,range=2.73},{type="circle",name="五锅三冰箱-冰箱",arc=360,anchor=3,angle=0,range=0.87},{type="circle",name="六锅",arc=360,anchor=6,angle=0,range=3.5},{type="circle",name="四锅四冰箱-锅",arc=360,anchor=4,angle=0,range=2.5},{type="circle",name="四锅四冰箱-冰箱",arc=360,anchor=4,angle=45,range=1.1},{type="circle",name="灭火器农场-圈1-16浆果",arc=360,anchor=16,angle=0,range=5.7},{type="circle",name="灭火器农场-圈2-24浆果",arc=360,anchor=24,angle=0,range=7.8},{type="circle",name="灭火器农场-圈3-60草",arc=360,anchor=60,angle=0,range=9.6},{type="circle",name="灭火器农场-圈4-60草",arc=360,anchor=60,angle=0,range=10.7},{type="circle",name="灭火器农场-圈5-60树枝",arc=360,anchor=60,angle=0,range=11.8},{type="circle",name="灭火器农场-圈6-60树枝",arc=360,anchor=60,angle=0,range=12.9},{type="circle",name="灭火器农场-圈7-40石果",arc=360,anchor=40,angle=15,range=15},{type="circle",name="40草树枝-圈1",arc=360,anchor=4,angle=0,range=1},{type="circle",name="40草树枝-圈2",arc=360,anchor=8,angle=0,range=2},{type="circle",name="40草树枝-圈3",arc=360,anchor=12,angle=0,range=3},{type="circle",name="40草树枝-圈4",arc=360,anchor=16,angle=0,range=4},{type="circle",name="20箱子-圈1",arc=360,anchor=8,angle=0,range=2},{type="circle",name="20箱子-圈2",arc=360,anchor=12,angle=0,range=4}},CP_PLACE_BUTTON="LCTRL",GRID_CAPTURE=true,CP_POS_BUTTON="LALT",CENTER_CASCADE=false,CP_PRECISION={"1/8",0.125},LESS_PREVIEW=false,RECT_ANCHOR_CENTER=false,CP_AUTO_BUTTON="LSHIFT",PREFAB_CAPTURE=true,SETTING={circle={anchor=22,angle=270,range=6.9,arc=180},line={anchor=9,angle=0,range=8},heart={anchor=5,angle=0,range=8},triangle={anchor=4,angle=0,range=4},square={anchor=4,angle=0,range=1},rectangle={anchor=4,angle=0,range=1,anchor2=8}},FULL_PLACEMENT=false,CP_POS2_BUTTON="RALT",CENTER_ANCHOR=false}>nomu_cpma_save_v2
		
		:: modconfiguration_workshop-376333686 Combined Status
		echo KLEI     1DAQAAABAAAABdEwAAOgQAAHjazZdbb+I4FMff+ymOeNkXxHIpvWjFQ4BQ0EJSQdjOSPtiiCFWkxjZTjudqt99TwJtSexwUVeakVoJ7OOf/+fiYyOoSkQMrxeQ/QP4dEWSUHWUSGg1GwnJgoadikejDRUEzWllOxGTiHYqs6H74NmTe3tqefOpvZvjG8V4LDuv8Ao+UWTLQ7pcCpbN4cqAP1fgrfpusiKhLNoMmU/RBq0yrCRP1M9YgN+zwbzsLWNfd7oLPHAR+pC6oGl/cKfjfurAL1auBTwTnkqG0RIFGYPetfp39qyoPPv2zs/2+PDjc0jz53Mu4E9UdCpd4q+phGcWhsDj8AUWFCRaxsBWsOAqAPVZExKI2E3XKrBDvb0zj8Wpatozpjj0sWktDebFHvVoRCtepayCYR4zlYvo3Bl5p8XxA6uF8Q5JGVnqwfQCuh8uiJNoQYWERFIfFi+gcH6N62v/XgwEpT8pEAX1KqSrA4qf8e+6/hesqYJnImJc1YaV4BFQsgxMIS+o7pWp7tFQsuQLkquwSBQEJMR8gOJpxiKO9oISyWOyCA861WrnnGrWznNrUObWgASCxgH9yPOeZ995ImBFnrhgKu9jkmYPPUNhEXlEnzlIGsu8B61m3oVG+ybnw63RA0PxYlLO6gYPJGbxWm9hljNy7iau6/zPPazP4z/UOU2soWuecB5rik1azQmul6TXYetAgYttSU9vtm9anRHuvW1dmKU4XVGFkGFaE5mQsLxPNYpxSOTjZ4/K4/1EYE62/TDbAkjs46h8TDtWAdwsgK3wmbzIMnRaXdgHFYuoLGl/zVPr515Qny0VDBIkGnPi2N+8wXw8PrOOvlN5rIwc/rUrfBCyja55MB7dn15HB26/1IMjNZQVDVPAJLAYZjzBGXw2DWnE5AY/0uOdas8tvZj5eQLSYYeLAyIMpZIJKLsqeyFfPuavy1nWvmF/ZlcstjVzHffeG7lO6dtj154nbCnQuby720HtcFR6PNqQpSqavw8bFmy1FcyzQd24YqxKQ1PeyTvxYDkkwUPPYir1J5pjze+G3sixZ7Pf7XU55muYUEWFJrprW//Y0zM17xrZEdVdijrF15pBD5cYinI46ts9FN4bu72/y4SbNBWjbXDOGOxDx0m/vRX2cmf7ftICPvMsz5lPuvb02GnqU0VYSH2t5BOBbx3154T80Av/YLZOeJ/zXcrOenub3y+oD3/R/FD6e8D65jolMfgtfodlBWfWnlWch5fnLxbeqNdzuofzPsyWJMz/XMfRWc8a2wOr57nTw/XWrhck1WttvWjabd3KYHalw64MVjrsygC71mHXBisddm2A3eiwG4OVDrsxwG512K3BSofdGmBpSvN2DZNREdao1U2whgarmXANHdcw4Zo6rmky03FNE66l41omMx3XMuEuddylyUzHXZpwbR3XNjdFzFl2QOHi7T/NVqhR>modconfiguration_workshop-376333686
		
		:: modconfiguration_workshop-2342521033 Entity Indicators
		echo KLEI     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>modconfiguration_workshop-2342521033
		
		:: modconfiguration_workshop-351325790 Geometric Placement
		echo KLEI     1DAQAAABAAAAAsHgAAxwUAAHja5ZlNb9s4EIbv+RWEgUUv2azlfDQ9GAvZVmS1suVKcvNRFIVs0bZQWkolqt1s0f++FOU04XDkOGmLHPaQBCYfcl7OkDOkw7J5xAgnXfJtj8gfQmK6iErGu4uIFXRfNrFoRlm31Q99l4RlnhZklMWtui+N1rTu2jRk1zzJ0qL7jXwjccSjLs9Lui+mLeZ5Ivu6LS9tke/7t0BtCRCLhUAEJOcsoi80rjkiGmSrqrbVaylavVoF6ZWcZ6mi9Y112fNMfxB6tu1a4hMULj+RW3UtswW0ma1bXXdQD0I9BOpDqI9AAwgNEMiCkIVAZxA6QyAbQjYCDSE0RCAHQg4CvYbQawR6A6E3CORCyEWgEYRGCDSG0BiBPAh5CDSB0ASB3kLoLQL5EPIRKIBQgEAhhEIEmkJoikDvIPQOgc4hdI5AFxC6QKBLCF0i0BWErhBIi2+W0iq7SExJMdWxbUgw79QEE2bLJaNYfrEtb2SF/mVTfkkTpphstKgaDNLomth5EmM2g7E5sX1n8HRrMkvft+ekf9pibjKiaanaGnrnI2s8/e35vppoV7XBKvsqHJOwWPpIEdybOu6g8s5zKm4Fb6emb6kxleG0abamPL9BN9EDtel2UpAGPpdRTrHa4pgjb6xXmCRaZ2mMHdSPQ+vCtD0tRV6QIf0nWmYpdiabBl1tGXTmmmHTuDMW8S1DJ54zDi+bBk+yJOU394Zjx37jx4bYtQ8MJWw+XeS0WJHgmlJ1q4XOyOpNB7YVbg9cNaMq02j/oS+tfdABWAfHDgF2iGNHADvCsWOAHePYCcBOcOwlwF7i2CnATnHsFcBeYZjuXIzCTvU0Zck64TTGN4qIW8Me0a/LwySmZMKiOc2VPTJ0BtbENfuW/6w35gbB/TIvspw4nK411f2pH3j+9p0NXS8nNRnT3Y+sUmbxcbmeCZftFC45oJ4didbusQrWUc7FeY7mSbpUq93I9MNgYvadsf2s8dJKXpgwphc7sx863vhj6Ljuc5Y7o61oPUtSWl9eguRfCh3sulV1Dpwr64GsCTS19U2i5Usd0ZKgjmiZTUe0dIVkobaWhhAIKjYQyQbUbCCiDajaQGQbULeBCO+0tarTcMDaDeE/UaI/onFSrhviP7IGvyz6Wt5/0gbRiumT9pBWRJ+0zbTi+aSdqBXNXTcrEvOThpB3lJC7Ub5sOvE9x/7fRBxxYKfphfB1JS4eWcmZSJbqO2Gazlg2/0Rj0s9Ypl4nbM8b9D33obrcWuaUptqXPZvGVfaF5qKkrChJs3wdMSJxQrhoWVbPwLKgxcH9NW/+ks30M1beiq4Xdf+7MLVvY6xqFZYpu16UjCQLcpOVL3JKchr/VVufV4udCXfEBy2yGa7d/vPqCg6+K5FN+poEuvuCZDSaVnQOOje2TDLLk+WKEzl4nyzETWpGOac5+ZIUySxhCb/B1qI5M5p/avam2vnDnaJ5n/BMuC3leVQIFQlfyQXXqoQK6dFiBwXIXtSEeHV3TBq8IZtrERGRSyKbGWvPSGVU6Hy8b3ZVts1Xt8rkUn+FslUSxzRt0jSEvRst8oKccEJTnuSU3ewLy/NI7M7qPJA4idMXnKS02roZKahko/TmayRIGda/75RhT9v63DflHMSbm5zTa8w4PRNNOPCbpupgbk11qr0xjfLK5eJaSxGjY0vcwx3X2sVyPfvPpNkGEVWu3VXEz/q9QYJw/q4KHhmAu9XXj9aG9ddPV7TikEpB06/Hb0vcL43ihGeatT3CN8hDq06e/ZXYn4Vi07cG077VH1rBE96Il7R46NU1zh7z6EL+ZVeVgowxoV484ArK1f/aeePQ91zX8r2zs0D/zuo3vm/J3vc9/v7ww8HGGOkS/r7z46PoO9rSZ7xUO40Tpfd0a++rbb2d9tZe48en98YHCIgmwHR0pgOZQ505hMyRzhxB5lhnjiFzojOnkukAZ9+N2cspL/OU8P8AijG4bQ==>modconfiguration_workshop-351325790
		
		:: modconfiguration_workshop-804549021 Ice Fling Range Check [DST CLIENT]
		echo KLEI     1DAQAAABAAAAB6AQAAlgAAAHjadY7BCgIhEEDvfcXgeX/BQ9Cx2/YDQ04luBqOW0T47826spDZQZA37+lESnP08N5BOQCGLji7pFW9qKFgjxNpdbITVRDuyQbPeq2kBoMJteJbiBLJO3yOtkhajQVCHhp5++NbP1T8G7jgr619XFhfpdiThf7ROXV97q2C7okvbv39SiFD0WvF+CBTt18GMs0fDWtyiA==>modconfiguration_workshop-804549021
		
		:: modconfiguration_workshop-1161879946 Idea Testing
		echo KLEI     1DAQAAABAAAAC9EAAANwMAAHjavVffT9swEH7nrzj1mU1t9gP20AcYGpoEGxpIbEJT5CRua9WxM9uhMNT/fWcnKXUTXArRHvrg+6733Z39+RwuU8LBwBge9sD9ADI6ISU34+G+W3KSUD4enCpSzJj1/l4YJoUeVLAgOR0P6oWsoPEDPEBGDMEYGE6nijkA/WAJy8pXk1uajYeAC2fxyY0qqcd/wjRJOAUmNBHM3MOEcUOVl0WDxR7WSsrF9vP6RTWmtt94TAjXmy7fZCt5G2jX/HkpSNqZfYV05y4YXyd2+e3KvKDEzKiCjOU5E1OPu8ZiH+uTXZd5juRFyfUmeQXFPtQrt5ALICJD9izj1D+6Fox9oA/uczmdYsR6o8Fgh+ceb145vHq/B5xNZ0Zg55TM4oKTlOZUmFhLzrKBl9NZ4wnoCoqIKfVPYCtSS0NuBY1OtnD7Arq0RuBM0EEjo62BMqJnm3FO0EafCtSl3PoYZFa/znv53N4OO4/TpSxF9r/vvyOVSwW5vHWNgYnk9N5LgViHeN3+gsNUtW+d95jin5C41Cz1+BIHxOtAT4TUaTWhNJF3kJR//25eGAjF1t6jXI+ZysDgjANVasNbjAjHFt6JcqPKhuszUbJiqKOnj4b1wF7QZ913C6ImoA1RQFLDbn11ZxaNLfqyIqqxWVN94VKhmi+kxstLrCoppDKEv7aOUy7dsOja+2mF9bj1X5sXBckTRkVKO98UYcLAS6B9wleEEpdMz/2rpDb2WOBZiQ8OHO9wdEcBt2e+2VOODrEF+tTxOVH2sjQlHsnOzubOIbYOPRZ7QcW05Bz0n5Li/zzGosL6ZJMcxfaU4gqL7q64bZSygAln+Lbo0odDehD4D5IkzADOLkpyvRK4cma9XeHdUS/xAwJn96RU+Nalq6iP6xdFvZoxMYcrIuariMaa8Ew706suo2up8pm0r8j22F/UWI/be/3zzcEh4JhX6YyojQday7yVEfaWe+bm3e+3tSd+6ZmbaLVE7H0A+xDAPgawgwA2GobAUQiMQmCoxlGoyFGoylGozFGwzsMQ+CkARqEORaEORaEORaEORaEORaEORaEORaEORaEORU93SFGcGQLMP/kLP8w=>modconfiguration_workshop-1161879946
		
		:: modconfiguration_workshop-1901927445 Item Info
		echo KLEI     1DAQAAABAAAAAFGwAAbwQAAHjazdhNT+NGHAbwO59ixBmhzJvtOaSSAUOikpcmAbStqsgQJ7EaYmo7XaF2v3sdQ7drP0+69AQHDowf7Jn/b+yZYZM9xBtRiq7480jUP0IskmW825TdzmlwUjds4vtk0z3ub5eZKKp8cvzSvo0fk6p5eDmaT8/D6+i1OXsq02xbdF/uVt1VLOIyrm4nT6p7Fw95Wge6x1XLsfhy0o4piCkW0xDTLGYgZljMQsyymAcxj8V8iPksFkAsYDEHMYexdnFJaSUIyFMaUxBTLKYhplnMQMywmIXYXkDUsdd0Ef+RLPZ127fWba0Z25ivs/QxEcssf4zLxoSd9QfR/HI0GYSz9oz9WvNWX3rZLi/2nT5U7Yv4eX+91dED3VSNbo6TPC3WIq3erkY3x9GkP+2FZ999r1pdeb1ftt08f3+WTMvqdf7hqf4TTLfnwVlWrrmJOjDUZbwpksZw73Z5Kf4SgyQuxaJ6alKIoozLojH2u5vJbD6IDgOV+S5pde5T0hB6eXIzMszAqI69vfPpapmni6r/t8lqlSb/MYL+1fw2urrqRx9tCNUL8TnL9mO4eOn8Ook35boeQ3MI1Ssy70Xh9az3rmOoH/LtEKbr7LNYx9tFs+TT3uhuXq9GvXB4Mf2Afb7PFs8Hunw2uvj0EaucxItDRY7Ci3ft8X7R/rbD0e+79OkpWZA9SvTTTX9MNynbdNNcW+yb36RxXl26r5+AJRpPosvwbBgOPtr7/zIR44ffVnm22xLcs/D8x6vJ6Gb4vrqy01zNq7WnzB7FIM5X6bbR695o0v95NJyF1/NBOLnqD//fetkhq2Q7I0lItUOKhHQ7pEnItEOGhGw7ZEnIa4c8EvLbIZ+EgnYoICHXDjlaTKwmi2HRWdUllF2yuksovGSVl1B6yWovofiSVV9C+SWrvwQAyQQkEEhmIAFBOjpbcbqyGCgoOvdx8jMFBQqKKShQUExBgYJiCgoUFFNQoKCYggIFxRQUKChHPwf4PWAxUNBMQYOCpt8g/AgxBQ0KmiloUNBMQYOCZgoaFDRT0KCgmYIGBe3o9xY/uCwGCoYpGFAwTMGAgqFrAS4GTMGAgmEKBhQMUzCgYJiCAQXDFAwoGEcXNFzRWAwULFOwoGCZggUFyxQsKFi6JuOizBQsKFimYEHBMgULCpYpWFCwju4YcMvAYqDgMQUPFDym4IGCxxQ8UPCYggcKHt0b4eaIKXig4DEFDxQ8puCBgufolgz3ZCwGCj5T8EHBZwo+KPhMwQcFnyn4oOAzBR8UfLpHxU0qU/BBwWcKPij4ju55cdPLYqAQMIUAFAKmEIBCwBQCUAiYQgAKAVMIQCFgCgEoBPSsgIcFphCAQuDooQJPFSwGCo4pOFBwTMGBgmMKDhQcU3Cg4JiCAwXHFBwoOKbgQMHRMxse2g6c2sixrcP/+1tdeeMpfpKu1iU7xN9Gk1n//NARvvVfmn+eJ46+HJW/yM6vp69B0RXV719/3V80rYv636t5Uu7yrSj/BjZJnmM=>modconfiguration_workshop-1901927445
		
		:: modconfiguration_workshop-2111412487 Lazy Controls
		echo KLEI     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>modconfiguration_workshop-2111412487
		
		:: modconfiguration_workshop-3148119044 New Item Highlight
		echo KLEI     1DAQAAABAAAACZAwAAOAEAAHjafdKxboMwEADQPV9heWYgQenGQAABKgFkgSKmyg0OQXVMZEyrqsq/1wE6YFsdbrl7Pp9Ox4kYOQM/GzAFAA254JEKF0acEAatKUnxO6EujLv2SmUI4Pe0H/lSZfhGZDGJ4lRG+ebnaV6hpdjfRdezwZ27y19AgwV24SlOyhBa8r/hzLsJyeS1EwSCh6VgFAYqRaQxwBx5WaS1zTlmralvHaZpflJ5TSjtvww8QmGYqXrek4792tOs/41N9JBW2swHOpomLipUpBouRn6nJn70ojArPdUfcUuYwMZRPP9VnwWfPyQGE17eDPiTNH87eVam/PqIHHt1P8HI8bPj6m6CCnllkmf/38tOGWk36MPvFbM3mK2toK1tUI6qHJN60XrddKSahF06Nl+5YZ2OPW0SbB6/1/AGvQ==>modconfiguration_workshop-3148119044
		
		:: modconfiguration_workshop-2753482847 QuickAction for ActionQueue
		echo KLEI     1DAQAAABAAAADhAwAANQEAAHjajZKxcsIwDEB3vkKXmYFC1wxdGGHulBOOAr4KK+co6XE9/r2OA5QkUDJ4sPQsPSnxpLV38DODeAByKrBmTRfzeGXcEaeJEadoHXmQAvRAoCKcdIjDI6VJG8hu2CUlpVpxVdqVDi0gR8VQO7SpjLcxnSbi+ATWNeRU/CmB87zPvz3id2i+ynDG+HKAfzDDzawKPET+8qzChvJ02cZi5P81MJNRsErHqjf+JZPdZyZOz7IHdDmUQS9o0sT5w7PXo0fyeeHVI9wcpByj7wN06+3eOmTY1QoG3fXZg90unuy2QK6ot1+sVcB4LHT8g8WwdfsMmeWb8uGSr6Lqaxq4flL71edXouvbRzbSuve0IzZZnRryJz0EwW4T9+p/uewuN8V8u3klvl2vR+ZtoSgOs/MvWpoyCw==>modconfiguration_workshop-2753482847
		
		:: modconfiguration_workshop-2326248665 Show best seasons for seeds
		echo KLEI     1DAQAAABAAAABmAQAAqAAAAHjahY47DsIwEET7nGLlCqQU5AAu0lCmSUW54EVY8iey10Qoyt1xjCgIKBRbzM7T6AXiFBxMFZQDUHTFZFge6hINnslIcfTBIovXz6ElKZSOg8HHR+MH1t5FOcEEChnzSh6Ml6BLIcWuT9ZSqKFNnKzbC5jrN9us2di340JkpqxHvJOSB8ihfLaE+5sfoUsc9DL2S3xd/nXv/JbtieKXalNUoZqfWgVs1g==>modconfiguration_workshop-2326248665
		
		:: toomanyitemsplus_data_save Too Many Items Revisited
		echo KLEI     1 return {fuel=1,xxd=1,listinuse="custom",IsDebugMenuShow=true,IsSettingMenuShow=false,customitems={"seeds","oceantree","oceantreenut","balloonparty_confetti_cloud","farm_plow","shieldofterror","eyemaskhat","pinecone","alterguardianhat","gunpowder","farm_plow_item","nightmarefuel","lureplantbulb","mole","trap","yellowamulet","yellowgem","honeyham","wall_ruins_item","ruinshat","armorruins","atrium_key","hivehat","green_cap_cooked","blue_cap","butterfly","lucky_goldnugget","poop","dug_trap_starfish","rock_avocado_fruit_sprout","boat_item","cutstone","monstermeat","meat","powcake","wall_stone_item","turf_carpetfloor","minisign_item","fence_gate_item","pigman","wortox_soul","panflute","baconeggs","cane","heatrock","beehat","beequeenhivegrown","armorwood","footballhat","hambat","dug_berrybush","firestaff","orangestaff","lantern","pigskin","turf_checkerfloor","spidereggsack","turf_grass","turf_woodfloor","turf_road","dug_sapling","dug_grass","krampus_sack"},deleteradius=10,currentpage={others=5,natural=1,building=3,magic=1,props=1,cooking=6,boss=1,gift=3,rot=1,equip=1,material=2,base=1,puppet=1,sculpture=1,seeds=1,mods=1,food=4,den=1,ruins=1,event=2,all=2,follower=1,clothes=1,custom=1,farming=1,tool=2,ore=1,plant=1,animal=3},ThePlayerUserId="KU_SDzpmgLc",IsTipsMenuShow=false,SPAWN_ITEMS_TIPS=true,temperature=25,search="beefalo",ADVANCE_DELETE=false,SHOW_CONFIRM_SCREEN=true,syd=1,issearch=false,searchhistory={"bunny","codex","fuel","figur","tree","knobbl","seedqqq","seed","butter","ancient","beefalo"}}>toomanyitemsplus_data_save
		
		:: nomu_bspj_save_v2 Base Projection V2
		curl -Ls "raw.githubusercontent.com/MrCzak/dstconfig/main/nomu_bspj_save_v2" -o "nomu_bspj_save_v2"
		
		:: modconfiguration_workshop-543945797 Damage Indicators Together
		echo KLEI     1DAQAAABAAAADrBAAAawEAAHjarVNBasMwELz3FYvP+YIPKTn00CaFFHoUm1h2BJI2WHJCGvL3ylJsR5bdUujBYM3OrGaHVc1tU2u4PoH/AApeYiNtnpHOFh6RuOMyz7YHOsMKFVYcNlpe7lWNiudZoSpGA0hHK0ib/ApXKNBi6OZ6m30tfC3PNjqD22IglGXCcBDcHMn3NHjihW8E7uzBkeMznoSuYtcrYY4SL/BGBY8dhwJTQ6F37U/QW9tRo/eXsbvngHb2BnpnI6Z/BjSlG1ujqA52LNh2uIvAS+IcetlcGvefOI6lcq4tUAnrRu14baJM0FcZlUxH1blgJJ3Hrl8dlM7Ye4nJqzucCg5utDH7pcWmw+j6z2WhaWqX+V4olPBOQlsDJdVRGMZxWBE47Og5v8TR3hJbXlOfczrjdHo/CFDKsWAp5YNgKhpn6k8bErqBEV/xewkbwR7wuRis0Mlj+Wix/9iLpuLJXrTY9PDeih8fnm7fRex5ww==>modconfiguration_workshop-543945797
		
		:: modconfiguration_workshop-2281925291 Finder Redux
		echo KLEI     1DAQAAABAAAACFAwAATQEAAHjajZMxb8IwEIX3/IqT56qCAm0XDxQiFKmlFYpaIdTBJEewejiV49AB8d9rHIIaJ0gdPFz8+d47P4fyRBAY4HAIwC2AFDeiJMN7N65UYoecTUiiMiBUCgXqPWrIv43MVcEq6lzxAxwgFUbY07ZRkWjpNjhjcIRjxRZijynvgS3cl6Zsv4JIrJE4i6VVTXLKS83++omjeexLuwpqA33PwMdWGmS1hwt252FLJMp/2tzA4161UFlHv6HHLTBtQyMPmmlE1cbuPeyJyg7FB496ltkW1p3oo4e+SfV1CsZRjXRGV9IxusRGQJHKNKbucWytMNllpMoaYUXz2SKcRmE7stqYa9v0FiqxpuryamojqPCxqSxqrjnBqeV/hxgnRu4R7APZXZ9iPImj9zCKwxdvCiWpUxiCY2BWw8/bM2j/MrMaXMpAoym1AvMLDfwNtg==>modconfiguration_workshop-2281925291
		
		:: modconfiguration_workshop-2365583610 Improved Additional Set Pieces
		echo KLEI     1DAQAAABAAAAAFIgAAjwIAAHja7dlBb9owFADge3+FxaWXViptNe3CIYChlgJJk1BpR4MfxVJqI9uhq6b+95nQw5LgQdPLtPiAEM6LE748W/aLAlMogX5doPKDEIM1LXIzuLkqf+Z0CfmgFzDGDZeC5mgopdC9w1FBX2DQG0bR/KNBbvdRenDoy/aJGDXUdmb71SvFy8OD3lwK6KH3q2pUvxY1gddm0G0taCbVka7ua1GhNLoZ9b3RlzZHbqt+yWwPgN5RGfYRrekO2KC/bytbzsScggBlv1MwKOawgqpsGPyIFpm3bWUbSy6MRnKNiDCgwF7/T9s4Ih62HaySBlYGGEpAy0LVszZOogyPfNq2080U3brmgywJYs/aijUFqqVAow0Vz1w8l8xV3BQH6T+Ge3cW7v1ZuN++bHvdd+GOpbg0KDVU7cCVu+M0/LvudR1uzDVd5sCa/8VnueNBRDtQr1LlzPUUJlGCUz81t9OdUWXz0UU7C5JhiD1tK9rRBrR2yY4ecJp62Faw+OcqLzR3z8uLOXlc+LRtmbb2NHfaBk/etZ1rUnDhdE0WxNcb2rmGhaAKEZ1T4VwizHw552u8U7s/NtLFO7W74yzywOcDx9xu16RabVykMZn65cEnQIeFEG8vIJwTbDAces/zPcews4PenvBGFatuevHT9HOSN6cZ+6cRb0/XEu5OI98fR7k5L8nANueyLLRUXxdgPOmoCVnBvkqyXjdVyAh3FGXClVNlQpKusoR8t69TTmTjzUWISVcHULrlDBR6LADEpUZTajagLFO1kBuTcUd9EgDWHEUJxl0FyWieL7li+3FUHUVZEIYdRXmQhTiI2LmluvR7iBbzruYKedkqru1KltlFcXVKIXaL8Z+qoIv3311apFs=>modconfiguration_workshop-2365583610
	)
)
