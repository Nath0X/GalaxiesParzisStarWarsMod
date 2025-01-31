//Maya ASCII 2020 scene
//Name: v06.ma
//Last modified: Tue, Jul 27, 2021 08:48:19 PM
//Codeset: 1252
requires maya "2020";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2020";
fileInfo "version" "2020";
fileInfo "cutIdentifier" "201911140446-42a737a01c";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19041)\n";
fileInfo "UUID" "19A17A55-4D2C-F6D7-DF46-26B4995D9025";
createNode transform -s -n "persp";
	rename -uid "EEA7A323-40D2-AA0B-1C73-BD9190F6EB5B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 14.139117961672961 2.5430511682312984 -7.2029665311434741 ;
	setAttr ".r" -type "double3" -8.0712206258106178 1171.7999999995927 2.5444437451708134e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "8106EB81-4B99-F443-49BF-BFBCE8E4D447";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 17.02741129464907;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "5B93BE1D-4FCC-A18C-F077-E79D6A9E2D28";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "009D53D9-4CBE-0D2D-9A2F-098A42443149";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "93EBA6D3-49BF-A17F-85A1-1297AB6D6CA7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "ED866BF1-4F74-5D22-F074-92A919D2BCD0";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "F90A6309-4178-C2DA-891F-14B9D21A55E1";
	setAttr ".t" -type "double3" 1000.1 2.4641382453727259 1.8843990543070035 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "7F19FD7A-4E1D-967A-F921-C99DC065CEEE";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 37.205024067270521;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "imagePlane1";
	rename -uid "8F9BF8AA-4F70-1C23-B9A2-828A4B4F9995";
	setAttr ".t" -type "double3" -39.213727926183239 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 2.5605652671229664 2.5605652671229664 2.5605652671229664 ;
createNode imagePlane -n "imagePlaneShape1" -p "imagePlane1";
	rename -uid "7B2A5D2C-4F55-0289-CA6A-B4B904696CB5";
	setAttr -k off ".v";
	setAttr ".fc" 102;
	setAttr ".imn" -type "string" "C:/Users/Liam - Moose/Downloads/DC-15_blaster_rifle_-_SW_Card_Trader.png";
	setAttr ".cov" -type "short2" 1236 305 ;
	setAttr ".dlc" no;
	setAttr ".w" 12.36;
	setAttr ".h" 3.05;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "group1";
	rename -uid "DEAED183-48DD-08ED-4CD6-10A1CF713985";
createNode transform -n "pCube14" -p "group1";
	rename -uid "3D4ED47F-4769-1E90-FACB-E9A9317CD0CB";
	setAttr ".t" -type "double3" 0 1.969248273140364 -12.967288935558843 ;
	setAttr ".s" -type "double3" 0.61261188041312731 0.40568730741426695 2.4273625520289039 ;
createNode transform -n "transform1" -p "pCube14";
	rename -uid "E9D987EC-437A-0F1F-3CA1-91A380DD6F7B";
	setAttr ".v" no;
createNode mesh -n "pCubeShape14" -p "transform1";
	rename -uid "59EDDD49-47CF-265E-82B7-ABB620FD4706";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube13" -p "group1";
	rename -uid "620ED3BF-4A45-665B-B75D-9A9B091C4686";
	setAttr ".t" -type "double3" 0 1.3632220205491936 -5.5679836881792184 ;
	setAttr ".s" -type "double3" 0.55431872853545161 0.55555554723755374 1 ;
createNode transform -n "transform2" -p "pCube13";
	rename -uid "85A44CA7-4594-215B-9C36-219BDCAB1183";
	setAttr ".v" no;
createNode mesh -n "pCubeShape13" -p "transform2";
	rename -uid "70742C97-4246-BCDD-0C54-E8847C85F9D6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube12" -p "group1";
	rename -uid "096CD7F4-4FFD-24EE-981A-29A699C4F6E9";
	setAttr ".t" -type "double3" 0 0.66031066620351508 -7.3273183604519145 ;
	setAttr ".s" -type "double3" 1.4181238190311936 1.4181238190311936 1.4181238190311936 ;
createNode transform -n "transform3" -p "pCube12";
	rename -uid "A9FCB7DA-48BB-30EB-AC9E-75A2CE8528CA";
	setAttr ".v" no;
createNode mesh -n "pCubeShape12" -p "transform3";
	rename -uid "EB2FB6CB-44B2-EFB8-6909-10ACB6DE0C5B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[12:15]" -type "float3"  0 0 -0.34535 0 0 -0.34535 
		0 0 -0.34535 0 0 -0.34535;
createNode transform -n "pCube11" -p "group1";
	rename -uid "CBCB174F-46A0-50BC-51B6-2A92227D2BF5";
	setAttr ".t" -type "double3" 0 -0.93791261749837895 -2.2189639974961657 ;
	setAttr ".s" -type "double3" 1.2925356025870873 1.2925356025870873 0.40563280084415659 ;
createNode transform -n "transform4" -p "pCube11";
	rename -uid "8162E1EA-44FC-6E68-2DB6-209934C06387";
	setAttr ".v" no;
createNode mesh -n "pCubeShape11" -p "transform4";
	rename -uid "1087317F-418C-EE34-999C-5CB1CF701A11";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[24:27]" -type "float3"  0 0 2.9325719 0 0 2.9325719 
		0 0 2.9325719 0 0 2.9325719;
createNode transform -n "pCube10" -p "group1";
	rename -uid "282F33C0-4CB0-7701-1557-748A1E86C59C";
	setAttr ".t" -type "double3" 0 -0.50081251752857647 -5.0952230044211735 ;
	setAttr ".s" -type "double3" 0.6480103039598476 0.6480103039598476 0.6480103039598476 ;
createNode transform -n "transform5" -p "pCube10";
	rename -uid "0BCDFCC9-4C87-55C3-4EA7-4CA2E8DCDCDA";
	setAttr ".v" no;
createNode mesh -n "pCubeShape10" -p "transform5";
	rename -uid "3ECE33A9-4E5F-E359-EBA7-E8A7BB0B2654";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.75 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[8:15]" -type "float3"  0 0 -0.10590534 0 0 -0.10590534 
		0 0 -0.158858 0 0 -0.158858 0 -0.70603579 0.26692909 0 -0.70603579 0.26692909 0 -0.70603579 
		-0.53169256 0 -0.70603579 -0.53169256;
createNode transform -n "pCube9" -p "group1";
	rename -uid "120D42F6-479E-5DB3-91ED-FA8CE1C533DE";
	setAttr ".t" -type "double3" 0 -0.065323371851553347 -2.1121223565335634 ;
	setAttr ".s" -type "double3" 0.80461662808938239 0.54444442252380576 8.7575622712576013 ;
createNode transform -n "transform6" -p "pCube9";
	rename -uid "7128A824-41EF-39FE-5547-FB84266C89E9";
	setAttr ".v" no;
createNode mesh -n "pCubeShape9" -p "transform6";
	rename -uid "2427C72D-4F66-172A-A7C8-F4AFBC014DB7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube8" -p "group1";
	rename -uid "05B91081-463A-7767-F716-D8ACA5082C69";
	setAttr ".t" -type "double3" 0 1.6524879681963371 -1.7276010576598073 ;
	setAttr ".s" -type "double3" 0.79918007136321412 1.1554320978747643 0.60555555773950387 ;
createNode transform -n "transform7" -p "pCube8";
	rename -uid "137F759B-4C90-7E04-234E-2DAB496710EC";
	setAttr ".v" no;
createNode mesh -n "pCubeShape8" -p "transform7";
	rename -uid "58AFCD8A-4EB0-5E8A-CF8A-7C8988EF2187";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube7" -p "group1";
	rename -uid "8EE5C37D-46F0-ECE1-43DC-6189377F3B7F";
	setAttr ".t" -type "double3" 0 1.1249291530288517 1.9236163550229959 ;
	setAttr ".s" -type "double3" 0.6214665251026209 1 1 ;
createNode transform -n "transform8" -p "pCube7";
	rename -uid "9B25C7A3-4E77-9D0D-B363-F09E2F1604A0";
	setAttr ".v" no;
createNode mesh -n "pCubeShape7" -p "transform8";
	rename -uid "983B36CD-4F3F-4567-76C1-759405769C59";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube6" -p "group1";
	rename -uid "9154D553-4602-955F-656A-219D8A59B7F6";
	setAttr ".t" -type "double3" 0 0.65977424421865816 2.82127302539535 ;
	setAttr ".s" -type "double3" 1.0313489916364182 1.0555555535574088 0.33333335731109748 ;
createNode transform -n "transform9" -p "pCube6";
	rename -uid "C5684AB4-4BB8-6821-DF19-3A9193992C2A";
	setAttr ".v" no;
createNode mesh -n "pCubeShape6" -p "transform9";
	rename -uid "B253B953-476F-3007-F671-4683F0CBAAF1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube5" -p "group1";
	rename -uid "5512D2C8-48D2-93F0-9488-4589E76C0E4F";
	setAttr ".t" -type "double3" 0 -0.24354925501691366 5.5690936759018621 ;
	setAttr ".s" -type "double3" 0.071079766919866769 0.86666927649342973 0.86666927649342973 ;
createNode transform -n "transform10" -p "pCube5";
	rename -uid "7D57B0FE-4DD2-E73A-24E8-F49D46E9D97E";
	setAttr ".v" no;
createNode mesh -n "pCubeShape5" -p "transform10";
	rename -uid "2F069824-4B02-A97C-6C34-8A905EC51E15";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.24087219 0 0 -0.24087219 
		0 0 -0.12043609 0 0 -0.12043609;
createNode transform -n "pCube4" -p "group1";
	rename -uid "00C699AC-4B6A-8963-0E03-A8A293D0076A";
	setAttr ".t" -type "double3" 0 -0.62872538988815552 6.0632788500231767 ;
	setAttr ".r" -type "double3" -43.522415756427968 0 0 ;
	setAttr ".s" -type "double3" 0.17615051741115767 0.30613997658466591 0.39374782289557658 ;
createNode transform -n "transform11" -p "pCube4";
	rename -uid "D3F73F28-4011-465D-5AF6-43B6DA16712D";
	setAttr ".v" no;
createNode mesh -n "pCubeShape4" -p "transform11";
	rename -uid "E23EEB30-46DA-B36C-CCA4-918DEDC7797A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.75 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[20:23]" -type "float3"  0 -0.14625148 0.70659852 
		0 -0.14625148 0.70659852 0 0.84498787 -0.10490452 0 0.84498787 -0.10490452;
createNode transform -n "pCube3" -p "group1";
	rename -uid "D7DE89CA-4802-C842-3978-5B91F05895E5";
	setAttr ".t" -type "double3" 0 0.57765614806245846 9.4686713651494152 ;
	setAttr ".s" -type "double3" 0.37612122327288466 0.78888887262645346 1 ;
createNode transform -n "transform12" -p "pCube3";
	rename -uid "043CBC0F-4935-838F-2670-10BBBCBA29F3";
	setAttr ".v" no;
createNode mesh -n "pCubeShape3" -p "transform12";
	rename -uid "6D6790F0-4215-6FAE-D1B0-A196B8F8729B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt[6:7]" -type "float3"  0 0 -0.090474278 0 0 -0.090474278;
createNode transform -n "pCube2" -p "group1";
	rename -uid "024318B7-4F5C-C7A0-BB1F-88B2650DD351";
	setAttr ".t" -type "double3" 0 0.65349202548247531 6.4250296364779151 ;
	setAttr ".s" -type "double3" 0.95696230407011218 0.95696230407011218 5.4387361067077453 ;
createNode transform -n "transform13" -p "pCube2";
	rename -uid "681B251E-433B-A78F-DF76-4D98058829DA";
	setAttr ".v" no;
createNode mesh -n "pCubeShape2" -p "transform13";
	rename -uid "4B4C9401-4E27-5728-D2E0-C8AD841EEA83";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0 0.10936818 ;
	setAttr ".pt[1]" -type "float3" 0 0 0.10936818 ;
	setAttr ".pt[4]" -type "float3" 0 0 -1.9138057 ;
	setAttr ".pt[5]" -type "float3" 0 0 -1.9138057 ;
	setAttr ".pt[6]" -type "float3" 0 0 -1.9138057 ;
	setAttr ".pt[7]" -type "float3" 0 0 -1.9138057 ;
createNode transform -n "pCube1" -p "group1";
	rename -uid "8A76A110-4551-ECA8-E2E3-64BB4E2379F4";
	setAttr ".t" -type "double3" 0 -1.9225585264402121 7.6382659930821148 ;
	setAttr ".r" -type "double3" -30.76828704186125 0 0 ;
	setAttr ".s" -type "double3" 0.5335480806358327 1 1 ;
createNode transform -n "transform14" -p "pCube1";
	rename -uid "A66BB019-426B-3F6A-0DA0-F198F2DB3080";
	setAttr ".v" no;
createNode mesh -n "pCubeShape1" -p "transform14";
	rename -uid "2815CFB0-440A-5235-3D07-78A1B86DD590";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt[0:1]" -type "float3"  0 0.17720522 0.073902018 
		0 0.17720522 0.073902018;
createNode transform -n "pCube15";
	rename -uid "5DBD34D8-4359-D371-7C37-88B6C339D45E";
	setAttr ".rp" -type "double3" 0 -0.26636799692254565 0.12414575806247452 ;
	setAttr ".sp" -type "double3" 0 -0.26636799692254565 0.12414575806247452 ;
createNode mesh -n "pCube15Shape" -p "pCube15";
	rename -uid "436C26E8-4A44-20A0-3B60-AABA91F5EE86";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.72717335820198059 0.24225650629609502 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "49C7DF45-49FD-5AE5-0A85-868D926067D7";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "903E2CFC-40E5-C67C-8497-43B91F860193";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "47FF7AB9-4BF6-63F9-4AA2-ADA250C039C8";
createNode displayLayerManager -n "layerManager";
	rename -uid "40F247D2-4FE5-1D4B-C3F7-3E838A83FCD0";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "8D3A6080-4DDA-2BE9-3E7E-EAB329D1B295";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "AF2FBED8-468D-1DF9-54E6-0F82ECCBCD91";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "F3447EBE-45CA-8354-D951-9D98FF9F13A2";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "75C83945-46A8-ED94-1D2E-ACAFBAF4A7C5";
	setAttr ".cuv" 4;
createNode displayLayer -n "layer1";
	rename -uid "134FF7EF-4E70-F52A-7472-A091942E19B7";
	setAttr ".dt" 2;
	setAttr ".v" no;
	setAttr ".do" 1;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "23B5ADA6-445E-BC20-505B-BB8B60FCF880";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.85924317878134571 -0.51156735599305825 0
		 0 0.51156735599305825 0.85924317878134571 0 0 -1.9225585264402121 7.6382659930821148 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.62648994 6.9292641 ;
	setAttr ".rs" 37655;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.5 -0.6275694946882131 6.4292651659439288 ;
	setAttr ".cbx" -type "double3" 0.5 -0.62541037022380563 7.4292626796870138 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak1";
	rename -uid "84FA9F67-45B8-6C67-3F05-C0B8724BDB0E";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[2:5]" -type "float3"  0 0.71962976 -0.017110568
		 0 0.71962976 -0.017110568 0 1.23305106 0.12475292 0 1.23305106 0.12475292;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "F37839DB-4131-581B-EE20-6D9CF7B41D5B";
	setAttr ".ics" -type "componentList" 1 "f[8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.85924317878134571 -0.51156735599305825 0
		 0 0.51156735599305825 0.85924317878134571 0 0 -1.9225585264402121 7.6382659930821148 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.20551682 6.4292645 ;
	setAttr ".rs" 51380;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.5 -0.62541037880680173 6.4292645149502254 ;
	setAttr ".cbx" -type "double3" 0.5 0.21437676135432571 6.4292646854725755 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak2";
	rename -uid "38DF974E-47AD-DE29-ECB8-F9BD5D221EFE";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0 0.7215814 0.42960754 0 0.7215814
		 0.42960754 0 0.7215814 0.42960754 0 0.7215814 0.42960754;
createNode polyTweak -n "polyTweak3";
	rename -uid "9D5F2B75-4F4C-6DA2-5786-679C04A5B7E1";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[12:15]" -type "float3"  0 0.25463772 -0.42769688 0
		 0.25463772 -0.42769688 0 0.25463772 -0.42769688 0 0.25463772 -0.42769688;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "3AC7D935-4D43-F6C9-D144-A78BF0E66BEB";
	setAttr ".dc" -type "componentList" 2 "e[15]" "e[17:18]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "D8B7DB26-4DC0-C1CB-5F0F-958E47411851";
	setAttr ".dc" -type "componentList" 1 "vtx[10:11]";
createNode polyCube -n "polyCube2";
	rename -uid "AEDDECA1-4DD2-9DA6-91E9-18B82F9BE297";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube3";
	rename -uid "60A1FCE2-44B1-EF6F-3EE6-2787C06CC72C";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "DAF6C1C5-4348-D6F8-8BBD-F88D7E96C448";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 0.37612122327288466 0 0 0 0 0.78888887262645346 0 0
		 0 0 1 0 0 0.57765614806245846 9.4686713651494152 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.40234911 11.351649 ;
	setAttr ".rs" 44725;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.18806061163644233 -0.16740234661722886 11.351649089224733 ;
	setAttr ".cbx" -type "double3" 0.18806061163644233 0.97210058437568514 11.351649089224733 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak4";
	rename -uid "6C1F4266-42F6-75C0-D955-D2A93D3DF2EC";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[0:3]" -type "float3"  0 -0.44444039 1.38297772 0
		 -0.44444039 1.38297772 0 0 1.38297772 0 0 1.38297772;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "C34FA60C-4405-F62B-45FB-A3AE757C68AC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[12:13]" "e[15]" "e[17]";
	setAttr ".ix" -type "matrix" 0.37612122327288466 0 0 0 0 0.78888887262645346 0 0
		 0 0 1 0 0 0.57765614806245846 9.4686713651494152 1;
	setAttr ".wt" 0.4605279266834259;
	setAttr ".re" 15;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak5";
	rename -uid "9ED3E7E6-42B2-75B2-D0A3-6C9FBC633F3C";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 0.7207067 ;
	setAttr ".tk[1]" -type "float3" 0 0 0.7207067 ;
	setAttr ".tk[2]" -type "float3" 0 -5.5879354e-09 0.33113551 ;
	setAttr ".tk[3]" -type "float3" 0 -5.5879354e-09 0.33113551 ;
	setAttr ".tk[8]" -type "float3" 0 -1.1111 2.3958628 ;
	setAttr ".tk[9]" -type "float3" 0 -1.1111 2.3958628 ;
	setAttr ".tk[10]" -type "float3" 0 1.1111004 2.8243911 ;
	setAttr ".tk[11]" -type "float3" 0 1.1111004 2.8243911 ;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "B065488B-4B23-502C-028D-66BE4ECBF5D6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[4:5]" "e[8:9]" "e[16]" "e[19]" "e[22]" "e[26]";
	setAttr ".ix" -type "matrix" 0.37612122327288466 0 0 0 0 0.78888887262645346 0 0
		 0 0 1 0 0 0.57765614806245846 9.4686713651494152 1;
	setAttr ".wt" 0.66326206922531128;
	setAttr ".dr" no;
	setAttr ".re" 16;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "45BD9A36-4223-B8AA-3D28-7AA394D4F98C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[4:5]" "e[16]" "e[19]" "e[26]" "e[35]" "e[37]" "e[41]";
	setAttr ".ix" -type "matrix" 0.37612122327288466 0 0 0 0 0.78888887262645346 0 0
		 0 0 1 0 0 0.57765614806245846 9.4686713651494152 1;
	setAttr ".wt" 0.52462929487228394;
	setAttr ".dr" no;
	setAttr ".re" 16;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak6";
	rename -uid "4B4884C8-4069-4166-7CC2-F280A4636880";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0.27160248 -0.77914238 ;
	setAttr ".tk[1]" -type "float3" 0 0.27160248 -0.77914238 ;
	setAttr ".tk[6]" -type "float3" 0 0.074073389 0.79862094 ;
	setAttr ".tk[7]" -type "float3" 0 0.074073389 0.79862094 ;
	setAttr ".tk[8]" -type "float3" 0 0 0.097392797 ;
	setAttr ".tk[9]" -type "float3" 0 0 0.097392797 ;
	setAttr ".tk[10]" -type "float3" 0 0.12345567 0.25322127 ;
	setAttr ".tk[11]" -type "float3" 0 0.12345567 0.25322127 ;
	setAttr ".tk[12]" -type "float3" 0 0.66666055 0.40904975 ;
	setAttr ".tk[13]" -type "float3" 0 0.39505813 -0.66227102 ;
	setAttr ".tk[14]" -type "float3" 0 0.39505813 -0.66227102 ;
	setAttr ".tk[15]" -type "float3" 0 0.66666055 0.40904975 ;
	setAttr ".tk[16]" -type "float3" 0 0.024691133 -0.29217839 ;
	setAttr ".tk[17]" -type "float3" 0 0.024691133 -0.29217839 ;
	setAttr ".tk[24]" -type "float3" 0 -0.14814679 -0.23374271 ;
	setAttr ".tk[25]" -type "float3" 0 -0.14814679 -0.23374271 ;
createNode deleteComponent -n "deleteComponent3";
	rename -uid "9D2AD4C2-4543-BA39-A96B-3082D2261AAC";
	setAttr ".dc" -type "componentList" 10 "e[32]" "e[34]" "e[36]" "e[40]" "e[42:43]" "e[48]" "e[50]" "e[52]" "e[56]" "e[58:59]";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "91592D29-4A80-DF66-8C63-AEB4AD9E4775";
	setAttr ".dc" -type "componentList" 4 "vtx[19]" "vtx[22]" "vtx[27]" "vtx[30]";
createNode deleteComponent -n "deleteComponent5";
	rename -uid "30DF507C-48CD-ED42-ABE4-7395F48DC684";
	setAttr ".dc" -type "componentList" 4 "vtx[18]" "vtx[21]" "vtx[24]" "vtx[27]";
createNode deleteComponent -n "deleteComponent6";
	rename -uid "021021B8-4041-597A-EFE6-63A964C90201";
	setAttr ".dc" -type "componentList" 2 "vtx[18:19]" "vtx[22:23]";
createNode deleteComponent -n "deleteComponent7";
	rename -uid "B10A2F8B-4016-C4A3-615A-54AF6772FF7B";
	setAttr ".dc" -type "componentList" 2 "e[29]" "e[37]";
createNode deleteComponent -n "deleteComponent8";
	rename -uid "BDC41449-4966-BF03-149B-ACBD0955D7A7";
	setAttr ".dc" -type "componentList" 1 "vtx[22:23]";
createNode deleteComponent -n "deleteComponent9";
	rename -uid "5A40FBDD-45A9-0D42-AA74-0BAF1B2857CC";
	setAttr ".dc" -type "componentList" 1 "vtx[18:19]";
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "C2D667DD-46F9-DC3F-0632-00B08FC076FA";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 0.5335480806358327 0 0 0 0 0.85924317878134571 -0.51156735599305825 0
		 0 0.51156735599305825 0.85924317878134571 0 0 -1.9225585264402121 7.6382659930821148 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.20767622 7.4292622 ;
	setAttr ".rs" 57507;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.26677404031791635 -0.62756963190127046 7.4292617409413975 ;
	setAttr ".cbx" -type "double3" 0.26677404031791635 0.21221718809605616 7.4292624492200341 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "E9C2140D-462A-E5AB-2AED-2AA1B4F636CB";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 0.5335480806358327 0 0 0 0 0.85924317878134571 -0.51156735599305825 0
		 0 0.51156735599305825 0.85924317878134571 0 0 -1.9225585264402121 7.6382659930821148 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.06012788 7.6421318 ;
	setAttr ".rs" 36847;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.26677402441694442 -0.091961180551969113 7.6421310656171739 ;
	setAttr ".cbx" -type "double3" 0.26677402441694442 0.2122169418665012 7.6421323336883926 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak7";
	rename -uid "EAA50CD8-4CD7-C2A6-2A16-7C979EB75D4F";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[14:17]" -type "float3"  0 0.35132065 0.45690677 0
		 0.35132065 0.45690677 0 -0.10889751 0.18290685 0 -0.10889751 0.18290685;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "644234ED-43C4-24CE-10DC-DB8E5D41445A";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 0.5335480806358327 0 0 0 0 0.85924317878134571 -0.51156735599305825 0
		 0 0.51156735599305825 0.85924317878134571 0 0 -1.9225585264402121 7.6382659930821148 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.060127951 8.081605 ;
	setAttr ".rs" 36630;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.26677399261500062 -0.091961221312305996 8.0816043294393047 ;
	setAttr ".cbx" -type "double3" 0.26677399261500062 0.21221712550309557 8.0816054536345678 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak8";
	rename -uid "D6613639-41B4-97F4-EB2F-1F8B747483AF";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[18:21]" -type "float3"  0 -0.22482024 0.37761477 0
		 -0.22482024 0.37761477 0 -0.22482024 0.37761477 0 -0.22482024 0.37761477;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "D9587F13-4104-B141-C2B7-00A211E6FEF7";
	setAttr ".ics" -type "componentList" 1 "f[19]";
	setAttr ".ix" -type "matrix" 0.5335480806358327 0 0 0 0 0.85924317878134571 -0.51156735599305825 0
		 0 0.51156735599305825 0.85924317878134571 0 0 -1.9225585264402121 7.6382659930821148 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.091961376 8.3665771 ;
	setAttr ".rs" 38610;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.26677396081305682 -0.091961406634450293 8.0816058414448477 ;
	setAttr ".cbx" -type "double3" 0.26677396081305682 -0.091961339843338319 8.6515482400298112 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak9";
	rename -uid "989E957E-4D1A-EFAC-6768-15B8B2CF72D8";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[22:25]" -type "float3"  0 -0.29156384 0.48971915 0
		 -0.29156384 0.48971915 0 -0.29156384 0.48971915 0 -0.29156384 0.48971915;
createNode polyTweak -n "polyTweak10";
	rename -uid "06E5F128-42BF-5C2B-C4A3-BC8F6D985D7E";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[26:29]" -type "float3"  0 -0.14750573 -0.087820433
		 0 -0.14750573 -0.087820433 0 -0.14750573 -0.087820433 0 -0.14750573 -0.087820433;
createNode deleteComponent -n "deleteComponent10";
	rename -uid "99C57458-4F27-2281-DFF7-3D91C75D1233";
	setAttr ".dc" -type "componentList" 1 "e[39:40]";
createNode deleteComponent -n "deleteComponent11";
	rename -uid "5A949C03-43A5-88D1-E4C7-A481AC5250DA";
	setAttr ".dc" -type "componentList" 2 "e[35]" "e[38]";
createNode deleteComponent -n "deleteComponent12";
	rename -uid "F7FBAEAE-41A7-285E-5BB3-68BBE6A53DBA";
	setAttr ".dc" -type "componentList" 1 "e[37]";
createNode deleteComponent -n "deleteComponent13";
	rename -uid "ECCF6452-491A-E453-927F-8593DF4C0638";
	setAttr ".dc" -type "componentList" 1 "e[36]";
createNode polyCube -n "polyCube4";
	rename -uid "6096DF4B-4620-A07B-44A9-FD81AE0D73FC";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "86A160E3-42AB-B5F2-0F8E-5980DE77C839";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.30613997658466591 0 0 0 0 0.22198363121243814 -0.21081971619609027 0
		 0 0.27114983545024451 0.28550851961073187 0 0 -0.62872538988815552 6.0632788500231767 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.76430029 5.9205246 ;
	setAttr ".rs" 53311;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.15306998829233295 -0.87529212321949679 5.8151147321197652 ;
	setAttr ".cbx" -type "double3" 0.15306998829233295 -0.65330849200705865 6.0259344483158559 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "688B58BB-41D0-0983-8495-4B9914AB67EA";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.30613997658466591 0 0 0 0 0.22198363121243814 -0.21081971619609027 0
		 0 0.27114983545024451 0.28550851961073187 0 0 -0.62872538988815552 6.0632788500231767 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.76429999 5.210566 ;
	setAttr ".rs" 56554;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.15306998829233295 -0.87529170352863983 5.1446070127890273 ;
	setAttr ".cbx" -type "double3" 0.15306998829233295 -0.6533082797232187 5.2765255411657792 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak11";
	rename -uid "B7FDFA74-44EF-4233-7714-619C1C12368D";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0 1.21151543 -0.99183679 0
		 1.21151543 -0.99183679 0 1.98247921 -1.62300575 0 1.98247921 -1.62300575;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "34FCA215-461C-3DFF-5E1E-4199FCCF8A2D";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.30613997658466591 0 0 0 0 0.22198363121243814 -0.21081971619609027 0
		 0 0.27114983545024451 0.28550851961073187 0 0 -0.62872538988815552 6.0632788500231767 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.58885032 5.0575581 ;
	setAttr ".rs" 59133;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.15306998829233295 -0.63863881795765109 4.9732374034478806 ;
	setAttr ".cbx" -type "double3" 0.15306998829233295 -0.53906179198164139 5.141878613507548 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak12";
	rename -uid "BFA0CF10-463C-2CE1-CEFD-0781F34B8CEA";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[12:15]" -type "float3"  0 0.57347536 -0.048150402
		 0 0.57347536 -0.048150402 0 0.94600385 0.098305225 0 0.94600385 0.098305225;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "7AAC8885-4343-DA4F-F19F-D28D1A796054";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.30613997658466591 0 0 0 0 0.22198363121243814 -0.21081971619609027 0
		 0 0.27114983545024451 0.28550851961073187 0 0 -0.62872538988815552 6.0632788500231767 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.033383425 5.0575581 ;
	setAttr ".rs" 55549;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.15306998829233295 0.032169344174078351 4.9732367056610096 ;
	setAttr ".cbx" -type "double3" 0.15306998829233295 0.034597502816378745 5.141879053813958 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak13";
	rename -uid "14308E9B-4E57-784B-07F5-87997042BE19";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[16:19]" -type "float3"  0 1.35298371 0.99904412 0
		 1.35298371 0.99904412 0 1.59458816 1.17744446 0 1.59458816 1.17744446;
createNode polyCube -n "polyCube5";
	rename -uid "91FDDDEA-4256-008D-4EBB-D484BCBC6EFF";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "DBF1ED54-46EB-E000-06AB-4281810DAE33";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" 0.071079766919866769 0 0 0 0 0.86666927649342973 0 0
		 0 0 0.86666927649342973 0 0 -0.24354925501691366 5.5690936759018621 1;
	setAttr ".wt" 0.74215841293334961;
	setAttr ".re" 9;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak14";
	rename -uid "75D71B19-4398-F632-5278-68BEF53BFBF7";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[4:7]" -type "float3"  0 0 0.60218018 0 0 0.60218018
		 0 0 0.60218018 0 0 0.60218018;
createNode deleteComponent -n "deleteComponent14";
	rename -uid "E81D8D24-43D6-DD7C-B65C-4BBA9E95A2E7";
	setAttr ".dc" -type "componentList" 2 "e[16]" "e[19]";
createNode deleteComponent -n "deleteComponent15";
	rename -uid "6CA94810-4326-62D0-E01A-5981246D98AB";
	setAttr ".dc" -type "componentList" 1 "e[17]";
createNode polyCube -n "polyCube6";
	rename -uid "3910C81F-495F-E113-EB20-AB96C6EEA787";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube7";
	rename -uid "8E602692-45A7-482F-C272-50A725038F86";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	rename -uid "1BBD4C21-4B40-5C58-DCA5-099BF9CFB497";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.6214665251026209 0 0 0 0 1 0 0 0 0 1 0 0 1.1249291530288517 1.9236163550229959 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.1601099 2.0128131 ;
	setAttr ".rs" 58352;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.31073326255131045 1.0380510321296512 1.4236163550229959 ;
	setAttr ".cbx" -type "double3" 0.31073326255131045 1.2821686497367679 2.6020098977895669 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak15";
	rename -uid "BAFB566E-46B8-6ABC-3B9B-44A8E986A1BB";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  0 0.41312188 0.17839354 0
		 0.41312188 0.17839354 0 -0.037556548 -0.20656097 0 -0.037556548 -0.20656097 0 -0.037556548
		 0.1032805 0 -0.037556548 0.1032805 0 0.6572395 0 0 0.6572395 0;
createNode polyTweak -n "polyTweak16";
	rename -uid "0485C40F-4FC9-C50A-BEFC-DEB2BDCCB8B5";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 0.075113103 ;
	setAttr ".tk[1]" -type "float3" 0 0 0.075113103 ;
	setAttr ".tk[2]" -type "float3" 0 0 0.075113103 ;
	setAttr ".tk[3]" -type "float3" 0 0 0.075113103 ;
	setAttr ".tk[8]" -type "float3" 0 0 -1.0609729 ;
	setAttr ".tk[9]" -type "float3" 0 0 -1.0609729 ;
	setAttr ".tk[10]" -type "float3" 0 0 -2.272172 ;
	setAttr ".tk[11]" -type "float3" 0 0 -2.272172 ;
createNode deleteComponent -n "deleteComponent16";
	rename -uid "B4BAD636-4C95-97C8-6651-F9B75E6CD71B";
	setAttr ".dc" -type "componentList" 1 "e[10:11]";
createNode polyCube -n "polyCube8";
	rename -uid "2CBB580D-4E55-DCD2-CE87-D2AD2E04285D";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	rename -uid "A299FA54-4033-9987-357B-1D9AC556978C";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.79918007136321412 0 0 0 0 1.1554320978747643 0 0 0 0 0.60555555773950387 0
		 0 1.6524879681963371 -1.7276010576598073 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.2296927 -1.9106892 ;
	setAttr ".rs" 39555;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.39959003568160706 1.0747719192589549 -3.3166904874712095 ;
	setAttr ".cbx" -type "double3" 0.39959003568160706 1.3846133659150353 -0.50468809531613301 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak17";
	rename -uid "294FEA55-4FA2-DF10-C59A-DC89F131F242";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0.26816067 1.5194894 ;
	setAttr ".tk[1]" -type "float3" 0 0.26816067 1.5194894 ;
	setAttr ".tk[6]" -type "float3" 0 0 -2.1241844 ;
	setAttr ".tk[7]" -type "float3" 0 0 -2.1241844 ;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "6F942983-411A-F5D5-E673-538CB7E4AFB4";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[7]" -type "float2" -4.2726265e-06 -0.036065668 ;
	setAttr ".uvtk[10]" -type "float2" 0.017243138 -0.0014890824 ;
	setAttr ".uvtk[15]" -type "float2" -2.7780986e-06 3.8633141e-07 ;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "BA17DE24-4C55-D910-FD9B-C5A7CA0B550D";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[9]";
	setAttr ".ix" -type "matrix" 0.79918007136321412 0 0 0 0 1.1554320978747643 0 0 0 0 0.60555555773950387 0
		 0 1.6524879681963371 -1.7276010576598073 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak18";
	rename -uid "D5A1A023-4F85-9C1B-B853-29BFFDCA8F45";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0 -0.26816067 0 0 2.9802322e-08
		 0 0 -0.26816067 0 0 -0.26816067 0;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "101AD8E8-4302-C555-18A0-EE953E2D73B8";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[6]" -type "float2" 4.1055036e-06 -0.036426246 ;
	setAttr ".uvtk[12]" -type "float2" -0.017243138 -0.0014890824 ;
	setAttr ".uvtk[14]" -type "float2" 4.1051785e-06 -0.0036052752 ;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "C3C351A8-49B9-7417-3CDB-48884FB350A3";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[8]";
	setAttr ".ix" -type "matrix" 0.79918007136321412 0 0 0 0 1.1554320978747643 0 0 0 0 0.60555555773950387 0
		 0 1.6524879681963371 -1.7276010576598073 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak19";
	rename -uid "B65E35C6-4E60-CF66-4505-60B4BC5282BC";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  0 0.2681607 0;
createNode deleteComponent -n "deleteComponent17";
	rename -uid "899F5F97-41A0-F1CE-4BCE-239F68AC03DA";
	setAttr ".dc" -type "componentList" 1 "e[10:11]";
createNode polyCube -n "polyCube9";
	rename -uid "B35431DC-4270-1212-F2B5-3DADDA91CC4D";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube10";
	rename -uid "7A89D2B9-4AAA-49E8-947A-F6B039D48AF6";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	rename -uid "94A7E221-4B8D-7DB4-182C-9CAD6FC373B3";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.6480103039598476 0 0 0 0 0.6480103039598476 0 0 0 0 0.6480103039598476 0
		 0 -0.50081251752857647 -5.0952230044211735 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.90488338 -5.0081253 ;
	setAttr ".rs" 54766;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.3240051519799238 -0.90488339670587836 -5.8982661843129431 ;
	setAttr ".cbx" -type "double3" 0.3240051519799238 -0.90488339670587836 -4.117984290377966 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak20";
	rename -uid "8DB3C91B-42A8-AEB2-7E88-D8B730521468";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  0 -0.12355623 1.0080604553
		 0 -0.12355623 1.0080604553 0 -0.20161214 1.3527776 0 -0.20161214 1.3527776 0 -0.20161214
		 -1.083961606 0 -0.20161214 -1.083961606 0 -0.12355623 -0.73924446 0 -0.12355623 -0.73924446;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	rename -uid "658CB383-4599-1D47-7DF1-91B01275DC58";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.6480103039598476 0 0 0 0 0.6480103039598476 0 0 0 0 0.6480103039598476 0
		 0 -0.50081251752857647 -5.0952230044211735 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.90488344 -5.0081253 ;
	setAttr ".rs" 38684;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.28415828429490236 -0.90488343533030235 -5.6618085035771175 ;
	setAttr ".cbx" -type "double3" 0.28415828429490236 -0.90488343533030235 -4.354442241484759 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak21";
	rename -uid "F7473BE8-4E33-8CF1-5EB5-98B646770055";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0.061491095 1.8171196e-08
		 0.3648985 -0.061491095 1.8171196e-08 0.3648985 -0.061491095 1.8171196e-08 -0.36489838
		 0.061491095 1.8171196e-08 -0.36489838;
createNode polyCube -n "polyCube11";
	rename -uid "E2C80AB3-41A9-7FEA-8C41-4E9AF0836272";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	rename -uid "EE23D03E-4F19-21FC-64D4-1C9096E19BE5";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 1.2925356025870873 0 0 0 0 1.2925356025870873 0 0 0 0 0.40563280084415659 0
		 0 -0.93791261749837895 -2.2189639974961657 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.93791264 -2.4217803 ;
	setAttr ".rs" 34758;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.64626780129354366 -1.5841804187919226 -2.4217803979182442 ;
	setAttr ".cbx" -type "double3" 0.64626780129354366 -0.29164481620483529 -2.4217803979182442 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	rename -uid "2756999A-4693-6EF9-5716-5082606A969A";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 1.2925356025870873 0 0 0 0 1.2925356025870873 0 0 0 0 0.40563280084415659 0
		 0 -0.93791261749837895 -2.2189639974961657 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.93791264 -2.4217806 ;
	setAttr ".rs" 62001;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.50019347461343988 -1.4381060921118189 -2.4217805429838379 ;
	setAttr ".cbx" -type "double3" 0.50019347461343988 -0.43771914288493907 -2.4217805429838379 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak22";
	rename -uid "A9DDFF05-49B9-C01A-123B-B580C4667899";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0.11301374 -0.11301372 1.0701186e-07
		 -0.11301374 -0.11301372 1.0701186e-07 -0.11301374 0.11301372 1.0701186e-07 0.11301374
		 0.11301372 1.0701186e-07;
createNode polyExtrudeFace -n "polyExtrudeFace18";
	rename -uid "22A95902-4A49-30B2-1CA4-B3AF9F9636B6";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 1.2925356025870873 0 0 0 0 1.2925356025870873 0 0 0 0 0.40563280084415659 0
		 0 -0.93791261749837895 -2.2189639974961657 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.93791264 -2.0161476 ;
	setAttr ".rs" 49241;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.64626768573185545 -1.5841803417507971 -2.0161475970740872 ;
	setAttr ".cbx" -type "double3" 0.64626768573185545 -0.29164493176652351 -2.0161475970740872 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak23";
	rename -uid "3183FDE3-48DD-BB83-E6E3-5FB58B835FA0";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[12:15]" -type "float3"  0 0 -2.67879128 0 0 -2.67879128
		 0 0 -2.67879128 0 0 -2.67879128;
createNode polyExtrudeFace -n "polyExtrudeFace19";
	rename -uid "A0000ABA-460D-EE10-65B3-4C81A643A54F";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 1.2925356025870873 0 0 0 0 1.2925356025870873 0 0 0 0 0.40563280084415659 0
		 0 -0.93791261749837895 -2.2189639974961657 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.93791264 -2.0161476 ;
	setAttr ".rs" 45354;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.35188541754198815 -1.2897980350403671 -2.0161475970740872 ;
	setAttr ".cbx" -type "double3" 0.35188541754198815 -0.58602719995639085 -2.0161475970740872 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak24";
	rename -uid "1D4A7F70-4FC4-B60F-359F-CD84068F1C46";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[16:19]" -type "float3"  0.22775561 0.22775565 0 -0.22775561
		 0.22775565 0 -0.22775561 -0.22775562 0 0.22775561 -0.22775562 0;
createNode polyExtrudeFace -n "polyExtrudeFace20";
	rename -uid "C99F2E96-49B5-E146-46ED-3394DF6822E4";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 1.2925356025870873 0 0 0 0 1.2925356025870873 0 0 0 0 0.40563280084415659 0
		 0 -0.93791261749837895 -2.2189639974961657 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -1.0422794 -1.0182667 ;
	setAttr ".rs" 44478;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.54360576359987312 -1.5858851077747933 -1.0182667139247952 ;
	setAttr ".cbx" -type "double3" 0.54360576359987312 -0.49867358057504729 -1.0182667139247952 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak25";
	rename -uid "45295A69-4A5D-1D6D-F6D8-888F0114B2F8";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[20:23]" -type "float3"  -0.1483289 -0.22907458 2.46005964
		 0.1483289 -0.22907458 2.46005964 0.1483289 0.067583188 2.46005964 -0.1483289 0.067583188
		 2.46005964;
createNode polyCube -n "polyCube12";
	rename -uid "6799E7F6-4B59-CEB0-EA10-079AB68C6E40";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube13";
	rename -uid "AD10E8CD-49DF-1CF5-758C-809AD2CCECF2";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace21";
	rename -uid "9B9A7702-4491-9B35-41DA-C9B885A64805";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.55431872853545161 0 0 0 0 0.55555554723755374 0 0
		 0 0 1 0 0 1.3632220205491936 -5.5679836881792184 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.363222 -6.8986969 ;
	setAttr ".rs" 51611;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.27715936426772581 1.0854442469304169 -6.898696960273945 ;
	setAttr ".cbx" -type "double3" 0.27715936426772581 1.6409997941679704 -6.898696960273945 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak26";
	rename -uid "F1B746FB-4978-01F3-892B-B1B1E839C559";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[4:7]" -type "float3"  0 0 -0.83071321 0 0 -0.83071321
		 0 0 -0.83071321 0 0 -0.83071321;
createNode polyExtrudeFace -n "polyExtrudeFace22";
	rename -uid "714C02FF-4046-2A14-D5AB-91868E655176";
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 0.55431872853545161 0 0 0 0 0.55555554723755374 0 0
		 0 0 1 0 0 1.3632220205491936 -5.5679836881792184 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.6409998 -10.104397 ;
	setAttr ".rs" 47728;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.27715936426772581 1.6409997941679704 -13.310096324745381 ;
	setAttr ".cbx" -type "double3" 0.27715936426772581 1.6409997941679704 -6.898696960273945 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak27";
	rename -uid "8D462328-4D9B-675F-C0FF-21848A5275A2";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0 0 -6.41139936 0 0 -6.41139936
		 0 0 -6.41139936 0 0 -6.41139936;
createNode polyTweak -n "polyTweak28";
	rename -uid "6C88B68F-4E49-B7C5-0A96-33A136BFCED0";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[12:15]" -type "float3"  0 0.38340625 0 0 0.38340625
		 0 0 0.38340625 0 0 0.38340625 0;
createNode deleteComponent -n "deleteComponent18";
	rename -uid "EA066DF7-4048-79D7-35EA-8FB8A259A4E1";
	setAttr ".dc" -type "componentList" 2 "e[8:9]" "e[12:13]";
createNode deleteComponent -n "deleteComponent19";
	rename -uid "E98699E2-4533-F2CF-F6C8-D3B796085831";
	setAttr ".dc" -type "componentList" 1 "vtx[6:7]";
createNode deleteComponent -n "deleteComponent20";
	rename -uid "F6C3D36F-410E-FA9C-60E9-C7B709705655";
	setAttr ".dc" -type "componentList" 1 "e[3]";
createNode deleteComponent -n "deleteComponent21";
	rename -uid "8A1B958D-4691-A61F-F379-1E84E5BC7B7C";
	setAttr ".dc" -type "componentList" 1 "vtx[6:7]";
createNode deleteComponent -n "deleteComponent22";
	rename -uid "2B62317E-45DC-9C27-A08D-69BF59EFDB69";
	setAttr ".dc" -type "componentList" 1 "e[7]";
createNode deleteComponent -n "deleteComponent23";
	rename -uid "B3588D84-452F-D0E7-161A-95BC314963CF";
	setAttr ".dc" -type "componentList" 1 "vtx[6:7]";
createNode polyCube -n "polyCube14";
	rename -uid "0FD1B220-42C8-42EA-996E-8E9CA20C0D37";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace23";
	rename -uid "883335F8-494E-74A2-2E47-589228BD24FC";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 1.4181238190311936 0 0 0 0 1.4181238190311936 0 0 0 0 1.4181238190311936 0
		 0 0.66031066620351508 -7.3273183604519145 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.66031069 -13.42989 ;
	setAttr ".rs" 46610;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.70906190951559678 -0.048751243312081693 -13.42988988171617 ;
	setAttr ".cbx" -type "double3" 0.70906190951559678 1.3693725757191118 -13.42988988171617 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak29";
	rename -uid "02D5043E-4286-DEDE-4BC5-1C8B5364365E";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[4:7]" -type "float3"  0 0 -3.80327129 0 0 -3.80327129
		 0 0 -3.80327129 0 0 -3.80327129;
createNode polyExtrudeFace -n "polyExtrudeFace24";
	rename -uid "E1085B6F-41AE-7D06-5149-0CB03FC5F9B3";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 1.4181238190311936 0 0 0 0 1.4181238190311936 0 0 0 0 1.4181238190311936 0
		 0 0.66031066620351508 -7.3273183604519145 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.66031069 -13.42989 ;
	setAttr ".rs" 57455;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65500843704272438 0.0053022291607907057 -13.42988988171617 ;
	setAttr ".cbx" -type "double3" 0.65500843704272438 1.3153191032462395 -13.42988988171617 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak30";
	rename -uid "2234BF29-4067-A8D9-28DE-3DBE14CBBA73";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0.038116187 -0.038116187 0
		 -0.038116187 -0.038116187 0 -0.038116187 0.038116187 0 0.038116187 0.038116187 0;
createNode polyUnite -n "polyUnite1";
	rename -uid "394BFC23-4D30-D2F8-AF62-069919854CBC";
	setAttr -s 14 ".ip";
	setAttr -s 14 ".im";
createNode groupId -n "groupId1";
	rename -uid "55B34A97-402A-C59B-F93D-3BAD0EA7D605";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "66F9FD62-419B-AD5D-C425-41BEE7E5793F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:20]";
createNode groupId -n "groupId2";
	rename -uid "05F87260-4E3E-8AA2-2B6B-F5A7C7B187CC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "571A4092-4859-11A0-768B-0F93C120D59A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "C1B12F70-4C08-E8E4-B173-F4A882544674";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId4";
	rename -uid "02A9625C-4AC0-4F18-6729-4CB270548908";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "BB0A2FA7-408B-6B67-8B3D-0AAA15191AB8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "F70392CF-4109-3C46-75EE-62A0EBC7AF6C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:15]";
createNode groupId -n "groupId6";
	rename -uid "75D7B245-4C06-D0B7-8C6C-C997845B1E6B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	rename -uid "0C815036-4079-4B76-E06B-60B480485CE0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "0CDE3692-4B9D-E25E-5703-57A1AF677733";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:21]";
createNode groupId -n "groupId8";
	rename -uid "8C826125-4B62-423C-6255-ACA1B86DB0FF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	rename -uid "D6E7D49E-48D8-4F35-CA14-0183529BBE81";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "499373CD-4190-4C44-27C8-309596844723";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:6]";
createNode groupId -n "groupId10";
	rename -uid "7E1FEF45-4E28-4349-D2FF-05AF85C7BAD5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	rename -uid "BBE572F9-435B-D0C7-6032-029E50D2297F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "BB2E85C4-462C-E72A-06F5-0AB718A711E6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId12";
	rename -uid "0CA4F591-4D83-8ADA-1BA7-5CACBD75927D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	rename -uid "3501E7F6-4A0A-9A84-2B47-E3BACF8E42DD";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "A7D45014-42F6-2530-C4E3-95AEBE059720";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:7]";
createNode groupId -n "groupId14";
	rename -uid "3A739070-40AA-0A32-F67D-5F98B371873B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId15";
	rename -uid "34D52F1A-489C-F6FB-4054-289BBB4E0FFE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "5A79E6A4-476E-F27B-8123-97A7AB0F95D1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:6]";
createNode groupId -n "groupId16";
	rename -uid "2EC9B98B-4A4F-7A71-9B3A-97A02ED9D477";
	setAttr ".ihi" 0;
createNode groupId -n "groupId17";
	rename -uid "8AFFEDC2-4E43-34E4-1C66-0E85787BAAD8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "5482C1A2-4541-3ECB-3DB9-098210E6EF73";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId18";
	rename -uid "8897B982-46F9-B5F2-44DC-CF9C85FE3356";
	setAttr ".ihi" 0;
createNode groupId -n "groupId19";
	rename -uid "72805AE2-40DC-7B3E-A870-AC88830FCD7D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "4EDA24B3-470B-F684-D68B-61A5AF7CAF29";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:13]";
createNode groupId -n "groupId20";
	rename -uid "A240F84E-4278-A943-A062-409441F2F243";
	setAttr ".ihi" 0;
createNode groupId -n "groupId21";
	rename -uid "E97DB6A2-4C45-BA09-EFAA-639A515A5AD9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	rename -uid "03B52EA8-4C82-7FE1-FC78-9AA9E4CE203E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:25]";
createNode groupId -n "groupId22";
	rename -uid "B609136F-4E2A-189D-AD41-A7906F2C7ABD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId23";
	rename -uid "32B9E653-4D5B-09F7-C059-728610020301";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	rename -uid "BFBEC20D-42C5-D074-E7FC-3CBCD2E9C872";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:13]";
createNode groupId -n "groupId24";
	rename -uid "6AA1ECEA-47FE-4106-1C43-9EBBF2F3410B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId25";
	rename -uid "779ECA8A-4C54-62D5-7F44-E686932F8FDE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	rename -uid "C6809463-484C-A65C-39CB-38BC49E8D046";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:7]";
createNode groupId -n "groupId26";
	rename -uid "773DE81C-45A1-CF9E-1FF0-72AE1A7990BA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId27";
	rename -uid "68D5B0E9-4758-386E-01FF-CB86B4D21933";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	rename -uid "DBD5F5D0-4C06-D428-E0CF-7480FB05D35E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId28";
	rename -uid "FC69CD23-424D-9347-AC1A-36B19165BF4A";
	setAttr ".ihi" 0;
createNode lambert -n "pixelMeasure";
	rename -uid "48B84E28-445F-2431-AEF5-7D8B4E54FA05";
createNode shadingEngine -n "lambert2SG";
	rename -uid "513183F8-4C82-8B19-5C70-F0A95C7D92B7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "3CB6D849-4B0F-6D0D-8F78-D1A9F7EB64A5";
createNode file -n "file1";
	rename -uid "9580080C-4F83-C22D-3F99-79A116130C24";
	setAttr ".ftn" -type "string" "C:/Users/Liam - Moose/Documents/UVminecraftTexture.png";
	setAttr ".ft" 0;
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "F7C633F3-46B4-4D07-5949-7E87CD3B6284";
createNode polyMapDel -n "polyMapDel1";
	rename -uid "660B2AF9-417C-2EC3-14A0-5B8095BA4857";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:166]";
createNode polyAutoProj -n "polyAutoProj1";
	rename -uid "3E85A081-469E-8E24-0A90-F7A746406A24";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[3]" "f[6]" "f[12]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 2.8223395347595215 2.8223395347595215 2.8223395347595215 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "46ECCC52-4590-4FE6-3226-DCA84B61CBF0";
	setAttr ".uopa" yes;
	setAttr -s 9 ".uvtk[0:8]" -type "float2" 0.20650357 -0.14991105 -0.066314742
		 0.080134913 -0.40571463 -0.5698868 -0.077844538 -0.56917882 -0.077845193 -0.84452069
		 -0.56891561 -0.56988668 -0.56891626 -0.84522831 -0.0080512837 -0.84452057 -0.0080508366
		 -0.74478936;
createNode polyAutoProj -n "polyAutoProj2";
	rename -uid "F21A27D5-4204-A611-3E41-E7999455F66F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[4]" "f[9]" "f[14]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 2.8223395347595215 2.8223395347595215 2.8223395347595215 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "9261F3EB-424B-E74E-B9A4-A6A54E9A4EB3";
	setAttr ".uopa" yes;
	setAttr -s 9 ".uvtk[9:17]" -type "float2" -0.21369866 0.066879436 -0.48209292
		 -0.15943608 -0.20235583 -0.5719049 0.12019747 -0.57260144 -0.20235518 -0.84278178
		 0.28075251 -0.84347796 0.28075185 -0.57260132 -0.2710177 -0.74466765 -0.27101728
		 -0.84278166;
createNode polyAutoProj -n "polyAutoProj3";
	rename -uid "89DF9CA3-40D3-6716-D39A-40BBA1CD7FC0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 1.0094175338745117 1.0094175338745117 1.0094175338745117 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "4431994F-4438-E2B2-DB1E-1B8BBABF73C7";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[18:25]" -type "float2" -0.077833951 -0.44619599
		 -0.077834412 -0.85560751 0.20553656 -0.85560668 0.20553701 -0.44619414 0.3654635
		 -0.44619414 0.3654635 0.084761605 0.20553701 0.084761605 -0.077833951 0.084759794;
createNode polyAutoProj -n "polyAutoProj4";
	rename -uid "823464A7-47C5-2BC1-7C07-6CB4D1624962";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[20]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 1.0094175338745117 1.0094175338745117 1.0094175338745117 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "54A2C15B-4963-CFCF-D9CE-F9872A43E458";
	setAttr ".uopa" yes;
	setAttr -s 34 ".uvtk[0:33]" -type "float2" -0.15531971 0.0028762943
		 -0.15531971 0.0028762943 -0.15531971 0.0028762943 -0.15531971 0.0028762943 -0.15531971
		 0.0028762943 -0.15531971 0.0028762943 -0.15531971 0.0028762943 -0.15531971 0.0028762943
		 -0.15531971 0.0028762943 -0.10929906 -0.063278399 -0.10929906 -0.063278399 -0.10929906
		 -0.063278399 -0.10929906 -0.063278399 -0.10929906 -0.063278399 -0.10929906 -0.063278399
		 -0.10929906 -0.063278399 -0.10929906 -0.063278399 -0.10929906 -0.063278399 -0.10929906
		 -0.063278399 -0.10929906 -0.063278399 -0.10929906 -0.063278399 -0.10929906 -0.063278399
		 -0.10929906 -0.063278399 -0.10929906 -0.063278399 -0.10929906 -0.063278399 -0.10929906
		 -0.063278399 -0.41775459 -0.30228624 -0.41775459 -0.82759345 -0.13739823 -0.82759523
		 0.020826917 -0.82759523 0.020826917 -0.30228803 -0.13739823 -0.30228803 -0.13739868
		 0.10276908 -0.41775507 0.10276996;
createNode polyAutoProj -n "polyAutoProj5";
	rename -uid "AC5C85C8-41E5-CBE0-A7E1-F6AADE4DAB29";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "f[47]" "f[50]" "f[54]" "f[58]" "f[62]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 1.546297550201416 1.546297550201416 1.546297550201416 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "D32F36A3-4559-5E23-80D8-C7842596E0DE";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk[34:45]" -type "float2" -0.17337993 -0.85648435 -0.017253615
		 -0.69209015 -0.1450702 -0.57070106 -0.30119693 -0.73509532 -0.017253615 -0.18462652
		 -0.14507064 -0.26058456 -0.15351687 -0.085952893 -0.2108532 -0.18305591 -0.54116285
		 -0.085952893 -0.53976476 -0.18305591 -0.63278818 0.033865169 -0.63139009 -0.3169699;
createNode polyAutoProj -n "polyAutoProj6";
	rename -uid "8CCD207C-4461-99BF-1C72-9EA7B3A6B982";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "f[48]" "f[52]" "f[56]" "f[60]" "f[64]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 1.546297550201416 1.546297550201416 1.546297550201416 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "85BBF519-4DCE-F8CA-1DBA-038AB5B4E4FD";
	setAttr ".uopa" yes;
	setAttr -s 41 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.020134037 0.008628875 ;
	setAttr ".uvtk[1]" -type "float2" 0.020134037 0.008628875 ;
	setAttr ".uvtk[2]" -type "float2" 0.02013403 0.008628875 ;
	setAttr ".uvtk[3]" -type "float2" 0.020134037 0.008628875 ;
	setAttr ".uvtk[4]" -type "float2" 0.020134037 0.0086288676 ;
	setAttr ".uvtk[5]" -type "float2" 0.02013403 0.008628875 ;
	setAttr ".uvtk[6]" -type "float2" 0.02013403 0.0086288676 ;
	setAttr ".uvtk[7]" -type "float2" 0.020134037 0.0086288676 ;
	setAttr ".uvtk[8]" -type "float2" 0.020134037 0.0086288676 ;
	setAttr ".uvtk[26]" -type "float2" 0.020134037 0.0086288676 ;
	setAttr ".uvtk[27]" -type "float2" 0.020134037 0.0086288676 ;
	setAttr ".uvtk[28]" -type "float2" 0.020134037 0.0086288676 ;
	setAttr ".uvtk[29]" -type "float2" 0.020134037 0.0086288676 ;
	setAttr ".uvtk[30]" -type "float2" 0.020134037 0.0086288676 ;
	setAttr ".uvtk[31]" -type "float2" 0.020134037 0.0086288676 ;
	setAttr ".uvtk[32]" -type "float2" 0.020134037 0.008628875 ;
	setAttr ".uvtk[33]" -type "float2" 0.020134037 0.008628875 ;
	setAttr ".uvtk[34]" -type "float2" 0.020134035 0.0086288676 ;
	setAttr ".uvtk[35]" -type "float2" 0.020134035 0.008628875 ;
	setAttr ".uvtk[36]" -type "float2" 0.020134035 0.008628875 ;
	setAttr ".uvtk[37]" -type "float2" 0.020134037 0.008628875 ;
	setAttr ".uvtk[38]" -type "float2" 0.020134035 0.0086288713 ;
	setAttr ".uvtk[39]" -type "float2" 0.020134035 0.0086288713 ;
	setAttr ".uvtk[40]" -type "float2" 0.020134035 0.0086288713 ;
	setAttr ".uvtk[41]" -type "float2" 0.020134037 0.0086288713 ;
	setAttr ".uvtk[42]" -type "float2" 0.020134037 0.0086288713 ;
	setAttr ".uvtk[43]" -type "float2" 0.020134037 0.0086288713 ;
	setAttr ".uvtk[44]" -type "float2" 0.020134037 0.0086288732 ;
	setAttr ".uvtk[45]" -type "float2" 0.020134037 0.008628875 ;
	setAttr ".uvtk[46]" -type "float2" 0.29568031 -0.15094167 ;
	setAttr ".uvtk[47]" -type "float2" 0.14130823 0.011605486 ;
	setAttr ".uvtk[48]" -type "float2" 0.014927382 -0.1084197 ;
	setAttr ".uvtk[49]" -type "float2" 0.16929986 -0.27096683 ;
	setAttr ".uvtk[50]" -type "float2" 0.16929944 -0.57759893 ;
	setAttr ".uvtk[51]" -type "float2" 0.29568031 -0.6527034 ;
	setAttr ".uvtk[52]" -type "float2" 0.10425601 -0.65425646 ;
	setAttr ".uvtk[53]" -type "float2" 0.16094813 -0.75026846 ;
	setAttr ".uvtk[54]" -type "float2" -0.2209598 -0.65425646 ;
	setAttr ".uvtk[55]" -type "float2" -0.22234236 -0.75026846 ;
	setAttr ".uvtk[56]" -type "float2" -0.31155574 -0.52184713 ;
	setAttr ".uvtk[57]" -type "float2" -0.31293806 -0.86874008 ;
createNode polyAutoProj -n "polyAutoProj7";
	rename -uid "E63EB936-4167-9F38-AF39-9487F840C950";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[70]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 0.86666932702064514 0.86666932702064514 0.86666932702064514 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV9";
	rename -uid "F8F31D17-4732-0E97-3A5F-9093987928CB";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk[58:63]" -type "float2" -0.25556156 -0.22794694 -0.25556156
		 -0.9221375 0.34185034 -0.9221375 0.1165462 -0.22794694 0.22919826 0.013229623 -0.25556156
		 0.013229623;
createNode polyAutoProj -n "polyAutoProj8";
	rename -uid "8AC2E1CA-4F8F-1E84-AD8B-249AFE2C4658";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[69]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 0.86666932702064514 0.86666932702064514 0.86666932702064514 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV10";
	rename -uid "8094F6D7-4596-61CD-AAFD-199D4CDBD710";
	setAttr ".uopa" yes;
	setAttr -s 70 ".uvtk[0:69]" -type "float2" 0 0.11505164 0 0.11505164
		 0 0.11505163 0 0.11505163 0 0.11505163 0 0.11505163 0 0.11505163 0 0.11505163 0 0.11505163
		 0 0.11505164 0 0.11505164 0 0.11505164 0 0.11505164 0 0.11505164 0 0.11505164 0 0.11505164
		 0 0.11505164 0 0.11505164 0 0.11505164 0 0.11505164 0 0.11505164 0 0.11505164 0 0.11505164
		 0 0.11505164 0 0.11505164 0 0.11505164 0 0.11505163 0 0.11505163 0 0.11505163 0 0.11505163
		 0 0.11505163 0 0.11505163 0 0.11505164 0 0.11505164 0 0.11505163 0 0.11505163 0 0.11505163
		 0 0.11505163 0 0.11505163 0 0.11505163 0 0.11505163 0 0.11505163 0 0.11505163 0 0.11505163
		 0 0.11505163 0 0.11505163 0 0.11505163 0 0.11505163 0 0.11505163 0 0.11505163 0 0.11505163
		 0 0.11505163 0 0.11505163 0 0.11505163 0 0.11505163 0 0.11505163 0 0.11505163 0 0.11505163
		 0 0.11505163 0 0.11505163 0 0.11505163 0 0.11505163 0 0.11505163 0 0.11505163 -0.36142343
		 0.060893416 -0.58793241 -0.63700944 0.012674238 -0.63700944 0.012674238 0.060893416
		 0.012674238 0.30335972 -0.47467792 0.30335972;
createNode polyAutoProj -n "polyAutoProj9";
	rename -uid "0FF1932A-402B-61FB-6313-508D2A94525F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 0.83209037780761719 0.83209037780761719 0.83209037780761719 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV11";
	rename -uid "BB934837-484C-A642-E2E6-EEBD833FCF1E";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[70:73]" -type "float2" 0.1384819 0.0082276613 -0.45487389
		 0.0082276613 -0.45487389 -0.91713554 0.1384819 -0.91713554;
createNode polyAutoProj -n "polyAutoProj10";
	rename -uid "8C0B76E5-405B-7E49-3DC5-4BBE8358ADE4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 1.9825533628463745 1.9825533628463745 1.9825533628463745 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV12";
	rename -uid "76A445CF-4D8D-B97D-85BE-E8B6C97973E5";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[74:77]" -type "float2" 0.45547509 0.049996957 0.21182439
		 0.049996957 0.21182439 -0.85535836 0.45547509 -0.85535836;
createNode polyAutoProj -n "polyAutoProj11";
	rename -uid "F60CB519-4A2A-D270-7243-73B5815FC42A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 0.53354781866073608 0.53354781866073608 0.53354781866073608 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV13";
	rename -uid "25D31C86-4108-54B8-61C7-ADAC18303E99";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[78:81]" -type "float2" -0.43591708 0.15128045 -0.43591708
		 -0.79556954 0.4474223 -0.79556954 0.4474223 0.15128045;
createNode polyAutoProj -n "polyAutoProj12";
	rename -uid "D191D9DB-4DB9-58CD-1620-A6A452B43102";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 1.2787585258483887 1.2787585258483887 1.2787585258483887 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV14";
	rename -uid "03D64B5B-4639-A1E1-527B-55AD92CDBB68";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[82:85]" -type "float2" 9.6415519e-05 0.43029177
		 -0.57535458 0.43029177 -0.57535458 -0.5050754 9.6415519e-05 -0.5050754;
createNode polyAutoProj -n "polyAutoProj13";
	rename -uid "52EABA4B-49D6-3C1C-EDDD-C98D088EF4AA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 0.53560864925384521 0.53560864925384521 0.53560864925384521 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV15";
	rename -uid "06C24853-4713-D59D-7A70-879B45CB91DE";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[86:89]" -type "float2" -0.013119945 0.49782151 -0.96481895
		 0.49782151 -0.96481895 -0.45755342 -0.013119945 -0.45755342;
createNode polyAutoProj -n "polyAutoProj14";
	rename -uid "BFD45A85-4CDF-8A5C-484F-9AA32575FD61";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[18]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 0.56994247436523438 0.56994247436523438 0.56994247436523438 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV16";
	rename -uid "2D68596F-440B-33D5-BF7A-92A5BE4E5D72";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[90:93]" -type "float2" -0.0083399788 0.54596782
		 -0.91207308 0.54596782 -0.91207308 -0.41941103 -0.0083399788 -0.41941103;
createNode polyAutoProj -n "polyAutoProj15";
	rename -uid "88C25F9C-4950-CE57-414F-74B047009526";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 0.53354781866073608 0.53354781866073608 0.53354781866073608 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV17";
	rename -uid "27E8D539-4AD1-7E01-B959-549F1028AFDD";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk[94:99]" -type "float2" -0.3082976 0.5791083 -0.84725833
		 0.5791083 -0.84725833 -0.36626276 -0.3082976 -0.36626276 -0.0041238358 -0.36626276
		 -0.0041238358 0.5791083;
createNode polyAutoProj -n "polyAutoProj16";
	rename -uid "5451281B-4BB7-54CA-E9D5-138B3B6FD53A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[15]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 0.53354781866073608 0.53354781866073608 0.53354781866073608 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV18";
	rename -uid "EAB2BB9D-44CF-8691-F8B3-BABDD87D9B0E";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[100:103]" -type "float2" 0.030234031 -0.42266268 0.030234031
		 0.5377143 -0.76081192 0.5377143 -0.76081192 -0.42266268;
createNode polyAutoProj -n "polyAutoProj17";
	rename -uid "E66DDA08-4518-F02F-E22D-0183E27904F3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 0.53354781866073608 0.53354781866073608 0.53354781866073608 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV19";
	rename -uid "DED935E8-46D8-0BD0-B331-8D9B80B4D871";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[104:107]" -type "float2" 0.067800157 -0.42107099 0.067800157
		 0.51886481 -0.23462504 0.51886481 -0.23462504 -0.42107099;
createNode polyAutoProj -n "polyAutoProj18";
	rename -uid "A7A8F1A9-4D1C-D42C-0562-32A4B42E4F0E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[7]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 0.83978629112243652 0.83978629112243652 0.83978629112243652 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV20";
	rename -uid "CB7DE0AB-4E28-8032-19E2-33B3015BE586";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[108:111]" -type "float2" -0.14658424 -0.736929 0.45722365
		 -0.736929 0.45722365 0.21344407 -0.14658424 0.21344407;
createNode polyAutoProj -n "polyAutoProj19";
	rename -uid "EB45DD1B-432E-2037-74C8-81A1846E7C34";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "f[46]" "f[51]" "f[55]" "f[59]" "f[63]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 1.546297550201416 1.546297550201416 1.546297550201416 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV21";
	rename -uid "DBF860CA-467D-3ADC-A2B0-50862BD1556C";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk[112:125]" -type "float2" 0.16438103 -0.71396381 0.2848714
		 -0.71396381 0.2848714 -0.11111821 0.16438103 -0.11111821 0.16438103 -0.90925735 0.2848714
		 -0.90925735 0.2848714 0.0061019808 0.16438103 0.0061019808 0.037273161 -0.56325209
		 0.15776354 -0.56325209 0.15776354 -0.10274497 0.037273161 -0.10274497 0.15776354
		 0.0061019808 0.037273161 0.0061019808;
createNode polyAutoProj -n "polyAutoProj20";
	rename -uid "A827610E-4B84-EDF4-6930-F5853D3FC23B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "f[44]" "f[49]" "f[53]" "f[57]" "f[61]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 0.95874404907226563 0.95874404907226563 0.95874404907226563 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV22";
	rename -uid "E6CE1E5F-42F3-D3DB-88A8-5B920F4AF39F";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk[126:139]" -type "float2" 0.22296958 0.0064443201 0.06030428
		 0.0064443201 0.06030428 -0.49091303 0.22296958 -0.49091303 0.22296958 0.27009618
		 0.06030428 0.27009618 0.06030428 -0.61525124 0.22296958 -0.61525124 0.054747354 0.27009636
		 -0.10791795 0.27009636 -0.10791795 -0.25740391 0.054747354 -0.25740391 -0.10791795
		 -0.40435046 0.054747354 -0.40435046;
createNode polyAutoProj -n "polyAutoProj21";
	rename -uid "6879AC8F-475E-7288-E1C2-4BAD28B36362";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[67]" "f[71]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 0.86666932702064514 0.86666932702064514 0.86666932702064514 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV23";
	rename -uid "B866EEB0-4E99-D963-9814-0A87F3FA1374";
	setAttr ".uopa" yes;
	setAttr -s 71 ".uvtk";
	setAttr ".uvtk[9]" -type "float2" 0.20498194 -0.04175413 ;
	setAttr ".uvtk[10]" -type "float2" 0.20244543 -0.043892961 ;
	setAttr ".uvtk[11]" -type "float2" 0.20508908 -0.047791075 ;
	setAttr ".uvtk[12]" -type "float2" 0.20813747 -0.047797646 ;
	setAttr ".uvtk[13]" -type "float2" 0.20508911 -0.05035105 ;
	setAttr ".uvtk[14]" -type "float2" 0.20965485 -0.050357606 ;
	setAttr ".uvtk[15]" -type "float2" 0.20965485 -0.047797646 ;
	setAttr ".uvtk[16]" -type "float2" 0.20444025 -0.049423795 ;
	setAttr ".uvtk[17]" -type "float2" 0.20444025 -0.050351035 ;
	setAttr ".uvtk[18]" -type "float2" 0.15749115 -0.014006319 ;
	setAttr ".uvtk[19]" -type "float2" 0.1462824 -0.038233459 ;
	setAttr ".uvtk[20]" -type "float2" 0.16305107 -0.045991331 ;
	setAttr ".uvtk[21]" -type "float2" 0.17425981 -0.021764215 ;
	setAttr ".uvtk[22]" -type "float2" 0.18372348 -0.026142623 ;
	setAttr ".uvtk[23]" -type "float2" 0.19825974 0.0052769491 ;
	setAttr ".uvtk[24]" -type "float2" 0.18879601 0.0096553518 ;
	setAttr ".uvtk[25]" -type "float2" 0.17202735 0.017413229 ;
	setAttr ".uvtk[46]" -type "float2" 0.22021382 -0.039659355 ;
	setAttr ".uvtk[47]" -type "float2" 0.22021382 -0.039659355 ;
	setAttr ".uvtk[48]" -type "float2" 0.22021382 -0.039659355 ;
	setAttr ".uvtk[49]" -type "float2" 0.22021382 -0.039659347 ;
	setAttr ".uvtk[50]" -type "float2" 0.22021382 -0.039659347 ;
	setAttr ".uvtk[51]" -type "float2" 0.22021382 -0.039659347 ;
	setAttr ".uvtk[52]" -type "float2" 0.22021382 -0.039659347 ;
	setAttr ".uvtk[53]" -type "float2" 0.22021382 -0.039659347 ;
	setAttr ".uvtk[54]" -type "float2" 0.22021382 -0.039659347 ;
	setAttr ".uvtk[55]" -type "float2" 0.22021382 -0.039659347 ;
	setAttr ".uvtk[56]" -type "float2" 0.22021382 -0.039659347 ;
	setAttr ".uvtk[57]" -type "float2" 0.22021382 -0.039659347 ;
	setAttr ".uvtk[58]" -type "float2" 0.22021382 -0.039659355 ;
	setAttr ".uvtk[59]" -type "float2" 0.22021382 -0.039659347 ;
	setAttr ".uvtk[60]" -type "float2" 0.22021382 -0.039659347 ;
	setAttr ".uvtk[61]" -type "float2" 0.22021382 -0.039659355 ;
	setAttr ".uvtk[62]" -type "float2" 0.22021382 -0.039659355 ;
	setAttr ".uvtk[63]" -type "float2" 0.22021382 -0.039659355 ;
	setAttr ".uvtk[70]" -type "float2" -0.20038413 -0.0083493376 ;
	setAttr ".uvtk[71]" -type "float2" -0.20038413 -0.0083493376 ;
	setAttr ".uvtk[72]" -type "float2" -0.20038413 -0.0083493404 ;
	setAttr ".uvtk[73]" -type "float2" -0.20038413 -0.0083493404 ;
	setAttr ".uvtk[74]" -type "float2" 0.32458052 0.14402609 ;
	setAttr ".uvtk[75]" -type "float2" 0.32458052 0.14402609 ;
	setAttr ".uvtk[76]" -type "float2" 0.32458052 0.14402609 ;
	setAttr ".uvtk[77]" -type "float2" 0.32458052 0.14402609 ;
	setAttr ".uvtk[78]" -type "float2" 0.32458055 0.14402609 ;
	setAttr ".uvtk[79]" -type "float2" 0.32458055 0.14402609 ;
	setAttr ".uvtk[80]" -type "float2" 0.32458052 0.14402609 ;
	setAttr ".uvtk[81]" -type "float2" 0.32458052 0.14402609 ;
	setAttr ".uvtk[108]" -type "float2" 0.32458052 0.14402609 ;
	setAttr ".uvtk[109]" -type "float2" 0.32458052 0.14402609 ;
	setAttr ".uvtk[110]" -type "float2" 0.32458052 0.14402609 ;
	setAttr ".uvtk[111]" -type "float2" 0.32458052 0.14402609 ;
	setAttr ".uvtk[112]" -type "float2" -0.20038413 -0.0083493367 ;
	setAttr ".uvtk[113]" -type "float2" -0.20038413 -0.0083493367 ;
	setAttr ".uvtk[114]" -type "float2" -0.20038413 -0.0083493376 ;
	setAttr ".uvtk[115]" -type "float2" -0.20038413 -0.0083493376 ;
	setAttr ".uvtk[116]" -type "float2" -0.20038413 -0.0083493404 ;
	setAttr ".uvtk[117]" -type "float2" -0.20038413 -0.0083493404 ;
	setAttr ".uvtk[118]" -type "float2" -0.20038413 -0.0083493376 ;
	setAttr ".uvtk[119]" -type "float2" -0.20038413 -0.0083493376 ;
	setAttr ".uvtk[120]" -type "float2" -0.20038413 -0.0083493367 ;
	setAttr ".uvtk[121]" -type "float2" -0.20038413 -0.0083493367 ;
	setAttr ".uvtk[122]" -type "float2" -0.20038413 -0.0083493376 ;
	setAttr ".uvtk[123]" -type "float2" -0.20038413 -0.0083493376 ;
	setAttr ".uvtk[124]" -type "float2" -0.20038413 -0.0083493376 ;
	setAttr ".uvtk[125]" -type "float2" -0.20038413 -0.0083493376 ;
	setAttr ".uvtk[140]" -type "float2" 0.86896968 0.24636373 ;
	setAttr ".uvtk[141]" -type "float2" 0.79839838 0.24636373 ;
	setAttr ".uvtk[142]" -type "float2" 0.79839838 -0.39224106 ;
	setAttr ".uvtk[143]" -type "float2" 0.86896968 -0.39224106 ;
	setAttr ".uvtk[144]" -type "float2" 0.79839838 -0.61410582 ;
	setAttr ".uvtk[145]" -type "float2" 0.86896968 -0.61410582 ;
createNode polyMapSew -n "polyMapSew1";
	rename -uid "F3884908-4670-D9CF-E5B3-7997535C8D2C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[30]";
createNode polyTweakUV -n "polyTweakUV24";
	rename -uid "9D27FAD5-4B60-6821-B782-89BEE6014CD4";
	setAttr ".uopa" yes;
	setAttr -s 63 ".uvtk";
	setAttr ".uvtk[9]" -type "float2" 0.00058533065 -0.00054842851 ;
	setAttr ".uvtk[10]" -type "float2" 0.00081352703 -0.00035602471 ;
	setAttr ".uvtk[11]" -type "float2" 0.0005757045 2.4387016e-05 ;
	setAttr ".uvtk[12]" -type "float2" 0.0003014931 -3.4487472e-05 ;
	setAttr ".uvtk[13]" -type "float2" 0.0005757045 0.00025462487 ;
	setAttr ".uvtk[14]" -type "float2" 0.00016502825 0.00019579507 ;
	setAttr ".uvtk[15]" -type "float2" 0.00016496865 -3.4547076e-05 ;
	setAttr ".uvtk[16]" -type "float2" 0.0006347429 0.0002960501 ;
	setAttr ".uvtk[17]" -type "float2" 0.00063480251 0.00022795178 ;
	setAttr ".uvtk[18]" -type "float2" 0.00074802153 0.0002012191 ;
	setAttr ".uvtk[19]" -type "float2" 0.00074799173 -3.9996958e-06 ;
	setAttr ".uvtk[20]" -type "float2" 0.00074805133 0.00010355689 ;
	setAttr ".uvtk[21]" -type "float2" 0.00089399319 0.00010355689 ;
	setAttr ".uvtk[22]" -type "float2" 0.00089399319 0.00014753021 ;
	setAttr ".uvtk[23]" -type "float2" 0.00089405279 0.0002012191 ;
	setAttr ".uvtk[44]" -type "float2" -0.16047552 0.016916698 ;
	setAttr ".uvtk[45]" -type "float2" -0.17307517 0.045571208 ;
	setAttr ".uvtk[46]" -type "float2" -0.19535425 0.035774902 ;
	setAttr ".uvtk[47]" -type "float2" -0.18275455 0.0071203583 ;
	setAttr ".uvtk[48]" -type "float2" -0.19724903 -0.033168629 ;
	setAttr ".uvtk[49]" -type "float2" -0.18419376 -0.049010821 ;
	setAttr ".uvtk[50]" -type "float2" -0.20941886 -0.040166177 ;
	setAttr ".uvtk[51]" -type "float2" -0.20650843 -0.055461228 ;
	setAttr ".uvtk[52]" -type "float2" -0.25214955 -0.024760587 ;
	setAttr ".uvtk[53]" -type "float2" -0.2568697 -0.037375756 ;
	setAttr ".uvtk[54]" -type "float2" -0.25779417 -0.0030805771 ;
	setAttr ".uvtk[55]" -type "float2" -0.27437338 -0.048659593 ;
	setAttr ".uvtk[56]" -type "float2" -0.21966228 0.032700084 ;
	setAttr ".uvtk[57]" -type "float2" -0.21966228 0.0047990382 ;
	setAttr ".uvtk[58]" -type "float2" -0.19565096 0.0047990382 ;
	setAttr ".uvtk[59]" -type "float2" -0.20470646 0.032700084 ;
	setAttr ".uvtk[60]" -type "float2" -0.20017862 0.042393498 ;
	setAttr ".uvtk[61]" -type "float2" -0.21966228 0.042393498 ;
	setAttr ".uvtk[68]" -type "float2" 0.48274526 0.068143263 ;
	setAttr ".uvtk[69]" -type "float2" 0.43744183 0.052607793 ;
	setAttr ".uvtk[70]" -type "float2" 0.46848369 -0.018044923 ;
	setAttr ".uvtk[71]" -type "float2" 0.51378715 -0.0025094512 ;
	setAttr ".uvtk[72]" -type "float2" -0.38990033 -0.12254498 ;
	setAttr ".uvtk[73]" -type "float2" -0.42986456 -0.12254498 ;
	setAttr ".uvtk[74]" -type "float2" -0.42986459 -0.27104375 ;
	setAttr ".uvtk[75]" -type "float2" -0.38990036 -0.27104375 ;
	setAttr ".uvtk[76]" -type "float2" -0.44456297 -0.22384974 ;
	setAttr ".uvtk[77]" -type "float2" -0.4291333 -0.27301571 ;
	setAttr ".uvtk[78]" -type "float2" -0.38326514 -0.25862095 ;
	setAttr ".uvtk[79]" -type "float2" -0.39869481 -0.20945501 ;
	setAttr ".uvtk[106]" -type "float2" -0.31832695 -0.16218282 ;
	setAttr ".uvtk[107]" -type "float2" -0.31832695 -0.16218282 ;
	setAttr ".uvtk[108]" -type "float2" -0.31832695 -0.16218282 ;
	setAttr ".uvtk[109]" -type "float2" -0.31832695 -0.16218282 ;
	setAttr ".uvtk[110]" -type "float2" 0.20272854 0.11646108 ;
	setAttr ".uvtk[111]" -type "float2" 0.20272852 0.11646108 ;
	setAttr ".uvtk[112]" -type "float2" 0.20272852 0.11646108 ;
	setAttr ".uvtk[113]" -type "float2" 0.20272854 0.11646108 ;
	setAttr ".uvtk[114]" -type "float2" 0.20272854 0.11646108 ;
	setAttr ".uvtk[115]" -type "float2" 0.20272852 0.11646108 ;
	setAttr ".uvtk[116]" -type "float2" 0.20272852 0.11646108 ;
	setAttr ".uvtk[117]" -type "float2" 0.20272854 0.11646108 ;
	setAttr ".uvtk[118]" -type "float2" 0.20272854 0.11646107 ;
	setAttr ".uvtk[119]" -type "float2" 0.20272854 0.11646107 ;
	setAttr ".uvtk[120]" -type "float2" 0.20272854 0.11646108 ;
	setAttr ".uvtk[121]" -type "float2" 0.20272854 0.11646108 ;
	setAttr ".uvtk[122]" -type "float2" 0.20272854 0.11646108 ;
	setAttr ".uvtk[123]" -type "float2" 0.20272854 0.11646108 ;
createNode polyMapSew -n "polyMapSew2";
	rename -uid "21229BD9-4B95-B7BD-AC09-DCA739659D2C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[2]";
createNode polyTweakUV -n "polyTweakUV25";
	rename -uid "F4FC3346-4CE8-4FC9-3009-FAA03CEDDF58";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk";
	setAttr ".uvtk[72]" -type "float2" 0 -0.0032908672 ;
	setAttr ".uvtk[73]" -type "float2" 0 -0.0032908672 ;
	setAttr ".uvtk[104]" -type "float2" -0.11844169 -0.15509073 ;
	setAttr ".uvtk[105]" -type "float2" -0.07413362 -0.15509073 ;
	setAttr ".uvtk[106]" -type "float2" -0.07413362 -0.085351408 ;
	setAttr ".uvtk[107]" -type "float2" -0.11844169 -0.085351408 ;
createNode polyMapSew -n "polyMapSew3";
	rename -uid "AFD34786-4906-4B19-47F5-D59F0F657598";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[17]";
createNode polyTweakUV -n "polyTweakUV26";
	rename -uid "3530A13F-4752-2BAC-5F6A-7A81D9523C52";
	setAttr ".uopa" yes;
	setAttr -s 59 ".uvtk";
	setAttr ".uvtk[9]" -type "float2" 0 -0.0079388879 ;
	setAttr ".uvtk[10]" -type "float2" 0 -0.0079388879 ;
	setAttr ".uvtk[11]" -type "float2" 0 -0.0079388954 ;
	setAttr ".uvtk[12]" -type "float2" 0 -0.0079388954 ;
	setAttr ".uvtk[13]" -type "float2" 0 -0.0079388954 ;
	setAttr ".uvtk[14]" -type "float2" 0 -0.0079388954 ;
	setAttr ".uvtk[15]" -type "float2" 0 -0.0079388954 ;
	setAttr ".uvtk[16]" -type "float2" 0 -0.0079388954 ;
	setAttr ".uvtk[17]" -type "float2" 0 -0.0079388954 ;
	setAttr ".uvtk[18]" -type "float2" 0 -0.0079388954 ;
	setAttr ".uvtk[19]" -type "float2" 0 -0.0079388954 ;
	setAttr ".uvtk[20]" -type "float2" 0 -0.0079388954 ;
	setAttr ".uvtk[21]" -type "float2" 0 -0.0079388954 ;
	setAttr ".uvtk[22]" -type "float2" 0 -0.0079388954 ;
	setAttr ".uvtk[23]" -type "float2" 0 -0.0079388954 ;
	setAttr ".uvtk[44]" -type "float2" 0 -0.0085844947 ;
	setAttr ".uvtk[45]" -type "float2" 0 -0.0085844798 ;
	setAttr ".uvtk[46]" -type "float2" 0 -0.0085844947 ;
	setAttr ".uvtk[47]" -type "float2" 0 -0.0085844873 ;
	setAttr ".uvtk[48]" -type "float2" 0 -0.0085844873 ;
	setAttr ".uvtk[49]" -type "float2" 0 -0.0085844947 ;
	setAttr ".uvtk[50]" -type "float2" 0 -0.0085844798 ;
	setAttr ".uvtk[51]" -type "float2" 0 -0.0085844798 ;
	setAttr ".uvtk[52]" -type "float2" 0 -0.0085844947 ;
	setAttr ".uvtk[53]" -type "float2" 0 -0.0085844798 ;
	setAttr ".uvtk[54]" -type "float2" 0 -0.0085844798 ;
	setAttr ".uvtk[55]" -type "float2" 0 -0.0085844798 ;
	setAttr ".uvtk[56]" -type "float2" 0 -0.0079388954 ;
	setAttr ".uvtk[57]" -type "float2" 0 -0.0079388954 ;
	setAttr ".uvtk[58]" -type "float2" 0 -0.0079388954 ;
	setAttr ".uvtk[59]" -type "float2" 0 -0.0079388954 ;
	setAttr ".uvtk[60]" -type "float2" 0 -0.0079388954 ;
	setAttr ".uvtk[61]" -type "float2" 0 -0.0079388954 ;
	setAttr ".uvtk[68]" -type "float2" -0.00015281161 -0.015379785 ;
	setAttr ".uvtk[69]" -type "float2" -0.00015281161 -0.015379779 ;
	setAttr ".uvtk[70]" -type "float2" -0.00015281161 -0.015379779 ;
	setAttr ".uvtk[71]" -type "float2" -0.00015281161 -0.015379785 ;
	setAttr ".uvtk[72]" -type "float2" 3.2484531e-06 0.00010996414 ;
	setAttr ".uvtk[73]" -type "float2" 6.6667795e-05 0.00010996414 ;
	setAttr ".uvtk[74]" -type "float2" 8.6992979e-05 0 ;
	setAttr ".uvtk[75]" -type "float2" -4.4375658e-05 0 ;
	setAttr ".uvtk[76]" -type "float2" 4.4345856e-05 -0.0020122146 ;
	setAttr ".uvtk[77]" -type "float2" -2.0295382e-05 -0.0020121997 ;
	setAttr ".uvtk[104]" -type "float2" 3.7789345e-05 -0.0025487924 ;
	setAttr ".uvtk[105]" -type "float2" -8.6992979e-05 -0.0025487924 ;
	setAttr ".uvtk[106]" -type "float2" 0.0064819627 -0.15166295 ;
	setAttr ".uvtk[107]" -type "float2" 0.024623595 -0.15166295 ;
	setAttr ".uvtk[108]" -type "float2" 0.024623625 -0.060896121 ;
	setAttr ".uvtk[109]" -type "float2" 0.0064819925 -0.060896121 ;
	setAttr ".uvtk[110]" -type "float2" 0.0064819627 -0.18106708 ;
	setAttr ".uvtk[111]" -type "float2" 0.024623595 -0.18106708 ;
	setAttr ".uvtk[112]" -type "float2" 0.024623625 -0.04324697 ;
	setAttr ".uvtk[113]" -type "float2" 0.0064819925 -0.04324697 ;
	setAttr ".uvtk[114]" -type "float2" -0.0047368794 -0.09332405 ;
	setAttr ".uvtk[115]" -type "float2" 0.013434676 -0.09332405 ;
	setAttr ".uvtk[116]" -type "float2" 0.013434676 -0.023873772 ;
	setAttr ".uvtk[117]" -type "float2" -0.0047368794 -0.023873772 ;
	setAttr ".uvtk[118]" -type "float2" 0.013434676 -0.0074582063 ;
	setAttr ".uvtk[119]" -type "float2" -0.0047368794 -0.0074582063 ;
createNode polyMapSew -n "polyMapSew4";
	rename -uid "8184B7E8-4784-4D65-7760-6EBFD8DD379B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[121]";
createNode polyTweakUV -n "polyTweakUV27";
	rename -uid "5D4C9DE2-49E6-F9D6-9C98-9493F1EF78CE";
	setAttr ".uopa" yes;
	setAttr -s 52 ".uvtk";
	setAttr ".uvtk[44]" -type "float2" 0.0025867156 1.4901161e-08 ;
	setAttr ".uvtk[45]" -type "float2" 0.0025867156 0 ;
	setAttr ".uvtk[46]" -type "float2" 0.0025867156 0 ;
	setAttr ".uvtk[47]" -type "float2" 0.0025867156 0 ;
	setAttr ".uvtk[48]" -type "float2" 0.0025867156 0 ;
	setAttr ".uvtk[49]" -type "float2" 0.0025867156 -1.4901161e-08 ;
	setAttr ".uvtk[50]" -type "float2" 0.0025867454 0 ;
	setAttr ".uvtk[51]" -type "float2" 0.0025867156 0 ;
	setAttr ".uvtk[52]" -type "float2" 0.0025866858 2.9802322e-08 ;
	setAttr ".uvtk[53]" -type "float2" 0.0025867156 -2.9802322e-08 ;
	setAttr ".uvtk[54]" -type "float2" 0.0025867156 0 ;
	setAttr ".uvtk[55]" -type "float2" 0.0025867156 0 ;
	setAttr ".uvtk[68]" -type "float2" 2.9802322e-08 0 ;
	setAttr ".uvtk[69]" -type "float2" -2.9802322e-08 0 ;
	setAttr ".uvtk[78]" -type "float2" 0.46745837 -0.40868723 ;
	setAttr ".uvtk[79]" -type "float2" 0.44561648 -0.40868723 ;
	setAttr ".uvtk[80]" -type "float2" 0.44561651 -0.43050337 ;
	setAttr ".uvtk[81]" -type "float2" 0.4674584 -0.43050337 ;
	setAttr ".uvtk[82]" -type "float2" 0.48000124 -0.43736851 ;
	setAttr ".uvtk[83]" -type "float2" 0.45498571 -0.43736851 ;
	setAttr ".uvtk[84]" -type "float2" 0.45498571 -0.46248066 ;
	setAttr ".uvtk[85]" -type "float2" 0.48000124 -0.46248066 ;
	setAttr ".uvtk[86]" -type "float2" 0.47525865 -0.45403254 ;
	setAttr ".uvtk[87]" -type "float2" 0.46200758 -0.45403254 ;
	setAttr ".uvtk[88]" -type "float2" 0.46200758 -0.46934634 ;
	setAttr ".uvtk[89]" -type "float2" 0.47525865 -0.46934634 ;
	setAttr ".uvtk[90]" -type "float2" 0.47018886 -0.4662886 ;
	setAttr ".uvtk[91]" -type "float2" 0.44131595 -0.45628628 ;
	setAttr ".uvtk[92]" -type "float2" 0.42620033 -0.50693125 ;
	setAttr ".uvtk[93]" -type "float2" 0.45507324 -0.51693356 ;
	setAttr ".uvtk[94]" -type "float2" 0.47136825 -0.5225786 ;
	setAttr ".uvtk[95]" -type "float2" 0.48648387 -0.47193366 ;
	setAttr ".uvtk[96]" -type "float2" 0.43697089 -0.49743021 ;
	setAttr ".uvtk[97]" -type "float2" 0.45251662 -0.46179128 ;
	setAttr ".uvtk[98]" -type "float2" 0.42316139 -0.44898653 ;
	setAttr ".uvtk[99]" -type "float2" 0.40761566 -0.48462546 ;
	setAttr ".uvtk[100]" -type "float2" 0.40036759 -0.48614469 ;
	setAttr ".uvtk[101]" -type "float2" 0.41589257 -0.43006459 ;
	setAttr ".uvtk[102]" -type "float2" 0.3978487 -0.42702612 ;
	setAttr ".uvtk[103]" -type "float2" 0.38232377 -0.48310623 ;
	setAttr ".uvtk[106]" -type "float2" 0.0077751693 0.05795677 ;
	setAttr ".uvtk[107]" -type "float2" 0.0077901599 0.05795677 ;
	setAttr ".uvtk[108]" -type "float2" 0.0077901301 0.043643583 ;
	setAttr ".uvtk[109]" -type "float2" 0.0077751395 0.043643583 ;
	setAttr ".uvtk[110]" -type "float2" 0.0077751693 0.062369153 ;
	setAttr ".uvtk[111]" -type "float2" 0.0077901599 0.062369153 ;
	setAttr ".uvtk[112]" -type "float2" 0.0077845571 0.044073656 ;
	setAttr ".uvtk[113]" -type "float2" 0.0077845571 0.044073656 ;
	setAttr ".uvtk[114]" -type "float2" 0.007778984 0.034211252 ;
	setAttr ".uvtk[115]" -type "float2" 0.0077939448 0.034211252 ;
	setAttr ".uvtk[116]" -type "float2" 0.007778984 0.035926443 ;
	setAttr ".uvtk[117]" -type "float2" 0.0077939448 0.035926443 ;
createNode polyMapSew -n "polyMapSew5";
	rename -uid "784C3CFE-4DA1-391A-9FE4-29A12E83E0F0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[1]" "e[25]" "e[33]" "e[43]" "e[47]";
createNode polyTweakUV -n "polyTweakUV28";
	rename -uid "8D439B41-4F25-9B84-E5AA-60B16405181C";
	setAttr ".uopa" yes;
	setAttr -s 30 ".uvtk";
	setAttr ".uvtk[78]" -type "float2" 0.00012037158 -0.007716164 ;
	setAttr ".uvtk[79]" -type "float2" -5.6624413e-07 -0.007716164 ;
	setAttr ".uvtk[80]" -type "float2" -4.2706728e-05 -0.0077161649 ;
	setAttr ".uvtk[81]" -type "float2" 7.7664852e-05 -0.0077161649 ;
	setAttr ".uvtk[82]" -type "float2" -0.00011321902 -0.0076119467 ;
	setAttr ".uvtk[83]" -type "float2" 4.5001507e-05 -0.0076119467 ;
	setAttr ".uvtk[84]" -type "float2" 0.00010460615 -0.0079320297 ;
	setAttr ".uvtk[85]" -type "float2" -2.3454428e-05 -0.0079320297 ;
	setAttr ".uvtk[86]" -type "float2" 7.5012445e-05 -0.0076119606 ;
	setAttr ".uvtk[87]" -type "float2" -1.5795231e-06 -0.0076119308 ;
	setAttr ".uvtk[88]" -type "float2" 0.00011321902 -0.0077161612 ;
	setAttr ".uvtk[89]" -type "float2" 0.00011321902 -0.0077162059 ;
	setAttr ".uvtk[90]" -type "float2" -0.00012034178 -0.0077161165 ;
	setAttr ".uvtk[91]" -type "float2" -0.00012034178 -0.0077161612 ;
	setAttr ".uvtk[92]" -type "float2" -0.00011268258 -0.0088699833 ;
	setAttr ".uvtk[93]" -type "float2" 7.3492527e-05 -0.0088699833 ;
	setAttr ".uvtk[108]" -type "float2" 0.073280908 -0.21460523 ;
	setAttr ".uvtk[109]" -type "float2" 0.060559303 -0.21460523 ;
	setAttr ".uvtk[110]" -type "float2" 0.060559303 -0.25350207 ;
	setAttr ".uvtk[111]" -type "float2" 0.073280908 -0.25350207 ;
	setAttr ".uvtk[112]" -type "float2" 0.073280908 -0.19398578 ;
	setAttr ".uvtk[113]" -type "float2" 0.060559303 -0.19398578 ;
	setAttr ".uvtk[114]" -type "float2" 0.060559303 -0.26322621 ;
	setAttr ".uvtk[115]" -type "float2" 0.073280908 -0.26322621 ;
	setAttr ".uvtk[116]" -type "float2" 0.052254763 -0.15250872 ;
	setAttr ".uvtk[117]" -type "float2" 0.039592829 -0.15250872 ;
	setAttr ".uvtk[118]" -type "float2" 0.039592829 -0.19356962 ;
	setAttr ".uvtk[119]" -type "float2" 0.052254763 -0.19356962 ;
	setAttr ".uvtk[120]" -type "float2" 0.039592829 -0.20500802 ;
	setAttr ".uvtk[121]" -type "float2" 0.052254763 -0.20500802 ;
createNode polyMapSew -n "polyMapSew6";
	rename -uid "6BC1A068-4305-65FE-CAEB-56BB02C8690A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[117]";
createNode polyTweakUV -n "polyTweakUV29";
	rename -uid "4F98FFD9-4D75-B496-97AB-B0A99E4174D8";
	setAttr ".uopa" yes;
	setAttr -s 49 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.29594618 -0.13265839 ;
	setAttr ".uvtk[1]" -type "float2" 0.29594618 -0.13265839 ;
	setAttr ".uvtk[2]" -type "float2" 0.29594618 -0.13265839 ;
	setAttr ".uvtk[3]" -type "float2" 0.29594618 -0.13265839 ;
	setAttr ".uvtk[4]" -type "float2" 0.29594618 -0.13265839 ;
	setAttr ".uvtk[5]" -type "float2" 0.29594618 -0.13265839 ;
	setAttr ".uvtk[6]" -type "float2" 0.29594618 -0.13265839 ;
	setAttr ".uvtk[7]" -type "float2" 0.29594618 -0.13265839 ;
	setAttr ".uvtk[8]" -type "float2" 0.29594618 -0.13265839 ;
	setAttr ".uvtk[24]" -type "float2" 0.073945463 -0.14202222 ;
	setAttr ".uvtk[25]" -type "float2" 0.073945463 -0.14202222 ;
	setAttr ".uvtk[26]" -type "float2" 0.07394547 -0.14202222 ;
	setAttr ".uvtk[27]" -type "float2" 0.073945463 -0.14202222 ;
	setAttr ".uvtk[28]" -type "float2" 0.073945463 -0.14202222 ;
	setAttr ".uvtk[29]" -type "float2" 0.07394547 -0.14202222 ;
	setAttr ".uvtk[30]" -type "float2" 0.07394547 -0.14202222 ;
	setAttr ".uvtk[31]" -type "float2" 0.073945463 -0.14202222 ;
	setAttr ".uvtk[32]" -type "float2" 0.073945463 -0.14202222 ;
	setAttr ".uvtk[33]" -type "float2" 0.073945463 -0.14202222 ;
	setAttr ".uvtk[34]" -type "float2" 0.073945463 -0.14202222 ;
	setAttr ".uvtk[35]" -type "float2" 0.073945463 -0.14202222 ;
	setAttr ".uvtk[36]" -type "float2" 0.073945463 -0.14202222 ;
	setAttr ".uvtk[37]" -type "float2" 0.073945463 -0.14202222 ;
	setAttr ".uvtk[38]" -type "float2" 0.073945463 -0.14202222 ;
	setAttr ".uvtk[39]" -type "float2" 0.073945463 -0.14202222 ;
	setAttr ".uvtk[40]" -type "float2" 0.073945463 -0.14202222 ;
	setAttr ".uvtk[41]" -type "float2" 0.073945463 -0.14202222 ;
	setAttr ".uvtk[42]" -type "float2" 0.073945463 -0.14202222 ;
	setAttr ".uvtk[43]" -type "float2" 0.073945463 -0.14202222 ;
	setAttr ".uvtk[62]" -type "float2" 0.073945463 -0.14202222 ;
	setAttr ".uvtk[63]" -type "float2" 0.073945463 -0.14202222 ;
	setAttr ".uvtk[64]" -type "float2" 0.073945463 -0.14202222 ;
	setAttr ".uvtk[65]" -type "float2" 0.073945463 -0.14202222 ;
	setAttr ".uvtk[66]" -type "float2" 0.073945463 -0.14202222 ;
	setAttr ".uvtk[67]" -type "float2" 0.073945463 -0.14202222 ;
	setAttr ".uvtk[102]" -type "float2" 0 8.9729365e-05 ;
	setAttr ".uvtk[103]" -type "float2" 0 8.9729365e-05 ;
	setAttr ".uvtk[108]" -type "float2" 8.3446503e-07 -0.0044524767 ;
	setAttr ".uvtk[109]" -type "float2" 3.0636787e-05 -0.0044524767 ;
	setAttr ".uvtk[110]" -type "float2" 3.0636787e-05 -0.0121137 ;
	setAttr ".uvtk[111]" -type "float2" 8.3446503e-07 -0.0121137 ;
	setAttr ".uvtk[112]" -type "float2" 8.3446503e-07 0 ;
	setAttr ".uvtk[113]" -type "float2" 3.0636787e-05 0 ;
	setAttr ".uvtk[114]" -type "float2" 0 -0.010160647 ;
	setAttr ".uvtk[115]" -type "float2" 0 -0.010160647 ;
	setAttr ".uvtk[116]" -type "float2" -3.066659e-05 -0.019441575 ;
	setAttr ".uvtk[117]" -type "float2" -8.046627e-07 -0.019441575 ;
	setAttr ".uvtk[118]" -type "float2" -3.066659e-05 -0.018669827 ;
	setAttr ".uvtk[119]" -type "float2" -8.046627e-07 -0.018669827 ;
createNode polyFlipUV -n "polyFlipUV1";
	rename -uid "F958E31A-4D31-F489-2311-C1B6416686D9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[3]" "f[6]" "f[12]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".up" yes;
	setAttr ".pu" 0.39853548999999999;
	setAttr ".pv" 0.11135169859999999;
createNode polyTweakUV -n "polyTweakUV30";
	rename -uid "0807FD4C-423A-1093-1942-EE9C2B069510";
	setAttr ".uopa" yes;
	setAttr -s 9 ".uvtk[0:8]" -type "float2" -0.17835809 -0.0035563991
		 -0.18024103 -0.0051441402 -0.1825835 -0.00065781025 -0.18032061 -0.00066269038 -0.18032061
		 0.0012376622 -0.18370987 -0.0006578028 -0.18370987 0.0012425497 -0.17983891 0.0012376622
		 -0.17983891 0.00054933282;
createNode polyFlipUV -n "polyFlipUV2";
	rename -uid "F2C7A260-4EF6-1340-9DAD-1E836A7DCEFB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[3]" "f[6]" "f[12]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".up" yes;
	setAttr ".pu" 0.2175015062;
	setAttr ".pv" 0.1094009019;
createNode polyTweakUV -n "polyTweakUV31";
	rename -uid "3ADAE26F-4D01-6F39-F990-449DF838595D";
	setAttr ".uopa" yes;
	setAttr -s 17 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.00045236622 -0.0001532778 ;
	setAttr ".uvtk[1]" -type "float2" -0.00022422944 -0.00034564431 ;
	setAttr ".uvtk[2]" -type "float2" 5.9578073e-05 0.0001681924 ;
	setAttr ".uvtk[3]" -type "float2" -0.00021455859 0.00022707434 ;
	setAttr ".uvtk[4]" -type "float2" -0.00021461819 0.00045718555 ;
	setAttr ".uvtk[5]" -type "float2" 0.00019607271 0.00016812535 ;
	setAttr ".uvtk[6]" -type "float2" 0.0001960131 0.00039835577 ;
	setAttr ".uvtk[7]" -type "float2" -0.00027297114 0.00045730476 ;
	setAttr ".uvtk[8]" -type "float2" -0.00027294134 0.00034413044 ;
	setAttr ".uvtk[24]" -type "float2" 0.047196377 0.033463538 ;
	setAttr ".uvtk[25]" -type "float2" 0.033330735 -0.0036045597 ;
	setAttr ".uvtk[26]" -type "float2" 0.053113867 -0.011004776 ;
	setAttr ".uvtk[27]" -type "float2" 0.06427896 -0.015181193 ;
	setAttr ".uvtk[28]" -type "float2" 0.078144617 0.021886848 ;
	setAttr ".uvtk[29]" -type "float2" 0.066979527 0.026063293 ;
	setAttr ".uvtk[30]" -type "float2" 0.077671073 0.054645903 ;
	setAttr ".uvtk[31]" -type "float2" 0.057887968 0.062046081 ;
createNode polyFlipUV -n "polyFlipUV3";
	rename -uid "FC895E09-4D8D-6B09-470C-159A0913C087";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[3]" "f[6]" "f[12]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".up" yes;
	setAttr ".pu" 0.21737332640000001;
	setAttr ".pv" 0.1094272546;
createNode polyTweakUV -n "polyTweakUV32";
	rename -uid "C7A07E46-426F-A125-BED1-DBA93CAE9E33";
	setAttr ".uopa" yes;
	setAttr -s 9 ".uvtk[0:8]" -type "float2" 0.19830522 0 0.1983052 0
		 0.19830523 0 0.19830523 0 0.19830523 0 0.1983052 0 0.1983052 0 0.19830523 0 0.19830523
		 0;
createNode polyFlipUV -n "polyFlipUV4";
	rename -uid "DC096DCA-40D6-9DD5-23B9-248BD6EC84C2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[20]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".up" yes;
	setAttr ".pu" 0.19240307810000001;
	setAttr ".pv" 0.14267808940000001;
createNode polyTweakUV -n "polyTweakUV33";
	rename -uid "4DDCD243-478F-C3C0-2671-8C9EB7B02056";
	setAttr ".uopa" yes;
	setAttr -s 17 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.090807013 0 ;
	setAttr ".uvtk[1]" -type "float2" -0.090807013 0 ;
	setAttr ".uvtk[2]" -type "float2" -0.090807013 0 ;
	setAttr ".uvtk[3]" -type "float2" -0.090807013 0 ;
	setAttr ".uvtk[4]" -type "float2" -0.090807013 0 ;
	setAttr ".uvtk[5]" -type "float2" -0.090807013 0 ;
	setAttr ".uvtk[6]" -type "float2" -0.090807013 0 ;
	setAttr ".uvtk[7]" -type "float2" -0.090807013 0 ;
	setAttr ".uvtk[8]" -type "float2" -0.090807013 0 ;
	setAttr ".uvtk[24]" -type "float2" 0.1598379 -0.00011391984 ;
	setAttr ".uvtk[25]" -type "float2" 0.16081277 -0.00011393474 ;
	setAttr ".uvtk[26]" -type "float2" 0.16081277 -0.00063420879 ;
	setAttr ".uvtk[27]" -type "float2" 0.16081277 -0.00092785107 ;
	setAttr ".uvtk[28]" -type "float2" 0.15983787 -0.00092785107 ;
	setAttr ".uvtk[29]" -type "float2" 0.15983787 -0.00063420879 ;
	setAttr ".uvtk[30]" -type "float2" 0.1590862 -0.00063420879 ;
	setAttr ".uvtk[31]" -type "float2" 0.1590862 -0.00011391984 ;
createNode polyFlipUV -n "polyFlipUV5";
	rename -uid "0AE384DF-4B98-8BD5-5A1E-C5825AF130BF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "f[3]" "f[6]" "f[12]" "f[20]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".up" yes;
	setAttr ".pu" 0.32888187470000002;
	setAttr ".pv" 0.1094440185;
createNode polyTweakUV -n "polyTweakUV34";
	rename -uid "18107C33-4E7F-1729-A71C-F6BE02FD14DD";
	setAttr ".uopa" yes;
	setAttr -s 17 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.084411204 0 ;
	setAttr ".uvtk[1]" -type "float2" -0.084411204 0 ;
	setAttr ".uvtk[2]" -type "float2" -0.084411189 0 ;
	setAttr ".uvtk[3]" -type "float2" -0.084411204 0 ;
	setAttr ".uvtk[4]" -type "float2" -0.084411204 0 ;
	setAttr ".uvtk[5]" -type "float2" -0.084411189 0 ;
	setAttr ".uvtk[6]" -type "float2" -0.084411189 0 ;
	setAttr ".uvtk[7]" -type "float2" -0.084411204 0 ;
	setAttr ".uvtk[8]" -type "float2" -0.084411204 0 ;
	setAttr ".uvtk[24]" -type "float2" -0.084411204 0 ;
	setAttr ".uvtk[25]" -type "float2" -0.084411204 0 ;
	setAttr ".uvtk[26]" -type "float2" -0.084411204 0 ;
	setAttr ".uvtk[27]" -type "float2" -0.084411204 0 ;
	setAttr ".uvtk[28]" -type "float2" -0.084411204 0 ;
	setAttr ".uvtk[29]" -type "float2" -0.084411204 0 ;
	setAttr ".uvtk[30]" -type "float2" -0.084411204 0 ;
	setAttr ".uvtk[31]" -type "float2" -0.084411204 0 ;
createNode polyMapSew -n "polyMapSew7";
	rename -uid "51927A22-46A2-5F7F-DABB-D0ADC377F4DB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[27]";
createNode polyTweakUV -n "polyTweakUV35";
	rename -uid "DBB5928D-4C54-7DF7-6A86-B0B8685C142F";
	setAttr ".uopa" yes;
	setAttr -s 27 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.084490292 0 ;
	setAttr ".uvtk[1]" -type "float2" -0.084490292 0 ;
	setAttr ".uvtk[2]" -type "float2" -0.084490292 0 ;
	setAttr ".uvtk[3]" -type "float2" -0.084490292 0 ;
	setAttr ".uvtk[4]" -type "float2" -0.084490292 1.6763806e-05 ;
	setAttr ".uvtk[5]" -type "float2" -0.084490292 0 ;
	setAttr ".uvtk[6]" -type "float2" -0.084490292 1.6763806e-05 ;
	setAttr ".uvtk[7]" -type "float2" -0.084490307 0 ;
	setAttr ".uvtk[8]" -type "float2" -0.084490277 0.00013230741 ;
	setAttr ".uvtk[24]" -type "float2" -0.084490292 -1.6763806e-05 ;
	setAttr ".uvtk[25]" -type "float2" -0.084490322 -1.6689301e-05 ;
	setAttr ".uvtk[26]" -type "float2" -0.084490262 0 ;
	setAttr ".uvtk[27]" -type "float2" -0.084490262 0 ;
	setAttr ".uvtk[28]" -type "float2" -0.084490292 -1.4901161e-08 ;
	setAttr ".uvtk[29]" -type "float2" -0.084490292 -0.00013230741 ;
	setAttr ".uvtk[30]" -type "float2" 0.099353947 -0.024857223 ;
	setAttr ".uvtk[31]" -type "float2" 0.13739319 -0.023876041 ;
	setAttr ".uvtk[32]" -type "float2" 0.1366304 0.0056996364 ;
	setAttr ".uvtk[33]" -type "float2" 0.098591037 0.0047184583 ;
	setAttr ".uvtk[34]" -type "float2" 0.19761884 0.036349624 ;
	setAttr ".uvtk[35]" -type "float2" 0.17343491 0.042504225 ;
	setAttr ".uvtk[36]" -type "float2" 0.19315776 0.064231873 ;
	setAttr ".uvtk[37]" -type "float2" 0.17482892 0.059512384 ;
	setAttr ".uvtk[38]" -type "float2" 0.14715198 0.11023766 ;
	setAttr ".uvtk[39]" -type "float2" 0.13579382 0.098547488 ;
	setAttr ".uvtk[40]" -type "float2" 0.15049794 0.13533157 ;
	setAttr ".uvtk[41]" -type "float2" 0.10902686 0.093528718 ;
createNode polyFlipUV -n "polyFlipUV6";
	rename -uid "24CD6975-4AD3-65EA-0AEA-2A8477EF4BF6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "f[47]" "f[50]" "f[54]" "f[58]" "f[62]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".up" yes;
	setAttr ".pu" 0.24891921880000001;
	setAttr ".pv" 0.1163213402;
createNode polyTweakUV -n "polyTweakUV36";
	rename -uid "759C41ED-4E7F-4D21-3702-1EA3354E77F3";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk[30:41]" -type "float2" 0.065316133 0.027779128 0.077151231
		 0.03901903 0.085890412 0.029817224 0.074055284 0.018577285 0.11368485 0.03901903
		 0.10821636 0.029817209 0.12078854 0.029209137 0.11379786 0.025081318 0.12078854 0.0013015377
		 0.11379786 0.0014022547 0.12941456 -0.0052947379 0.10415708 -0.0051941252;
createNode polyFlipUV -n "polyFlipUV7";
	rename -uid "DB84C300-492E-B738-E1AA-C4A86CD8D67F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "f[47]" "f[50]" "f[54]" "f[58]" "f[62]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".up" yes;
	setAttr ".pu" 0.34628456829999998;
	setAttr ".pv" 0.1331834868;
createNode polyTweakUV -n "polyTweakUV37";
	rename -uid "4A3529C2-43F9-5E4D-C5CC-C1A2703C4DED";
	setAttr ".uopa" yes;
	setAttr -s 124 ".uvtk[0:123]" -type "float2" -0.11048283 0 -0.11048283
		 0 -0.11048283 0 -0.11048283 0 -0.11048283 0 -0.11048283 0 -0.11048283 0 -0.11048283
		 0 -0.11048283 0 -0.13288288 0 -0.13288291 0 -0.13288291 0 -0.13288282 0 -0.13288291
		 0 -0.13288285 0 -0.13288285 0 -0.13288288 0 -0.13288288 0 -0.13288288 0 -0.13288291
		 0 -0.13288291 0 -0.13288288 0 -0.13288288 0 -0.13288288 0 -0.11048283 0 -0.11048283
		 0 -0.11048283 0 -0.11048283 0 -0.11048283 0 -0.11048283 0 -0.22375435 0 -0.22375435
		 0 -0.22375435 0 -0.22375432 0 -0.22375435 0 -0.22375435 0 -0.22375435 0 -0.22375435
		 0 -0.22375435 0 -0.22375435 0 -0.22375435 0 -0.22375435 0 -0.13288285 0 -0.13288285
		 0 -0.13288285 0 -0.13288285 0 -0.13288285 0 -0.13288285 0 -0.13288285 0 -0.13288285
		 0 -0.13288285 0 -0.13288285 0 -0.13288285 0 -0.13288285 0 -0.13288285 0 -0.13288285
		 0 -0.13288285 0 -0.13288285 0 -0.13288288 0 -0.13288285 0 -0.01456175 -0.046547785
		 -0.022394443 -0.070681408 -0.0016253302 -0.070681408 -0.0016253302 -0.046547785 -0.0016253302
		 -0.0381632 -0.01847806 -0.0381632 -0.13288291 0 -0.13288291 0 -0.13288288 0 -0.13288288
		 0 -0.13288288 0 -0.13288285 0 -0.13288285 0 -0.13288288 0 -0.13288288 0 -0.13288285
		 0 -0.13288288 0 -0.13288291 0 -0.13288291 0 -0.13288288 0 -0.13288291 0 -0.13288288
		 0 -0.13288288 0 -0.13288291 0 -0.13288291 0 -0.13288288 0 -0.13288291 0 -0.13288291
		 0 -0.13288288 0 -0.13288288 0 -0.13288291 0 -0.13288288 0 -0.13288288 0 -0.13288285
		 0 -0.14848426 0 -0.14848426 0 -0.14848426 0 -0.14848426 0 -0.14848426 0 -0.14848426
		 0 -0.14848426 0 -0.14848426 0 -0.14848426 0 -0.14848426 0 -0.14848426 0 -0.14848426
		 0 -0.14848426 0 -0.14848426 0 -0.14848426 0 -0.14848426 0 -0.14848426 0 -0.14848426
		 0 -0.14848426 0 -0.14848426 0 -0.14848426 0 -0.14848426 0 -0.14848426 0 -0.14848426
		 0 -0.68171936 -0.12344894 -0.70062423 -0.12344894 -0.70062423 -0.23967834 -0.68171936
		 -0.23967834 -0.70062423 -0.28251591 -0.68171936 -0.28251591;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "EAE984FD-47A7-0D0C-16C6-21B1EF86B141";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1054\n            -height 667\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 1\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n"
		+ "            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n"
		+ "            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n"
		+ "            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n"
		+ "            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n"
		+ "                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n"
		+ "                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n"
		+ "                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1054\\n    -height 667\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1054\\n    -height 667\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 1 -size 1 -divisions 9 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "DCDD6874-4368-DA15-D568-C4954043BCCE";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyAutoProj -n "polyAutoProj22";
	rename -uid "7FA0F38D-4E3E-D5F6-BFCA-569D98BC44B5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[25]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 16.442244529724121 16.442244529724121 16.442244529724121 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV38";
	rename -uid "14AA51AA-4C05-74C0-338F-238F964ABA26";
	setAttr ".uopa" yes;
	setAttr -s 128 ".uvtk[0:127]" -type "float2" 0.0078520617 0 0.0078520598
		 0 0.0078520598 0 0.0078520598 0 0.0078520598 0 0.0078520598 0 0.0078520598 0 0.0078520598
		 0 0.0078520598 0 0.0078520747 0 0.0078520747 0 0.0078520747 0 0.0078520747 0 0.0078520747
		 0 0.0078520747 0 0.0078520747 0 0.0078520747 0 0.0078520747 0 0.0078520747 0 0.0078520747
		 0 0.0078520747 0 0.0078520747 0 0.0078520747 0 0.0078520747 0 0.0078520617 0 0.0078520617
		 0 0.0078520617 0 0.0078520617 0 0.0078520617 0 0.0078520617 0 0.0078520598 0 0.0078520598
		 0 0.0078520598 0 0.0078520598 0 0.0078520598 0 0.0078520598 0 0.0078520598 0 0.0078520598
		 0 0.0078520598 0 0.0078520598 0 0.0078520598 0 0.0078520598 0 0.0078520598 0 0.0078520598
		 0 0.0078520598 0 0.0078520598 0 0.0078520598 0 0.0078520598 0 0.0078520598 0 0.0078520598
		 0 0.0078520598 0 0.0078520598 0 0.0078520598 0 0.0078520598 0 0.0078520598 0 0.0078520598
		 0 0.0078520598 0 0.0078520598 0 0.0078520598 0 0.0078520598 0 0.0078520598 0 0.0078520598
		 0 0.0078520598 0 0.0078520598 0 0.0078520598 0 0.0078520598 0 0.0078520747 0 0.0078520747
		 0 0.0078520747 0 0.0078520747 0 0.0078520747 0 0.0078520598 0 0.0078520598 0 0.0078520747
		 0 0.0078520747 0 0.0078520598 0 0.0078520747 0 0.0078520747 0 0.0078520747 0 0.0078520747
		 0 0.0078520747 0 0.0078520747 0 0.0078520747 0 0.0078520747 0 0.0078520747 0 0.0078520747
		 0 0.0078520747 0 0.0078520747 0 0.0078520747 0 0.0078520747 0 0.0078520747 0 0.0078520747
		 0 0.0078520747 0 0.0078520598 0 0.0078520598 0 0.0078520598 0 0.0078520598 0 0.0078520598
		 0 0.0078520598 0 0.0078520598 0 0.0078520598 0 0.0078520598 0 0.0078520598 0 0.0078520598
		 0 0.0078520598 0 0.0078520598 0 0.0078520598 0 0.0078520598 0 0.0078520598 0 0.0078520598
		 0 0.0078520598 0 0.0078520598 0 0.0078520598 0 0.0078520598 0 0.0078520598 0 0.0078520598
		 0 0.0078520598 0 0.0078520598 0 0.0078520598 0 0.0078520598 0 0.0078520598 0 0.0078520598
		 0 0.0078520598 0 0.0078520598 0 0.015776895 -0.83394253 0.53160435 0.16207342 0.4736349
		 0.19330138 -0.023531672 -0.76668203;
createNode polyAutoProj -n "polyAutoProj23";
	rename -uid "E0ECBE09-4B20-182A-354B-898CB2A925F6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[22]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 15.847419738769531 15.847419738769531 15.847419738769531 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV39";
	rename -uid "40677FF0-4BBE-76D4-2490-C2996A9D32E3";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[128:131]" -type "float2" 0.035312869 0.22431877 -0.024832528
		 0.19358677 0.47121251 -0.80242926 0.53135794 -0.77169722;
createNode polyAutoProj -n "polyAutoProj24";
	rename -uid "A5C962BA-459D-CDDC-7714-8989DDCDDE68";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[26]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 16.442244529724121 16.442244529724121 16.442244529724121 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV40";
	rename -uid "D329029E-42D8-459E-B63E-DCB98D08862E";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[132:135]" -type "float2" 0.53084183 -0.74004006 0.014857373
		 0.25597584 -0.024445629 0.19050373 0.47287226 -0.76947975;
createNode polyAutoProj -n "polyAutoProj25";
	rename -uid "C6F9C6D5-4432-9191-3136-4FACD849CF65";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[24]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 16.442244529724121 16.442244529724121 16.442244529724121 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV41";
	rename -uid "E43777DA-4862-0203-82E5-1E87DD1153F9";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[132:139]" -type "float2" 1.4610123e-08 -0.0016759214
		 -2.910383e-10 -0.0016759214 -2.910383e-10 -0.0016759214 1.4610123e-08 -0.0016759214
		 0.53039509 0.25463444 0.47242543 0.28649154 -0.043530699 -0.70952451 0.014438859
		 -0.74138165;
createNode polyMapSew -n "polyMapSew8";
	rename -uid "2501B76D-45E8-2641-9D56-0A9332786D4D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[55:56]" "e[59]";
createNode polyTweakUV -n "polyTweakUV42";
	rename -uid "94D56F6C-40B4-DEE3-0E56-799696169CE3";
	setAttr ".uopa" yes;
	setAttr -s 10 ".uvtk[124:133]" -type "float2" 0.45366916 1.4901161e-08
		 0.45306447 -1.4901161e-08 0.45318553 0 0.4534407 0 0.45389763 1.4901161e-08 0.45356676
		 -1.4901161e-08 0.45405033 0.0014442294 0.45440653 0.0014443486 0.45427385 0.00080091658
		 0.45461577 0.00080103579;
createNode polyAutoProj -n "polyAutoProj26";
	rename -uid "E71450CA-4FF2-ECAA-B4B9-D881904A02A6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[21]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 0.95696228742599487 0.95696228742599487 0.95696228742599487 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV43";
	rename -uid "4AEC4408-4134-384A-E175-B28B0F93E6A8";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[134:137]" -type "float2" 0.45175788 -0.77150911 0.45175788
		 0.1934762 -0.1317533 0.1934762 -0.1317533 -0.77150911;
createNode polyMapSew -n "polyMapSew9";
	rename -uid "83124C70-4E1C-FE4A-DD63-7EBFF54F2742";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[50]";
createNode polyTweakUV -n "polyTweakUV44";
	rename -uid "DB7D6910-4FE3-638C-028F-75A57AF2E2A9";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[126]" -type "float2" 0 1.6063452e-05 ;
	setAttr ".uvtk[129]" -type "float2" 0 -4.1350722e-05 ;
	setAttr ".uvtk[134]" -type "float2" 0 4.1365623e-05 ;
	setAttr ".uvtk[135]" -type "float2" 0 -1.6048551e-05 ;
createNode polyAutoProj -n "polyAutoProj27";
	rename -uid "598723BF-440A-8DFC-2577-BDBDC6962577";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[31]" "f[34]" "f[37]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 5.4605903625488281 5.4605903625488281 5.4605903625488281 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV45";
	rename -uid "100F989A-4A0C-9FE1-3BA5-1996CCCA4347";
	setAttr ".uopa" yes;
	setAttr -s 10 ".uvtk[136:145]" -type "float2" 0.17237316 -0.23685174 0.18768556
		 0.064106762 0.07672409 0.21624869 -0.008644633 -0.27880785 -0.22718413 -0.53361499
		 0.20029695 -0.40851703 0.13452856 -0.6754083 0.29107571 -0.73659188 -0.27267641 -0.74913359
		 -0.059105773 -0.6564194;
createNode polyAutoProj -n "polyAutoProj28";
	rename -uid "72C36353-48A7-DD6A-2D81-1CA8643EFE38";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[32]" "f[36]" "f[39]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 5.4605903625488281 5.4605903625488281 5.4605903625488281 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV46";
	rename -uid "EB2E6ECA-42F0-0D76-4B77-FCBA97FA0CCB";
	setAttr ".uopa" yes;
	setAttr -s 10 ".uvtk[146:155]" -type "float2" -0.23540843 -0.47121996 -0.065766513
		 -0.37960681 0.052863181 -0.094789326 -0.09587279 0.023836493 0.15439814 0.051496476
		 -0.18536997 0.35567385 0.38301116 0.31456211 0.21138072 0.32709894 0.024100363 0.39498252
		 -0.13231838 0.57486671;
createNode polyFlipUV -n "polyFlipUV8";
	rename -uid "A434D4C2-44BC-5882-8043-21A9C49C918F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[32]" "f[36]" "f[39]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".up" yes;
	setAttr ".pu" 0.27377675470000001;
	setAttr ".pv" 0.5;
createNode polyTweakUV -n "polyTweakUV47";
	rename -uid "63797633-4100-DFAA-76A3-C7BBD695453D";
	setAttr ".uopa" yes;
	setAttr -s 10 ".uvtk[146:155]" -type "float2" 0.030142065 -0.30877364 0.044403039
		 -0.29406345 0.076954737 -0.29014078 0.084800109 -0.30877367 0.094844297 -0.28397286
		 0.11616097 -0.32749414 0.12834187 -0.26817378 0.12467621 -0.2860899 0.12622036 -0.30720234
		 0.14010988 -0.32838705;
createNode polyFlipUV -n "polyFlipUV9";
	rename -uid "B778971C-43AD-C2EF-65B0-E29F1B698D42";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[32]" "f[36]" "f[39]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".up" yes;
	setAttr ".pu" 0.35890270769999999;
	setAttr ".pv" 0.20171958209999999;
createNode polyTweakUV -n "polyTweakUV48";
	rename -uid "F66B7900-4878-68D6-53BB-CA8FEA8DB7F0";
	setAttr ".uopa" yes;
	setAttr -s 20 ".uvtk[136:155]" -type "float2" -0.0083656358 0.047197808
		 -0.0083656358 0.047197808 -0.0083656358 0.047197822 -0.0083656358 0.047197822 -0.0083656358
		 0.047197793 -0.0083656358 0.047197808 -0.0083656358 0.047197808 -0.0083656358 0.047197808
		 -0.0083656358 0.047197808 -0.0083656358 0.047197808 -0.25739875 0.047197822 -0.25739875
		 0.047197808 -0.25739875 0.047197808 -0.25739875 0.047197822 -0.25739875 0.047197808
		 -0.25739875 0.047197793 -0.25739875 0.047197808 -0.25739875 0.047197808 -0.25739875
		 0.047197808 -0.25739875 0.047197808;
createNode polyAutoProj -n "polyAutoProj29";
	rename -uid "8BB3101C-40E3-C2B5-71BA-978E9DB427A4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[27]" "f[41:42]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 2.9899648427963257 2.9899648427963257 2.9899648427963257 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV49";
	rename -uid "750B8C00-47B5-64FD-3921-3681DAB4AAFD";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[156:163]" -type "float2" 0.2191295 0.20157301 0.10820473
		 0.20157301 0.10820473 -0.068949625 0.2191295 -0.068949625 0.10820473 -0.38429475
		 0.2191295 -0.38429475 0.10820473 -0.70160919 0.2191295 -0.70160919;
createNode polyAutoProj -n "polyAutoProj30";
	rename -uid "E577074E-4722-E39A-6EEF-118009DE550A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[30]" "f[33]" "f[38]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 4.168086051940918 4.168086051940918 4.168086051940918 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV50";
	rename -uid "1610B398-4F36-2B3D-258E-A1B0C799BA57";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[164:171]" -type "float2" 0.43752992 0.16939366 0.34765109
		 0.18510944 0.29764506 -0.20114836 0.38752389 -0.21686414 0.26915973 -0.41342521 0.35903853
		 -0.42914099 0.21903083 -0.81090641 0.30890962 -0.82662225;
createNode polyPinUV -n "polyPinUV1";
	rename -uid "F16A0BFE-467B-2878-FC8B-2C8DD4ED48E4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "map[156:159]";
	setAttr -s 4 ".pn[156:159]"  1 1 1 1;
createNode polyPinUV -n "polyPinUV2";
	rename -uid "F6455482-49CA-CB48-A6B2-9281B2EE432B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "map[156:159]";
	setAttr -s 4 ".pn[156:159]"  0 0 0 0;
	setAttr ".op" 1;
createNode polyAutoProj -n "polyAutoProj31";
	rename -uid "EFCE7496-4013-34A0-D833-28894AA625F9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[28]" "f[35]" "f[40]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 5.4605903625488281 5.4605903625488281 5.4605903625488281 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV51";
	rename -uid "ABE6D6EC-48D0-7750-C2EE-4B8EAC97F2F9";
	setAttr ".uopa" yes;
	setAttr -s 34 ".uvtk";
	setAttr ".uvtk[136]" -type "float2" -0.030778557 0 ;
	setAttr ".uvtk[137]" -type "float2" -0.030778557 0 ;
	setAttr ".uvtk[138]" -type "float2" -0.030778557 0 ;
	setAttr ".uvtk[139]" -type "float2" -0.030778557 0 ;
	setAttr ".uvtk[140]" -type "float2" -0.030778557 0 ;
	setAttr ".uvtk[141]" -type "float2" -0.030778557 0 ;
	setAttr ".uvtk[142]" -type "float2" -0.030778557 0 ;
	setAttr ".uvtk[143]" -type "float2" -0.030778557 0 ;
	setAttr ".uvtk[144]" -type "float2" -0.030778542 0 ;
	setAttr ".uvtk[145]" -type "float2" -0.030778557 0 ;
	setAttr ".uvtk[156]" -type "float2" -0.016231619 0 ;
	setAttr ".uvtk[157]" -type "float2" -0.015365714 0 ;
	setAttr ".uvtk[158]" -type "float2" -0.015365714 0 ;
	setAttr ".uvtk[159]" -type "float2" -0.016231619 0 ;
	setAttr ".uvtk[160]" -type "float2" -0.015365714 0 ;
	setAttr ".uvtk[161]" -type "float2" -0.016231619 0 ;
	setAttr ".uvtk[162]" -type "float2" -0.015365714 0 ;
	setAttr ".uvtk[163]" -type "float2" -0.016231619 0 ;
	setAttr ".uvtk[164]" -type "float2" -0.031470578 0.00069200533 ;
	setAttr ".uvtk[165]" -type "float2" -0.031470578 0.00069200533 ;
	setAttr ".uvtk[166]" -type "float2" -0.031470578 0.00069200533 ;
	setAttr ".uvtk[167]" -type "float2" -0.031470578 0.00069200533 ;
	setAttr ".uvtk[168]" -type "float2" -0.031701244 0.00069200533 ;
	setAttr ".uvtk[169]" -type "float2" -0.031701244 0.00069200533 ;
	setAttr ".uvtk[170]" -type "float2" -0.031470578 0.00069200533 ;
	setAttr ".uvtk[171]" -type "float2" -0.031470578 0.00069200533 ;
	setAttr ".uvtk[172]" -type "float2" 0.32021078 -0.17496832 ;
	setAttr ".uvtk[173]" -type "float2" 0.25160596 -0.19006445 ;
	setAttr ".uvtk[174]" -type "float2" 0.33754733 -0.68512094 ;
	setAttr ".uvtk[175]" -type "float2" 0.40615216 -0.67002475 ;
	setAttr ".uvtk[176]" -type "float2" 0.27316329 0.10907773 ;
	setAttr ".uvtk[177]" -type "float2" 0.20455845 0.093981616 ;
	setAttr ".uvtk[178]" -type "float2" 0.23414277 0.32599118 ;
	setAttr ".uvtk[179]" -type "float2" 0.16553791 0.31089512 ;
createNode polyAutoProj -n "polyAutoProj32";
	rename -uid "BAB0C64F-452F-51AE-FAD4-B6881C401230";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[73]" "f[75:77]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 1.055555522441864 1.055555522441864 1.055555522441864 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweak -n "polyTweak31";
	rename -uid "744BDE37-43E9-1697-4AEB-B49862BBE9EB";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[94:97]" -type "float3"  0 0 -0.06632515 0 0 -0.06632515
		 0 0 -0.06632515 0 0 -0.06632515;
createNode polyTweakUV -n "polyTweakUV52";
	rename -uid "24EA83DC-4C8D-0792-A2E5-EFBB42BBDE67";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk[180:195]" -type "float2" 0.57671154 0.091961026 0.34046224
		 0.091961026 0.34046224 -0.84036642 0.57671154 -0.84036642 0.26171803 0.07606037 0.032846745
		 0.07606037 0.032846745 -0.82872927 0.26171803 -0.82872927 0.026283856 -0.80798006
		 0.026283856 0.07606037 -0.2025874 0.07606037 -0.2025874 -0.80798006 -0.20915052 -0.80798018
		 -0.20915052 0.07606037 -0.43802172 0.07606037 -0.43802172 -0.80798018;
createNode polyAutoProj -n "polyAutoProj33";
	rename -uid "0ADE7D1A-4B3F-A8DD-6518-C790695F948B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[72]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 1.055555522441864 1.055555522441864 1.055555522441864 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV53";
	rename -uid "551F0B87-475D-8277-0A33-EF9CF18319E4";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[196:199]" -type "float2" 0.59815609 0.083446905 -0.34508425
		 0.083446905 -0.34508425 -0.88193214 0.59815609 -0.88193214;
createNode polyAutoProj -n "polyAutoProj34";
	rename -uid "17455240-407E-57AE-BB27-40A125615F6E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[74]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 1.055555522441864 1.055555522441864 1.055555522441864 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV54";
	rename -uid "21B9BF08-4A96-39CB-B7E1-C698D33B6B96";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk[180:203]" -type "float2" -0.00031417026 0 -5.1909825e-05
		 0 -5.1909825e-05 0 -0.00031417026 0 0.10239454 0.015835186 0.095424257 0.015835186
		 0.095424257 -0.011720194 0.10239454 -0.011720194 0.086995095 -0.0023611868 0.056338772
		 0.054959606 0.041498881 0.047022965 0.072155207 -0.010297849 0.071728021 -0.041399769
		 0.040855397 0.015921036 0.026015388 0.0080864783 0.056887973 -0.049234323 -0.053139467
		 0.0084012784 -0.051925499 0.0084012784 -0.051925499 0.0091705807 -0.053139467 0.0091705807
		 0.61505967 0.12300444 -0.38887018 0.12300444 -0.38887018 -0.90417546 0.61505967 -0.90417546;
createNode polyMapSew -n "polyMapSew10";
	rename -uid "CFBD9AEA-4FDE-E4DB-9982-BF97334E3DCD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[158:159]" "e[161]" "e[164:165]";
createNode polyTweakUV -n "polyTweakUV55";
	rename -uid "5EC65B65-4334-ED16-BCDC-578BC809F474";
	setAttr ".uopa" yes;
	setAttr -s 58 ".uvtk[136:193]" -type "float2" 0 -0.008117497 0 -0.008117497
		 0 -0.008117497 0 -0.008117497 0 -0.008117497 0 -0.008117497 0 -0.008117497 0 -0.008117497
		 0 -0.008117497 0 -0.008117497 0 -0.008117497 0 -0.008117497 0 -0.008117497 0 -0.008117497
		 0 -0.008117497 0 -0.008117497 0 -0.008117497 0 -0.008117497 0 -0.008117497 0 -0.008117497
		 0 -0.008117497 0 -0.008117497 0 -0.008117497 0 -0.008117497 0 -0.008117497 0 -0.008117497
		 0 -0.008117497 0 -0.008117497 0 -0.008117497 0 -0.008117497 0 -0.008117497 0 -0.008117497
		 0 -0.008117497 0 -0.008117497 0 -0.008117497 0 -0.008117497 0 -0.008117497 0 -0.008117497
		 0 -0.008117497 0 -0.008117497 0 -0.008117497 0 -0.008117497 0 -0.008117497 0 -0.008117497
		 0 0.015556751 -6.5790635e-05 0.015544577 -0.0001385083 0.015653685 0 0.015529944
		 0.00014913082 0.015566399 0 0.015598355 0 0.015728086 0.00014847517 0.015681379 0.00023651123
		 0.015571473 -0.00016343594 0.015571473 5.4597855e-05 0.015571458 0.00023829937 0.015571458
		 0 0.015580615 0 0.015414861;
createNode polyAutoProj -n "polyAutoProj35";
	rename -uid "CE01710B-4C10-B736-7CEA-1F89FFC2F69D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[84]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 2.3472850322723389 2.3472850322723389 2.3472850322723389 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV56";
	rename -uid "834657E8-4C7E-572C-2472-ACA3F0E96C8E";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk[194:199]" -type "float2" 0.31469172 -0.55957747 0.40035033
		 0.43643856 0.29556754 0.4314267 0.25684986 -0.01877241 0.1235746 -0.05145951 0.095647842
		 -0.37618467;
createNode polyAutoProj -n "polyAutoProj36";
	rename -uid "E9501BC2-4705-ED9E-B972-F5AB1633B82F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[83]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 1.0609729290008545 1.0609729290008545 1.0609729290008545 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV57";
	rename -uid "F839899E-44E6-016E-CA33-3FA2DAADD9E3";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[200:203]" -type "float2" 0.38151217 0.41113913 -0.1781003
		 0.41113913 -0.1781003 -0.54423583 0.38151217 -0.54423583;
createNode polyAutoProj -n "polyAutoProj37";
	rename -uid "C534D0DE-4545-CEF8-CA9E-3294F9BA60DD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[78:80]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 1.2535066604614258 1.2535066604614258 1.2535066604614258 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV58";
	rename -uid "6E0D0434-4B80-838B-AA23-02B0B3AA3A86";
	setAttr ".uopa" yes;
	setAttr -s 10 ".uvtk[204:213]" -type "float2" 0.33043772 0.13953936 -0.18304828
		 0.13953936 -0.18304828 -0.49276534 0.33043772 -0.49276534 0.33043772 0.45760772 -0.18304828
		 0.45760772 -0.18875858 -0.055878315 -0.18875858 0.45760772 -0.44093311 0.45760772
		 -0.44093311 -0.055878315;
createNode polyAutoProj -n "polyAutoProj38";
	rename -uid "33165AD1-45D7-1573-5551-48884721FD35";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[82]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 2.3472850322723389 2.3472850322723389 2.3472850322723389 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV59";
	rename -uid "95A92C84-41B4-80BE-C052-8E99EE6C98CC";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk[214:219]" -type "float2" 0.29428196 0.43635458 0.082406774
		 0.28787628 0.082406774 -0.0072913747 0.20012499 -0.047127157 0.20012499 -0.45634782
		 0.29428196 -0.46900094;
createNode polyAutoProj -n "polyAutoProj39";
	rename -uid "E8654F92-44E2-5059-CBC5-1BB0F48D7F49";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[81]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 0.62146651744842529 0.62146651744842529 0.62146651744842529 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV60";
	rename -uid "D2C85CBB-4B0E-5127-1630-618B6457E9DC";
	setAttr ".uopa" yes;
	setAttr -s 30 ".uvtk[194:223]" -type "float2" 0.3025732 -0.12610662 0.28638202
		 -0.12610662 0.28660846 -0.12676463 0.29700461 -0.12676463 0.29463911 -0.13048202
		 0.29991788 -0.13048202 0.27540818 -0.06954249 0.25160274 -0.085039817 0.27973589
		 -0.12568074 0.30354133 -0.11018344 0.23103577 -0.1130066 0.23103577 -0.1130066 0.23103577
		 -0.1130066 0.23103577 -0.1130066 0.23103577 -0.1130066 0.23103577 -0.1130066 0.23103577
		 -0.11300663 0.23103577 -0.1130066 0.23103574 -0.1130066 0.23103574 -0.11300663 0.23103574
		 -0.1130066 0.23103574 -0.1130066 0.23103574 -0.1130066 0.23103574 -0.11300663 0.23103574
		 -0.1130066 0.23103574 -0.1130066 0.61400735 -0.62206423 0.61400735 0.34331462 0.23479795
		 0.34331462 0.23479795 -0.62206423;
createNode polyPinUV -n "polyPinUV3";
	rename -uid "8C88560E-47B1-035F-0C07-9188DAC63ACF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "map[200:213]" "map[220:223]";
	setAttr -s 18 ".pn";
	setAttr ".pn[200]" 1;
	setAttr ".pn[201]" 1;
	setAttr ".pn[202]" 1;
	setAttr ".pn[203]" 1;
	setAttr ".pn[204]" 1;
	setAttr ".pn[205]" 1;
	setAttr ".pn[206]" 1;
	setAttr ".pn[207]" 1;
	setAttr ".pn[208]" 1;
	setAttr ".pn[209]" 1;
	setAttr ".pn[210]" 1;
	setAttr ".pn[211]" 1;
	setAttr ".pn[212]" 1;
	setAttr ".pn[213]" 1;
	setAttr ".pn[220]" 1;
	setAttr ".pn[221]" 1;
	setAttr ".pn[222]" 1;
	setAttr ".pn[223]" 1;
createNode polyPinUV -n "polyPinUV4";
	rename -uid "F118957B-4C78-FBF6-DB3E-21BEE223F21F";
	setAttr ".uopa" yes;
	setAttr ".op" 2;
createNode polyMapCut -n "polyMapCut1";
	rename -uid "11900614-4F8B-7374-C210-7680535E545B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[168:169]" "e[172:173]";
createNode polyTweak -n "polyTweak32";
	rename -uid "B44B278F-4A24-0BE6-3258-A69CFCD36348";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[103]" -type "float3" 0 0.014913047 0 ;
	setAttr ".tk[108]" -type "float3" 0 0.05563435 -0.11298142 ;
	setAttr ".tk[109]" -type "float3" 0 0.05563435 -0.11298142 ;
	setAttr ".tk[110]" -type "float3" 0 0.05563435 -1.8626451e-09 ;
	setAttr ".tk[111]" -type "float3" 0 0.05563435 -1.8626451e-09 ;
	setAttr ".tk[112]" -type "float3" 0 0.014913047 0 ;
createNode polyTweakUV -n "polyTweakUV61";
	rename -uid "BD7485B6-4CE9-DA32-4FD0-AF9DDF0AB518";
	setAttr ".uopa" yes;
	setAttr -s 20 ".uvtk";
	setAttr ".uvtk[200]" -type "float2" 0.00010873427 0.00019691844 ;
	setAttr ".uvtk[201]" -type "float2" 0.00010873427 -3.6552956e-05 ;
	setAttr ".uvtk[202]" -type "float2" 0.00053264259 -3.6552956e-05 ;
	setAttr ".uvtk[203]" -type "float2" 0.00053264259 0.00019691844 ;
	setAttr ".uvtk[204]" -type "float2" 0.066016741 -0.018104045 ;
	setAttr ".uvtk[205]" -type "float2" 0.041328479 -0.033779547 ;
	setAttr ".uvtk[206]" -type "float2" 0.063858382 -0.064215116 ;
	setAttr ".uvtk[207]" -type "float2" 0.088519327 -0.048471212 ;
	setAttr ".uvtk[208]" -type "float2" 0.057497237 -0.0028838331 ;
	setAttr ".uvtk[209]" -type "float2" 0.032836173 -0.018503886 ;
	setAttr ".uvtk[210]" -type "float2" 0.063722119 -0.027464073 ;
	setAttr ".uvtk[211]" -type "float2" 0.063722119 -0.0184233 ;
	setAttr ".uvtk[212]" -type "float2" 0.05808799 -0.0184233 ;
	setAttr ".uvtk[213]" -type "float2" 0.05808799 -0.027464073 ;
	setAttr ".uvtk[220]" -type "float2" 0.07294701 -0.0321711 ;
	setAttr ".uvtk[221]" -type "float2" 0.07294701 -0.017320361 ;
	setAttr ".uvtk[222]" -type "float2" 0.067113504 -0.017320361 ;
	setAttr ".uvtk[223]" -type "float2" 0.067113504 -0.0321711 ;
	setAttr ".uvtk[224]" -type "float2" 0.041355927 -0.033847928 ;
	setAttr ".uvtk[225]" -type "float2" 0.06598942 -0.01815949 ;
createNode polyMapSew -n "polyMapSew11";
	rename -uid "5AC2DD13-41AC-1B70-5536-3FB3FC76D4C4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[169:171]" "e[180]";
createNode polyMapSew -n "polyMapSew12";
	rename -uid "8F1FEF24-4AEF-1627-7ACA-0284452C9465";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[175]";
createNode polyTweakUV -n "polyTweakUV62";
	rename -uid "8DDBCCB4-46CB-826C-C7C4-24A4DF417B13";
	setAttr ".uopa" yes;
	setAttr -s 22 ".uvtk[194:215]" -type "float2" -0.0039592916 0 -0.0039592916
		 0 -0.0039592916 0 -0.0039592916 0 -0.0033639222 4.2319298e-06 -0.0039668614 2.4408102e-05
		 -0.0042066863 -3.9219856e-05 -0.0042066863 -6.300211e-05 -0.0049492228 2.8759241e-05
		 -0.0049491632 -3.0577183e-05 -0.0039517218 1.1473894e-05 -0.003317371 -2.8848648e-05
		 -0.011383152 3.9190054e-05 -0.011382913 -3.9964914e-05 0.077399917 0.040866531 0.071051396
		 0.0047814585 0.10060898 -0.024776071 0.11638609 -0.016977038 0.15736461 -0.057955585
		 0.16806036 -0.049793981 -0.0063101323 6.3031912e-05 -0.0063101323 -2.4110079e-05;
createNode polyMapDel -n "polyMapDel2";
	rename -uid "6DEF6D3A-4CE5-4226-FECB-A2B4AB1A6A11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[82]";
createNode polyAutoProj -n "polyAutoProj40";
	rename -uid "5DAE6F6C-4D16-A1F8-8830-8EAF7B8B34CF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[82]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 2.3472850322723389 2.3472850322723389 2.3472850322723389 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV63";
	rename -uid "96C9920D-4515-7F34-FA88-999B10D602D5";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk[210:215]" -type "float2" 0.61327946 0.35716906 0.3916069
		 0.17881736 0.41430828 -0.14590782 0.52662271 -0.23085645 0.5547443 -0.63311481 0.68291026
		 -0.63884687;
createNode polyMapSew -n "polyMapSew13";
	rename -uid "B4EDF230-40AA-704A-557B-648B8CFC7C2A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[174]";
createNode polyTweakUV -n "polyTweakUV64";
	rename -uid "90D5C362-4830-80A5-3D40-DF95A219C236";
	setAttr ".uopa" yes;
	setAttr -s 20 ".uvtk[194:213]" -type "float2" 0 -0.0079086255 0 -0.0079086255
		 0 -0.0079086255 0 -0.0079086255 0.0001737085 -0.0079086255 -0.0002915395 -0.0079086255
		 0 -0.0078067682 0 -0.0079086255 0 -0.0079086255 0 -0.0078067682 -0.00030322201 -0.0080105495
		 0.00042112736 -0.0080105495 0 -0.0078067905 0 -0.0079086255 0 -0.0079086255 0 -0.0078067905
		 0 -0.0079085659 0 -0.0072674085 0 -0.0072673191 0 -0.0079086851;
createNode polyPinUV -n "polyPinUV5";
	rename -uid "84A823B5-4D49-991E-6AD0-FB8DB45FCF22";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "map[204:205]" "map[210:213]";
	setAttr -s 6 ".pn";
	setAttr ".pn[204]" 1;
	setAttr ".pn[205]" 1;
	setAttr ".pn[210]" 1;
	setAttr ".pn[211]" 1;
	setAttr ".pn[212]" 1;
	setAttr ".pn[213]" 1;
createNode polyPinUV -n "polyPinUV6";
	rename -uid "322D2013-4F58-6523-2F86-6594A6D48BC5";
	setAttr ".uopa" yes;
	setAttr ".op" 2;
createNode polyAutoProj -n "polyAutoProj41";
	rename -uid "66BF508A-42F4-15F6-5C18-B6B723062020";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[91]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 2.8120023012161255 2.8120023012161255 2.8120023012161255 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV65";
	rename -uid "9FA33AC9-478B-DCEB-E425-858084B0F58A";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk[214:218]" -type "float2" 0.33456516 -0.44240415 0.44431156
		 -0.44963789 0.50996232 0.54637814 0.070675254 0.11773967 0.056537569 -0.096749;
createNode polyAutoProj -n "polyAutoProj42";
	rename -uid "87646A1C-475E-1B74-6B80-51A3136C32C6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[90]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 2.8120023012161255 2.8120023012161255 2.8120023012161255 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV66";
	rename -uid "77541D21-44E5-1F92-DFD6-07AAA6E83EB1";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk[219:223]" -type "float2" 0.42439657 0.58443201 0.088674352
		 0.29179728 0.064842284 0.07730858 0.42347449 -0.42377806 0.53414297 0.57223797;
createNode polyAutoProj -n "polyAutoProj43";
	rename -uid "6A265E6A-4699-8772-F905-89987FA7E38D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[86:88]" "f[92]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 2.8120023012161255 2.8120023012161255 2.8120023012161255 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV67";
	rename -uid "1037E737-4C55-477B-37DE-06BEE96CBDFF";
	setAttr ".uopa" yes;
	setAttr -s 22 ".uvtk[214:235]" -type "float2" 0.30472431 -0.24915306 0.30472431
		 -0.25137663 0.32490411 -0.25137663 0.31567296 -0.24308483 0.31132784 -0.24308492
		 0.23117015 -0.23524527 0.24971977 -0.25229204 0.26192752 -0.25229207 0.28785905 -0.228999
		 0.23117015 -0.228999 0.85513186 -0.012725442 0.58190417 -0.012725442 0.58190417 -0.21975559
		 0.85513186 -0.21975559 0.85513186 0.301855 0.58190417 0.301855 0.58190417 -0.65952635
		 0.85513186 -0.65952635 0.46871942 0.301855 0.46871942 0.028627254 0.57464951 0.028627254
		 0.57464951 0.301855;
createNode polyMapCut -n "polyMapCut2";
	rename -uid "FC72C83B-486C-4E5D-C8F9-24933EA4F208";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[186:196]" "e[198:199]";
createNode polyTweakUV -n "polyTweakUV68";
	rename -uid "99C77FBF-4952-1812-0C6A-B584FE65ACEA";
	setAttr ".uopa" yes;
	setAttr -s 26 ".uvtk[214:239]" -type "float2" 0 -0.00077182427 0 0.00027304515
		 0 0.00027304515 0 -0.0036233701 0 -0.0036233701 0.055001579 0.036853854 0.055001579
		 0.036853854 0.055001579 0.036853854 0.055001579 0.036853854 0.055001579 0.036853854
		 -0.078199983 0.036040958 -0.08835002 0.013145745 -0.069215387 0.0058384868 -0.059267923
		 0.028472617 -0.11378767 0.047250453 -0.12363096 0.024478789 -0.014160597 -0.01013737
		 -0.0043172962 0.012629457 -0.12786436 0.024490319 -0.12786436 0.037491105 -0.13290477
		 0.037491105 -0.13290477 0.024490319 -0.069111221 0.0057057254 -0.059371769 0.028582502
		 -0.0880436 0.013296975 -0.07850673 0.035917401;
createNode polyMapSew -n "polyMapSew14";
	rename -uid "2C6216F9-450A-12FD-6320-E981964289F0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[186:188]";
createNode polyTweak -n "polyTweak33";
	rename -uid "C4901121-48C6-4307-7148-5EB300DBE222";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[116:119]" -type "float3"  0 -0.14427781 0 0 -0.14427781
		 0 0 -0.14427781 0 0 -0.14427781 0;
createNode polyTweakUV -n "polyTweakUV69";
	rename -uid "CAA086F0-439D-5029-3F16-47B182A2629A";
	setAttr ".uopa" yes;
	setAttr -s 7 ".uvtk";
	setAttr ".uvtk[219]" -type "float2" -0.070989296 -0.013889597 ;
	setAttr ".uvtk[220]" -type "float2" -0.025445187 -0.052889735 ;
	setAttr ".uvtk[221]" -type "float2" 0.0045280843 -0.052889764 ;
	setAttr ".uvtk[222]" -type "float2" 0.068197146 0.00040086126 ;
	setAttr ".uvtk[223]" -type "float2" -0.070989296 0.00040086126 ;
	setAttr ".uvtk[232]" -type "float2" 0.0011168127 0 ;
	setAttr ".uvtk[233]" -type "float2" 0.0011168127 0 ;
createNode polyMapSew -n "polyMapSew15";
	rename -uid "4FD31DC8-4FFF-2E42-3C19-42980B1FCD0D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[192:193]";
createNode polyTweakUV -n "polyTweakUV70";
	rename -uid "BED22447-40D9-F424-C9D6-65BE1239AFB4";
	setAttr ".uopa" yes;
	setAttr -s 30 ".uvtk";
	setAttr ".uvtk[180]" -type "float2" -0.031287413 0.20318244 ;
	setAttr ".uvtk[181]" -type "float2" -0.031177502 0.20318244 ;
	setAttr ".uvtk[182]" -type "float2" -0.031177502 0.20318244 ;
	setAttr ".uvtk[183]" -type "float2" -0.031287413 0.20318244 ;
	setAttr ".uvtk[184]" -type "float2" -0.031067559 0.20318244 ;
	setAttr ".uvtk[185]" -type "float2" -0.031067559 0.20318244 ;
	setAttr ".uvtk[186]" -type "float2" -0.031067559 0.20318244 ;
	setAttr ".uvtk[187]" -type "float2" -0.031067559 0.20318244 ;
	setAttr ".uvtk[188]" -type "float2" -0.031067559 0.20318241 ;
	setAttr ".uvtk[189]" -type "float2" -0.03117753 0.20318241 ;
	setAttr ".uvtk[190]" -type "float2" -0.03117753 0.20318244 ;
	setAttr ".uvtk[191]" -type "float2" -0.031067559 0.20318244 ;
	setAttr ".uvtk[192]" -type "float2" -0.031287413 0.20318244 ;
	setAttr ".uvtk[193]" -type "float2" -0.031287413 0.20318244 ;
	setAttr ".uvtk[214]" -type "float2" 0 0.0076352144 ;
	setAttr ".uvtk[215]" -type "float2" 0 0.0076352144 ;
	setAttr ".uvtk[216]" -type "float2" 0 0.0076352144 ;
	setAttr ".uvtk[217]" -type "float2" 0.00047077436 0.0075389827 ;
	setAttr ".uvtk[218]" -type "float2" 2.1278858e-05 0.0075436616 ;
	setAttr ".uvtk[219]" -type "float2" 0 0.0082790935 ;
	setAttr ".uvtk[220]" -type "float2" -2.1338463e-05 0.0082027996 ;
	setAttr ".uvtk[221]" -type "float2" 0.00049509306 0.0081993723 ;
	setAttr ".uvtk[222]" -type "float2" 0 0.0082790935 ;
	setAttr ".uvtk[223]" -type "float2" 0 0.0082790935 ;
	setAttr ".uvtk[224]" -type "float2" 7.2527211e-05 0.0083303833 ;
	setAttr ".uvtk[225]" -type "float2" 7.2527211e-05 0.0077314163 ;
	setAttr ".uvtk[226]" -type "float2" -0.0004531999 0.0077187801 ;
	setAttr ".uvtk[227]" -type "float2" -0.0004531999 0.0083588148 ;
	setAttr ".uvtk[228]" -type "float2" 7.2527211e-05 0.0082883919 ;
	setAttr ".uvtk[229]" -type "float2" 7.2527211e-05 0.0077256048 ;
createNode polyAutoProj -n "polyAutoProj44";
	rename -uid "58FDE238-4B94-73D1-80A3-908FD42BE365";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[93]" "f[95:98]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 8.7575628757476807 8.7575628757476807 8.7575628757476807 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV71";
	rename -uid "1C167A12-4547-D4E8-EED1-D7B96152077B";
	setAttr ".uopa" yes;
	setAttr -s 20 ".uvtk[230:249]" -type "float2" 0.69020957 -0.89658207 0.44065428
		 0.099433765 0.37873352 0.083919331 0.62828875 -0.91209662 0.37304533 -0.87309313
		 0.62260067 0.12292271 0.56067991 0.13843717 0.31112456 -0.85757864 0.53858376 0.12259351
		 0.4470731 0.099665165 0.69662833 -0.89635068 0.78813905 -0.87342238 0.55509639 0.031309851
		 0.55509639 0.099655978 0.5088498 0.099655889 0.5088498 0.031309851 0.2222144 0.031374943
		 0.2222144 0.099563621 0.17607461 0.099563532 0.17607461 0.031374741;
createNode polyMapSew -n "polyMapSew16";
	rename -uid "CFAB0461-4FC0-61BD-E3F6-D7B2F651033D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[201]" "e[204]" "e[211:212]";
createNode polyTweakUV -n "polyTweakUV72";
	rename -uid "70F0FDD6-4C22-7D18-031F-E8A027AFE8AC";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk[230:241]" -type "float2" 0.00034097812 2.0042062e-05
		 -0.00019816073 5.0865114e-05 -0.00019851836 -5.2154064e-08 0.00033370635 5.2154064e-08
		 -0.00018409404 0.00020910594 0.00035510442 0.00023080948 0.00037584684 0.00017738137
		 -0.00015625867 0.00017733667 5.9619197e-08 -5.0865114e-05 5.9619197e-08 0.00018914584
		 -0.00017735871 0.00012393091 -0.00017735871 4.1462481e-05;
createNode polyAutoProj -n "polyAutoProj45";
	rename -uid "AC5F5A97-4248-85FF-2B7F-5A81F2218657";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[114]" "f[116:118]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 1.2925351858139038 1.2925351858139038 1.2925351858139038 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV73";
	rename -uid "09ED79AA-4C93-7545-6B91-0B805E7B8E69";
	setAttr ".uopa" yes;
	setAttr -s 28 ".uvtk[230:257]" -type "float2" -0.14856194 0.0077852132
		 -0.14856194 0.0077852132 -0.14856194 0.0077852132 -0.14856194 0.0077852132 -0.14856194
		 0.0077852057 -0.14856194 0.0077852057 -0.14856194 0.0077852057 -0.14856194 0.0077852057
		 -0.148562 0.0077852132 -0.148562 0.0077852057 -0.14856194 0.0077852057 -0.14856194
		 0.0077852132 0.35572976 0.11116767 0.1208555 0.11116767 0.1208555 -0.63725102 0.35572976
		 -0.63725102 0.11230128 0.11116767 -0.12257293 0.11116767 -0.12257293 -0.63725102
		 0.11230128 -0.63725102 0.84280598 -0.63725102 0.84280598 0.11116771 0.60793179 0.11116771
		 0.60793179 -0.63725102 0.59915829 -0.6372509 0.59915829 0.11116771 0.36428404 0.11116771
		 0.36428404 -0.6372509;
createNode polyAutoProj -n "polyAutoProj46";
	rename -uid "61728E53-4DC8-14C8-931F-289DDDB3A682";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[119:122]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 1.2925351858139038 1.2925351858139038 1.2925351858139038 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV74";
	rename -uid "CF30F02D-4928-9C8E-2F50-FAA363868F5C";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[258:265]" -type "float2" 0.87802649 0.077947333 -0.081226349
		 0.077947333 0.027182162 -0.030461505 0.76961792 -0.030461505 -0.081226349 -0.88130552
		 0.027182162 -0.77289677 0.87802649 -0.88130552 0.76961792 -0.77289677;
createNode polyAutoProj -n "polyAutoProj47";
	rename -uid "090AF8BD-4FAA-B685-91FA-CD8B2DD147AD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[127:130]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 1.2925351858139038 1.2925351858139038 1.2925351858139038 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV75";
	rename -uid "ADB0B04E-474A-F288-175C-838344F5BD12";
	setAttr ".uopa" yes;
	setAttr -s 28 ".uvtk";
	setAttr ".uvtk[242]" -type "float2" -0.071035832 -0.042531814 ;
	setAttr ".uvtk[243]" -type "float2" -0.071035832 -0.042531814 ;
	setAttr ".uvtk[244]" -type "float2" -0.071035832 -0.027144726 ;
	setAttr ".uvtk[245]" -type "float2" -0.071035832 -0.027144726 ;
	setAttr ".uvtk[250]" -type "float2" -0.055459149 0.01168345 ;
	setAttr ".uvtk[251]" -type "float2" -0.055459149 -0.0032265619 ;
	setAttr ".uvtk[252]" -type "float2" -0.055459149 -0.0032265619 ;
	setAttr ".uvtk[253]" -type "float2" -0.055459149 0.01168345 ;
	setAttr ".uvtk[254]" -type "float2" -0.055698533 -0.10499618 ;
	setAttr ".uvtk[255]" -type "float2" -0.055698473 -0.042582911 ;
	setAttr ".uvtk[256]" -type "float2" -0.070643656 -0.042582911 ;
	setAttr ".uvtk[257]" -type "float2" -0.070643716 -0.10499618 ;
	setAttr ".uvtk[258]" -type "float2" -0.073651478 0.014237457 ;
	setAttr ".uvtk[259]" -type "float2" -0.073651478 0.014237457 ;
	setAttr ".uvtk[260]" -type "float2" -0.073651478 0.014237457 ;
	setAttr ".uvtk[261]" -type "float2" -0.073651478 0.014237457 ;
	setAttr ".uvtk[262]" -type "float2" -0.073651478 0.014237464 ;
	setAttr ".uvtk[263]" -type "float2" -0.073651478 0.014237464 ;
	setAttr ".uvtk[264]" -type "float2" -0.073651478 0.014237464 ;
	setAttr ".uvtk[265]" -type "float2" -0.073651478 0.014237464 ;
	setAttr ".uvtk[266]" -type "float2" 0.72713578 0.10211321 ;
	setAttr ".uvtk[267]" -type "float2" -0.24324498 0.10211321 ;
	setAttr ".uvtk[268]" -type "float2" -0.02223533 -0.11889664 ;
	setAttr ".uvtk[269]" -type "float2" 0.50612605 -0.11889664 ;
	setAttr ".uvtk[270]" -type "float2" -0.24324498 -0.86826771 ;
	setAttr ".uvtk[271]" -type "float2" -0.02223533 -0.64725804 ;
	setAttr ".uvtk[272]" -type "float2" 0.72713578 -0.86826771 ;
	setAttr ".uvtk[273]" -type "float2" 0.50612605 -0.64725804 ;
createNode polyMapSew -n "polyMapSew17";
	rename -uid "1393BEB7-4235-BAA8-D5B7-87B7FCB58ADC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[248]" "e[252]";
createNode polyTweakUV -n "polyTweakUV76";
	rename -uid "5ADC6DEB-4926-8B4D-7980-088532A9E329";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk";
	setAttr ".uvtk[242]" -type "float2" 2.9683113e-05 0 ;
	setAttr ".uvtk[243]" -type "float2" 2.9742718e-05 0 ;
	setAttr ".uvtk[244]" -type "float2" 4.9352646e-05 0 ;
	setAttr ".uvtk[245]" -type "float2" 3.0517578e-05 0 ;
	setAttr ".uvtk[250]" -type "float2" -2.8908253e-05 0 ;
	setAttr ".uvtk[251]" -type "float2" -1.0192394e-05 0 ;
	setAttr ".uvtk[252]" -type "float2" -4.9293041e-05 0 ;
	setAttr ".uvtk[253]" -type "float2" -3.0577183e-05 0 ;
	setAttr ".uvtk[254]" -type "float2" -0.0093872985 0.054123245 ;
	setAttr ".uvtk[255]" -type "float2" -0.046150368 0.015144702 ;
	setAttr ".uvtk[256]" -type "float2" -0.037590552 0.015395138 ;
	setAttr ".uvtk[257]" -type "float2" -0.009136959 0.045563437 ;
	setAttr ".uvtk[258]" -type "float2" -0.0071717938 -0.021618377 ;
	setAttr ".uvtk[259]" -type "float2" -0.007422193 -0.013058526 ;
	setAttr ".uvtk[260]" -type "float2" 0.029591281 0.017360169 ;
	setAttr ".uvtk[261]" -type "float2" 0.021031395 0.01710977 ;
	setAttr ".uvtk[262]" -type "float2" 0.021088809 0.044160035 ;
	setAttr ".uvtk[263]" -type "float2" -0.0045462549 0.0053936113 ;
	setAttr ".uvtk[264]" -type "float2" 0.010165959 0.0083845202 ;
	setAttr ".uvtk[265]" -type "float2" 0.024123877 0.029492285 ;
	setAttr ".uvtk[266]" -type "float2" 0.034414679 -0.020241385 ;
	setAttr ".uvtk[267]" -type "float2" 0.03137973 -0.0055734506 ;
	setAttr ".uvtk[268]" -type "float2" 0.060049847 0.018524999 ;
	setAttr ".uvtk[269]" -type "float2" 0.045337752 0.015534276 ;
createNode polyMapSew -n "polyMapSew18";
	rename -uid "084B590D-410E-205B-D210-0AA121174CF9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[242:243]";
createNode polyTweakUV -n "polyTweakUV77";
	rename -uid "4E33149E-47E6-BF3A-AE78-1EBDEC508BE3";
	setAttr ".uopa" yes;
	setAttr -s 23 ".uvtk";
	setAttr ".uvtk[242]" -type "float2" -0.00034169469 0 ;
	setAttr ".uvtk[243]" -type "float2" 4.9293041e-05 0 ;
	setAttr ".uvtk[244]" -type "float2" -4.9293041e-05 4.8324466e-05 ;
	setAttr ".uvtk[245]" -type "float2" -0.00027547393 -4.0344894e-05 ;
	setAttr ".uvtk[246]" -type "float2" -0.032033861 0.0357343 ;
	setAttr ".uvtk[247]" -type "float2" -0.039487757 0.043561313 ;
	setAttr ".uvtk[248]" -type "float2" -0.078745753 0.019809723 ;
	setAttr ".uvtk[249]" -type "float2" -0.071291864 0.01198272 ;
	setAttr ".uvtk[250]" -type "float2" -0.00027553353 4.6938658e-05 ;
	setAttr ".uvtk[251]" -type "float2" -4.9293041e-05 2.9534101e-05 ;
	setAttr ".uvtk[252]" -type "float2" 4.9293041e-05 0 ;
	setAttr ".uvtk[253]" -type "float2" -0.00034169469 0 ;
	setAttr ".uvtk[254]" -type "float2" 0 -7.4505806e-09 ;
	setAttr ".uvtk[256]" -type "float2" 0 8.8661909e-05 ;
	setAttr ".uvtk[257]" -type "float2" 0 7.4505806e-09 ;
	setAttr ".uvtk[258]" -type "float2" 0 -4.6953559e-05 ;
	setAttr ".uvtk[259]" -type "float2" 0 1.4901161e-08 ;
	setAttr ".uvtk[260]" -type "float2" -0.0003085545 -1.2159348e-05 ;
	setAttr ".uvtk[261]" -type "float2" -0.0003085545 -8.866936e-05 ;
	setAttr ".uvtk[262]" -type "float2" -0.0003085545 0 ;
	setAttr ".uvtk[263]" -type "float2" -0.0003085545 -1.4901161e-08 ;
	setAttr ".uvtk[264]" -type "float2" -0.0003084949 0 ;
	setAttr ".uvtk[265]" -type "float2" -0.00030861411 1.4901161e-08 ;
createNode polyMapSew -n "polyMapSew19";
	rename -uid "FD5225EB-4681-08E2-F1D6-E1BBA9317320";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[249]";
createNode polyTweakUV -n "polyTweakUV78";
	rename -uid "82DEDD0F-4BEB-9A74-3367-AE96BE7FA064";
	setAttr ".uopa" yes;
	setAttr -s 22 ".uvtk[242:263]" -type "float2" 0.09371718 -0.0076082237
		 0.093645833 -0.0076082237 0.093645833 -0.0078727305 0.09371718 -0.0078727305 0.09371718
		 -0.0077025788 0.093722723 -0.0078265378 0.093788467 -0.0078265378 0.09371718 -0.0077025788
		 0.09371718 -0.0076059592 0.093645833 -0.0080049802 0.09371718 -0.0080049802 0.09371718
		 -0.0078727305 0.09371718 -0.0078727305 0.093711637 -0.0078727305 0.09371718 -0.0078727305
		 0.09371718 -0.0078727305 0.09371718 -0.0076059592 0.09371718 -0.0078727305 0.09371718
		 -0.0078727305 0.09371718 -0.0078727305 0.09371718 -0.0078727305 0.09371718 -0.0078727305;
createNode polyPinUV -n "polyPinUV7";
	rename -uid "80D1F646-444F-D787-25FB-DC9D70FF7903";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "map[250]" "map[258]" "map[261]" "map[263]";
	setAttr -s 4 ".pn";
	setAttr ".pn[250]" 1;
	setAttr ".pn[258]" 1;
	setAttr ".pn[261]" 1;
	setAttr ".pn[263]" 1;
createNode polyPinUV -n "polyPinUV8";
	rename -uid "DB043954-4BB3-922A-0D0B-B5B6B9701A35";
	setAttr ".uopa" yes;
	setAttr ".op" 2;
createNode polyAutoProj -n "polyAutoProj48";
	rename -uid "57C38C7A-4A15-DFBC-CC18-E2A12F8F84C2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[113]" "f[135:138]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 1.1895473003387451 1.1895473003387451 1.1895473003387451 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV79";
	rename -uid "141C5EE1-49FF-6391-7B65-B8827AA90BCC";
	setAttr ".uopa" yes;
	setAttr -s 20 ".uvtk[264:283]" -type "float2" 0.47075346 0.11531642 0.16065951
		 0.14627257 0.12959726 -0.19300966 0.43969122 -0.22396581 0.18472376 -0.62945473 0.49481773
		 -0.59802258 0.46416938 -0.25874025 0.15407541 -0.29017246 0.78709501 0.084198728
		 0.47700092 0.11530158 0.4460766 -0.22398067 0.75617075 -0.25508356 -0.13073654 -0.66069406
		 0.17935745 -0.62930751 0.14843325 -0.29002529 -0.16166075 -0.32141179 0.66803974
		 -0.89725572 0.66803974 -0.61227286 0.38305703 -0.61227286 0.38305703 -0.89725572;
createNode polyMapSew -n "polyMapSew20";
	rename -uid "78D3FB6A-48D6-9E52-9209-4DA87FF5F446";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[285:286]" "e[290]";
createNode polyTweak -n "polyTweak34";
	rename -uid "B6BC8906-4247-A9A0-18B4-FD8A7190BE26";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[148]" -type "float3" 0 0 -0.066209801 ;
	setAttr ".tk[149]" -type "float3" 0 0 -0.066209801 ;
	setAttr ".tk[150]" -type "float3" 0 0 -0.066209801 ;
	setAttr ".tk[151]" -type "float3" 0 0 -0.066209801 ;
	setAttr ".tk[152]" -type "float3" 0 0 0.022004912 ;
	setAttr ".tk[153]" -type "float3" 0 0 0.022004912 ;
	setAttr ".tk[154]" -type "float3" 0 0 0.022004912 ;
	setAttr ".tk[155]" -type "float3" 0 0 0.022004912 ;
	setAttr ".tk[156]" -type "float3" 0 0 0.022004912 ;
	setAttr ".tk[157]" -type "float3" 0 0 0.022004912 ;
	setAttr ".tk[158]" -type "float3" 0 0 0.022004912 ;
	setAttr ".tk[159]" -type "float3" 0 0 0.022004912 ;
	setAttr ".tk[164]" -type "float3" 0 0 -0.066209801 ;
	setAttr ".tk[165]" -type "float3" 0 0 -0.066209801 ;
	setAttr ".tk[166]" -type "float3" 0 0 -0.066209801 ;
	setAttr ".tk[167]" -type "float3" 0 0 -0.066209801 ;
createNode polyTweakUV -n "polyTweakUV80";
	rename -uid "8CE0567F-4A7C-CA31-A76D-29BAC725096B";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk[264:277]" -type "float2" 4.5418739e-05 -0.00025581097
		 5.7160854e-05 0 0.00015127659 0 7.0571899e-05 -0.00025580352 3.6895275e-05 -0.00018791086
		 0.00010728836 -0.00018789223 -7.4505806e-05 -0.00018787733 -0.0001449585 -0.00018785126
		 -0.00010728836 -1.4901161e-08 -0.00015121698 1.4901161e-08 0.056737337 0.016541556
		 0.088027842 0.04165275 0.062916629 0.07294333 0.031626012 0.047832098;
createNode polyMapSew -n "polyMapSew21";
	rename -uid "F71E32BA-4492-C436-FE60-0E9415E4C117";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[289]";
createNode polyTweakUV -n "polyTweakUV81";
	rename -uid "E7341209-4814-113C-CC1A-C7B669BA1526";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk[264:275]" -type "float2" -0.054392587 0.00012431294
		 -0.054392587 0.00015990436 -0.054640595 0 -0.054640535 0 -0.054392587 0 -0.054392587
		 0 -0.054687027 0 -0.054687027 0 -0.054392587 0 -0.054687027 0 -0.054663841 -0.00012431294
		 -0.054663721 -0.00015988946;
createNode polyAutoProj -n "polyAutoProj49";
	rename -uid "6F047E3A-49D4-D55C-3640-F9B563A8E49A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[131:134]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 1.0872113704681396 1.0872113704681396 1.0872113704681396 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV82";
	rename -uid "A13C2DA0-46A8-38F0-E852-EBAE1D74FA8E";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk[276:291]" -type "float2" -0.12243588 0.001622902 -0.12243588
		 -0.26865822 0.28622511 -0.30220619 0.28622511 0.11533424 0.65233791 -0.81038827 0.65233791
		 -0.4994905 0.18226513 -0.36869115 0.18226513 -0.84897763 0.76338768 -0.28011787 0.76338768
		 0.030689945 0.2934511 0.11535972 0.2934511 -0.36478758 -0.23258862 -0.5049299 -0.23258862
		 -0.77533263 0.17610726 -0.84899533 0.17610726 -0.43126711;
createNode polyMapSew -n "polyMapSew22";
	rename -uid "C86E1567-418C-17DB-836F-2FA77C870560";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[279]" "e[281]" "e[283:284]";
createNode polyTweakUV -n "polyTweakUV83";
	rename -uid "B07B5183-4D05-6B19-C465-4392F9286389";
	setAttr ".uopa" yes;
	setAttr -s 34 ".uvtk[242:275]" -type "float2" -0.062386774 0 -0.062386774
		 0 -0.062386774 0 -0.062386774 0 -0.062386774 0 -0.062386774 0 -0.062386774 0 -0.062386774
		 0 -0.062386774 0 -0.062386774 0 -0.062386774 0 -0.062386774 0 -0.062386774 0 -0.062386774
		 0 -0.062386774 0 -0.062386774 0 -0.062386774 0 -0.062386774 0 -0.062386774 0 -0.062386774
		 0 -0.062386774 0 -0.062386774 0 -0.00036564082 6.2286854e-06 -0.00029363853 -3.5226345e-05
		 -0.00022947774 3.5226345e-05 -0.00022947774 -6.2286854e-06 -0.00030836088 -2.6013702e-05
		 -0.00036421031 -4.7162175e-06 -0.00022947774 4.7162175e-06 -0.00022947774 2.6009977e-05
		 -0.00028028709 1.1313707e-05 -0.00022947774 -1.1313707e-05 -0.00022947774 -6.2286854e-06
		 -0.00022947774 3.5226345e-05;
createNode polyAutoProj -n "polyAutoProj50";
	rename -uid "33D8B238-4EFA-C84C-E225-D59A30E0CFD4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[115]" "f[123:126]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 1.1086106300354004 1.1086106300354004 1.1086106300354004 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV84";
	rename -uid "423F34DE-4FF6-B229-7674-ECAAAA938EEF";
	setAttr ".uopa" yes;
	setAttr -s 20 ".uvtk[284:303]" -type "float2" 0.26715302 -0.19449431 0.57453883
		 -0.2255539 0.60562927 0.11508571 0.29824334 0.14614533 0.59186471 -0.2605792 0.28447863
		 -0.29138771 0.31593457 -0.63202715 0.62332076 -0.6012187 0.88876545 0.052673515 0.58137959
		 0.021627268 0.61264461 -0.31901237 0.92003047 -0.2879661 -0.028450809 -0.5697543
		 0.2789351 -0.60103488 0.31029299 -0.26039547 0.0029070082 -0.22911473 0.9411214 -0.85338652
		 0.9411214 -0.56317401 0.65090895 -0.56317401 0.65090895 -0.85338652;
createNode polyMapSew -n "polyMapSew23";
	rename -uid "4003B55E-4254-8462-4ABD-8CA347A5F09B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[261]" "e[264]" "e[266]";
createNode polyTweakUV -n "polyTweakUV85";
	rename -uid "3A9AAEC2-40DE-4621-9D52-78B78AA2F98D";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk[284:297]" -type "float2" -0.0079950541 0.00014673974
		 -0.0079527348 4.9663111e-05 -0.0079281777 4.9633309e-05 -0.0078367442 0.00014673974
		 -0.0078574866 -2.2351742e-08 -0.0078942031 -9.7065451e-05 -0.0080060214 -9.711388e-05
		 -0.0080158561 2.2351742e-08 -0.0079841465 -9.7084077e-05 -0.0080005378 -9.7097116e-05
		 0.0020463925 0.0036030342 -0.028926089 0.020776505 -0.046099562 -0.010196112 -0.015127076
		 -0.027369579;
createNode polyMapSew -n "polyMapSew24";
	rename -uid "4C1F12B2-4E4D-7C91-8BED-929C713AEC60";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[265]";
createNode polyTweakUV -n "polyTweakUV86";
	rename -uid "BFBAA02E-499D-813E-BADD-279FE24F5971";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk[284:295]" -type "float2" 0.0002402309 -2.9757619e-05
		 0.0002402309 3.361702e-05 0.00019886528 0 0.00019886528 0 0.0002402309 0.00012012197
		 0.0002402309 0 0.00028153695 0 0.00028153695 0.00012012197 0.0002402309 0 0.00028153695
		 0 0.0002402309 2.9757619e-05 0.0002402309 -3.3609569e-05;
createNode polyAutoProj -n "polyAutoProj51";
	rename -uid "D6937758-45CB-BC74-A215-15B78375CD80";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[99]" "f[101]" "f[103:104]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 2.2270431518554688 2.2270431518554688 2.2270431518554688 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV87";
	rename -uid "D5CC22E0-40DE-26BD-84DA-24B311158538";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk[296:311]" -type "float2" 0.40427202 -0.87589377 0.4042719
		 -0.030350937 0.12169961 0.075743236 0.12169967 -0.98198789 0.19077018 -0.82616168
		 0.19077018 -0.054444909 -0.06820339 0.042386048 -0.06820339 -0.92299259 -0.074566185
		 -0.23851342 -0.074566185 0.042386055 -0.3335399 0.042386055 -0.3335399 -0.23851342
		 -0.16527128 -0.52294165 -0.16527128 -0.24204193 -0.42424488 -0.24204193 -0.42424488
		 -0.52294165;
createNode polyAutoProj -n "polyAutoProj52";
	rename -uid "120E29C7-4572-FB1C-CD03-6BBD70231436";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[105:108]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 1.7802820205688477 1.7802820205688477 1.7802820205688477 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV88";
	rename -uid "C1399BEB-4FA1-58FF-64FB-3FAC0A71E231";
	setAttr ".uopa" yes;
	setAttr -s 320 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0 0.04682979 0 0.04682979 0 0.04682979
		 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979
		 0 0.046829797 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0
		 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979
		 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979
		 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979
		 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.046829797 0
		 0.04682979 0 0.04682979 0 0.046829782 0 0.046829782 0 0.046829797 0 0.04682979 0
		 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979
		 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979
		 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979
		 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.046829797 0 0.046829797 0
		 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.046829797
		 0 0.046829797 0 0.046829782 0 0.046829782 0 0.04682979 0 0.046829782 0 0.046829782
		 0 0.04682979 0 0.046829782 0 0.046829782 0 0.04682979 0 0.04682979 0 0.04682979 0
		 0.04682979 0 0.046829782 0 0.046829782 0 0.04682979 0 0.04682979 0 0.046829797 0
		 0.046829797 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.046829782 0 0.046829782
		 0 0.046829797 0 0.046829797 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0
		 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.046829797
		 0 0.046829797 0 0.046829782 0 0.046829782 0 0.04682979 0 0.04682979 0 0.04682979
		 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979
		 0 0.04682979 0 0.04682979 0 0.046829775 0 0.04682979 0 0.04682979 0 0.04682979 0
		 0.04682979 0 0.046829805 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979
		 0 0.046829805 0 0.04682979 0 0.04682979 0 0.046829775 0 0.04682979 0 0.04682979 0
		 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979
		 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979
		 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979
		 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979
		 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979
		 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979
		 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979
		 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979
		 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979
		 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979
		 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979
		 0 0.046829782 0 0.046829782 0 0.046829782 0 0.046829782 0 0.04682979 0 0.04682979
		 0 0.04682979 0 0.04682979 0 0.046829782 0 0.04682979 0 0.04682979 0 0.046829782 0
		 0.04682979 0 0.04682979 0 0.046829797 0 0.046829797 0 0.04682979 0 0.04682979 0 0.04682979
		 0 0.04682979;
	setAttr ".uvtk[250:319]" 0 0.04682979 0 0.04682979 0 0.04682979 0 0.04682979
		 0 0.04682979 0 0.046829797 0 0.04682979 0 0.04682979 0 0.04682979 0 0.046829797 0
		 0.046829782 0 0.04682979 0 0.046829782 0 0.04682979 0 0.046829782 0 0.04682979 0
		 0.04682979 0 0.046829782 0 0.04682979 0 0.046829797 0 0.046829797 0 0.04682979 0
		 0.046829786 0 0.046829786 0 0.046829782 0 0.04682979 0 0.04682979 0 0.04682979 0
		 0.04682979 0 0.04682979 0 0.046829782 0 0.046829797 0 0.046829794 0 0.04682979 0
		 0.04682979 0 0.046829797 0 0.046829797 0 0.04682979 0 0.046829797 0 0.04682979 0
		 0.04682979 0 0.046829797 0 0.04682979 0 0.04682979 0 0.04682979 0 0.046829797 0.0004851456
		 0.016704045 0.0004851158 0.029587474 -0.0035312539 0.031204 -0.0035312241 0.015087527
		 -0.036996506 0.02904512 -0.036996506 -0.0085907262 -0.025443079 -0.013313133 -0.025443079
		 0.033767521 -0.045395579 -0.014257016 -0.068573862 -0.005342464 -0.076792493 -0.024498668
		 -0.053614225 -0.033413228 -0.048469026 0.058642954 -0.071421288 0.067557529 -0.079639994
		 0.047666058 -0.056687795 0.038751483 0.42868778 0.099051639 0.042999707 0.099051639
		 0.066716157 -0.00070946943 0.40497133 -0.00070946943 0.042999707 -0.95917851 0.066716157
		 -0.75743353 0.42868778 -0.95917851 0.40497133 -0.75743353;
createNode polyMapSew -n "polyMapSew25";
	rename -uid "FC30D32F-4805-DFDD-104C-11A781E1DD32";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[213]" "e[216]" "e[223:224]";
createNode polyTweakUV -n "polyTweakUV89";
	rename -uid "1553428A-4CAD-CF64-0129-CEB962B0E4BF";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk[296:311]" -type "float2" -0.0078754015 0.00030136178
		 -0.0078856833 0.0004039396 -0.0079808123 0 -0.0079809017 0 -0.0076482589 0.00045239073
		 -0.007713228 0.00031932141 -0.007590055 0 -0.007590055 0 -0.0078404639 0.00031033973
		 -0.0077650934 0.00031033973 -0.0075701862 0.00042816144 -0.0078715477 0.00042816144
		 -0.0077452152 0 -0.0077452152 0 -0.0077452152 0 -0.0077452152 0;
createNode polyAutoProj -n "polyAutoProj53";
	rename -uid "A7F02036-4F0F-3558-714E-3996A2889965";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[102]" "f[109:112]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 1.2730526924133301 1.2730526924133301 1.2730526924133301 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV90";
	rename -uid "81B3C22D-4001-73B0-8A94-198E0D44B374";
	setAttr ".uopa" yes;
	setAttr -s 20 ".uvtk[312:331]" -type "float2" 0.26683766 0.052942429 0.26683766
		 -0.59450817 0.49826941 -0.47163501 0.49826941 -0.069931537 -0.032226399 0.091601267
		 -0.032226399 -0.63316703 0.22946195 -0.49561951 0.22946207 -0.045945499 -0.022895016
		 0.060484529 -0.3133949 0.060484529 -0.3133949 -0.34160453 -0.022895016 -0.34160453
		 -0.19969676 -0.69044828 -0.18413471 -0.38418877 -0.43068647 -0.36889243 -0.44624853
		 -0.67515194 -0.17845155 -0.59058368 -0.1938947 -0.89684331 0.052657124 -0.91196048
		 0.068100184 -0.60570085;
createNode polyMapSew -n "polyMapSew26";
	rename -uid "0807E638-4E7C-3251-44AE-6195E2944A36";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[235]" "e[237]" "e[239:240]";
createNode polyTweakUV -n "polyTweakUV91";
	rename -uid "66C0FEC9-47AD-8A3E-5484-FFA624FCCEA5";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk";
	setAttr ".uvtk[308]" -type "float2" 0.00016301 0 ;
	setAttr ".uvtk[310]" -type "float2" 0.00016301 0 ;
	setAttr ".uvtk[312]" -type "float2" -0.0076357182 0.023427332 ;
	setAttr ".uvtk[313]" -type "float2" -0.0076357182 0.023427343 ;
	setAttr ".uvtk[314]" -type "float2" -0.0078599434 0.023278171 ;
	setAttr ".uvtk[315]" -type "float2" -0.0078726392 0.023541091 ;
	setAttr ".uvtk[316]" -type "float2" -0.007798668 0.023427343 ;
	setAttr ".uvtk[317]" -type "float2" -0.007798668 0.023427332 ;
	setAttr ".uvtk[318]" -type "float2" -0.007706847 0.023556581 ;
	setAttr ".uvtk[319]" -type "float2" -0.0077338181 0.023262585 ;
	setAttr ".uvtk[320]" -type "float2" -0.0078096949 0.023090089 ;
	setAttr ".uvtk[321]" -type "float2" -0.0077627264 0.023090148 ;
	setAttr ".uvtk[322]" -type "float2" -0.007724639 0.023800014 ;
	setAttr ".uvtk[323]" -type "float2" -0.0078905206 0.023800014 ;
createNode polyAutoProj -n "polyAutoProj54";
	rename -uid "9F1A0DA0-489C-653A-286E-A3870F9143FF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[139:140]" "f[142:148]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 6.8116340637207031 6.8116340637207031 6.8116340637207031 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV92";
	rename -uid "82A582AA-4F74-35F2-5105-B59169AD7029";
	setAttr ".uopa" yes;
	setAttr -s 28 ".uvtk[324:351]" -type "float2" 0.27957353 -0.28979918 0.27957353
		 0.49454641 0.11627947 0.49454641 0.11627947 -0.28979918 0.11085512 -0.28979918 0.11085512
		 0.49454641 -0.05243893 0.49454641 -0.05243893 -0.28979918 0.6171757 0.49454635 0.45388165
		 0.49454635 0.45388165 -0.2897993 0.6171757 -0.2897993 0.44829193 0.49454635 0.28499785
		 0.49454635 0.28499785 -0.2897993 0.44829193 -0.2897993 -0.057863191 0.49454641 -0.2211571
		 0.49454641 -0.2211571 0.3312524 -0.057863191 0.3312524 -0.064862147 0.16457081 -0.064862147
		 0.32786477 -0.071086124 0.32164058 -0.071086124 0.17079496 -0.22815606 0.32786477
		 -0.2219319 0.32164058 -0.22815606 0.16457081 -0.2219319 0.17079496;
createNode polyAutoProj -n "polyAutoProj55";
	rename -uid "DE20D57C-40D2-B96B-BF55-9681F04AE67A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[141]" "f[149:152]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 1.3100168704986572 1.3100168704986572 1.3100168704986572 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV93";
	rename -uid "AAEB9EB1-4D8C-38D4-E6EA-E3BBCA9967CB";
	setAttr ".uopa" yes;
	setAttr -s 20 ".uvtk[352:371]" -type "float2" 0.25695592 0.098177172 0.25695592
		 0.55911165 0.08463566 0.55911165 0.08463566 0.098177172 0.20951985 0.094682969 0.20951985
		 -0.3662515 0.38184011 -0.3662515 0.38184011 0.094682969 0.43609929 0.098177291 0.43609929
		 0.55911183 0.26377898 0.55911183 0.26377898 0.098177291 0.031829 0.094683029 0.031829
		 -0.3662515 0.20414932 -0.3662515 0.20414932 0.094683029 0.90374881 0.55911165 0.44281435
		 0.55911165 0.44281435 0.098177113 0.90374881 0.098177113;
createNode polyAutoProj -n "polyAutoProj56";
	rename -uid "2806E1B6-47A4-F3AE-08A7-5C8E9D15BBA5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[153:154]" "f[157:160]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 8.2421131134033203 8.2421131134033203 8.2421131134033203 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV94";
	rename -uid "38B0B6DB-4005-24A5-DC19-759CEC38C285";
	setAttr ".uopa" yes;
	setAttr -s 28 ".uvtk[372:399]" -type "float2" 0.67084467 -0.089196339 0.67084467
		 0.72112173 0.61622548 0.72112173 0.61622548 0.54113638 0.59528428 0.54113638 0.59528428
		 -0.089196339 0.59046805 0.72112173 0.5149076 0.72112173 0.5149076 0.09078908 0.5358488
		 0.09078908 0.5358488 -0.089196399 0.59046805 -0.089196399 0.45042878 0.72112167 0.3959313
		 0.72112167 0.3959313 0.54113632 0.45042878 0.54113632 0.51023722 0.72112167 0.45573968
		 0.72112167 0.45573968 0.09078902 0.51023722 0.09078902 0.39062035 0.72112173 0.3361229
		 0.72112173 0.3361229 0.66650265 0.39062035 0.66650265 0.33081198 0.66662431 0.33081198
		 0.72112173 0.30987069 0.72112173 0.30987069 0.66662431;
createNode polyAutoProj -n "polyAutoProj57";
	rename -uid "B3910DB5-4F4E-787C-44FF-24807B06327F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[161:166]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 2.4273624420166016 2.4273624420166016 2.4273624420166016 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV95";
	rename -uid "9EA7C934-478F-EC59-12EE-4F8199793B90";
	setAttr ".uopa" yes;
	setAttr -s 72 ".uvtk";
	setAttr ".uvtk[324]" -type "float2" -0.0075143953 -0.18310954 ;
	setAttr ".uvtk[325]" -type "float2" 0.21585293 -0.043296419 ;
	setAttr ".uvtk[326]" -type "float2" 0.18674506 0.0032067038 ;
	setAttr ".uvtk[327]" -type "float2" -0.036622267 -0.13660641 ;
	setAttr ".uvtk[328]" -type "float2" 0.18494709 -0.042695981 ;
	setAttr ".uvtk[329]" -type "float2" -0.037423681 0.097117014 ;
	setAttr ".uvtk[330]" -type "float2" -0.066531703 0.050115716 ;
	setAttr ".uvtk[331]" -type "float2" 0.15583925 -0.089697488 ;
	setAttr ".uvtk[332]" -type "float2" 0.052814867 0.049930237 ;
	setAttr ".uvtk[333]" -type "float2" 0.023707002 0.0032553705 ;
	setAttr ".uvtk[334]" -type "float2" 0.24677375 -0.13655785 ;
	setAttr ".uvtk[335]" -type "float2" 0.27588168 -0.089882866 ;
	setAttr ".uvtk[336]" -type "float2" 0.24493653 0.097151883 ;
	setAttr ".uvtk[337]" -type "float2" 0.21582866 0.14409357 ;
	setAttr ".uvtk[338]" -type "float2" -0.0062481556 0.0042805076 ;
	setAttr ".uvtk[339]" -type "float2" 0.022859707 -0.042661145 ;
	setAttr ".uvtk[340]" -type "float2" -0.12899449 -0.03378354 ;
	setAttr ".uvtk[341]" -type "float2" -0.12899449 -0.033783525 ;
	setAttr ".uvtk[342]" -type "float2" -0.12899449 -0.03378351 ;
	setAttr ".uvtk[343]" -type "float2" -0.12899449 -0.03378351 ;
	setAttr ".uvtk[344]" -type "float2" 0.18505859 0.057242915 ;
	setAttr ".uvtk[345]" -type "float2" 0.18505859 0.11545877 ;
	setAttr ".uvtk[346]" -type "float2" 0.18283963 0.11323981 ;
	setAttr ".uvtk[347]" -type "float2" 0.18283963 0.059461992 ;
	setAttr ".uvtk[348]" -type "float2" 0.12684286 0.11545877 ;
	setAttr ".uvtk[349]" -type "float2" 0.12906182 0.11323981 ;
	setAttr ".uvtk[350]" -type "float2" 0.12684286 0.057242915 ;
	setAttr ".uvtk[351]" -type "float2" 0.12906182 0.059461992 ;
	setAttr ".uvtk[352]" -type "float2" 0.022613887 0.015418552 ;
	setAttr ".uvtk[353]" -type "float2" 0.022613887 0.015418552 ;
	setAttr ".uvtk[354]" -type "float2" 0.022613887 0.015418552 ;
	setAttr ".uvtk[355]" -type "float2" 0.022613887 0.015418552 ;
	setAttr ".uvtk[356]" -type "float2" 0.022613887 0.015418552 ;
	setAttr ".uvtk[357]" -type "float2" 0.022613887 0.015418552 ;
	setAttr ".uvtk[358]" -type "float2" 0.022613887 0.015418552 ;
	setAttr ".uvtk[359]" -type "float2" 0.022613887 0.015418552 ;
	setAttr ".uvtk[360]" -type "float2" 0.022613887 0.015418552 ;
	setAttr ".uvtk[361]" -type "float2" 0.022613887 0.015418552 ;
	setAttr ".uvtk[362]" -type "float2" 0.022613887 0.015418552 ;
	setAttr ".uvtk[363]" -type "float2" 0.022613887 0.015418552 ;
	setAttr ".uvtk[364]" -type "float2" 0.022613887 0.015418552 ;
	setAttr ".uvtk[365]" -type "float2" 0.022613887 0.015418552 ;
	setAttr ".uvtk[366]" -type "float2" 0.022613887 0.015418552 ;
	setAttr ".uvtk[367]" -type "float2" 0.022613887 0.015418552 ;
	setAttr ".uvtk[368]" -type "float2" 0.022613887 0.015418552 ;
	setAttr ".uvtk[369]" -type "float2" 0.022613887 0.015418552 ;
	setAttr ".uvtk[370]" -type "float2" 0.022613887 0.015418552 ;
	setAttr ".uvtk[371]" -type "float2" 0.022613887 0.015418552 ;
	setAttr ".uvtk[400]" -type "float2" 0.44643643 0.035124272 ;
	setAttr ".uvtk[401]" -type "float2" 0.44643643 0.85941923 ;
	setAttr ".uvtk[402]" -type "float2" 0.30867127 0.85941923 ;
	setAttr ".uvtk[403]" -type "float2" 0.30867127 0.035124272 ;
	setAttr ".uvtk[404]" -type "float2" 0.30294052 0.035124272 ;
	setAttr ".uvtk[405]" -type "float2" 0.30294052 0.85941923 ;
	setAttr ".uvtk[406]" -type "float2" 0.16517535 0.85941923 ;
	setAttr ".uvtk[407]" -type "float2" 0.16517535 0.035124272 ;
	setAttr ".uvtk[408]" -type "float2" 0.87532902 0.85941935 ;
	setAttr ".uvtk[409]" -type "float2" 0.66729546 0.85941935 ;
	setAttr ".uvtk[410]" -type "float2" 0.66729546 0.035124511 ;
	setAttr ".uvtk[411]" -type "float2" 0.87532902 0.035124511 ;
	setAttr ".uvtk[412]" -type "float2" 0.66079414 0.85941935 ;
	setAttr ".uvtk[413]" -type "float2" 0.45276049 0.85941935 ;
	setAttr ".uvtk[414]" -type "float2" 0.45276049 0.035124511 ;
	setAttr ".uvtk[415]" -type "float2" 0.66079414 0.035124511 ;
	setAttr ".uvtk[416]" -type "float2" 0.15944472 0.65138555 ;
	setAttr ".uvtk[417]" -type "float2" 0.15944472 0.85941923 ;
	setAttr ".uvtk[418]" -type "float2" 0.02167955 0.85941923 ;
	setAttr ".uvtk[419]" -type "float2" 0.02167955 0.65138555 ;
	setAttr ".uvtk[420]" -type "float2" 0.10773888 0.439724 ;
	setAttr ".uvtk[421]" -type "float2" 0.10773888 0.64775741 ;
	setAttr ".uvtk[422]" -type "float2" -0.030026287 0.64775741 ;
	setAttr ".uvtk[423]" -type "float2" -0.030026287 0.439724 ;
createNode polyMapSew -n "polyMapSew27";
	rename -uid "63C3FDEA-4426-C44A-1C5A-BE84E5372B80";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[299:300]" "e[303]";
createNode polyTweakUV -n "polyTweakUV96";
	rename -uid "FE9FFDE2-402F-3E1C-0D51-B9B21F88F0BC";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk[324:337]" -type "float2" 0.00014966726 0 -0.00049561262
		 0 -0.00042045116 0.00043858928 7.4505806e-05 0.00043849988 0.00041556358 0.0001217956
		 -8.2731247e-05 0.0001217956 -8.1062317e-06 0.00043852968 -5.0067902e-06 0.00043858928
		 0.00049561262 0 -0.00014960766 0 0.014500627 -0.0095095383 0.032042146 -0.0095095383
		 0.032042146 0.0080319894 0.014500627 0.0080319894;
createNode polyMapSew -n "polyMapSew28";
	rename -uid "D57D1655-4D9D-4DDA-B51C-AE823741D78A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[298]";
createNode polyTweakUV -n "polyTweakUV97";
	rename -uid "1893940C-4DA7-5672-3C08-EAB6FC8B4D6C";
	setAttr ".uopa" yes;
	setAttr -s 28 ".uvtk[336:363]" -type "float2" 0.01563077 -0.018798687 0.01563077
		 -0.001148202 0.014978813 -0.0018210192 0.014978813 -0.018125869 -0.0014709332 -0.001148202
		 -0.00081915641 -0.0018210192 -0.0014709332 -0.018798687 -0.00081915641 -0.018125869
		 0.0077571231 -0.062795818 0.0077571231 -0.062795818 0.0077571231 -0.062795818 0.0077571231
		 -0.062795818 0.0077571231 -0.062795818 0.0077571231 -0.062795818 0.0077571231 -0.062795818
		 0.0077571231 -0.062795818 0.0077571231 -0.062795818 0.0077571231 -0.062795818 0.0077571231
		 -0.062795818 0.0077571231 -0.062795818 0.0077571827 -0.062795818 0.0077571827 -0.062795818
		 0.0077571231 -0.062795818 0.0077571231 -0.062795818 0.0077571231 -0.062795818 0.0077571231
		 -0.062795818 0.0077571231 -0.062795818 0.0077571231 -0.062795818;
createNode polyMapSew -n "polyMapSew29";
	rename -uid "32A54749-469B-1182-CD25-6FA593533DC6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[296]";
createNode polyTweakUV -n "polyTweakUV98";
	rename -uid "D78CD861-4AD7-7E35-96CE-4493A26394D2";
	setAttr ".uopa" yes;
	setAttr -s 34 ".uvtk[324:357]" -type "float2" -0.10921426 0 -0.11331096
		 1.6689301e-06 -0.11331096 -0.0001565814 -0.10921426 0 -0.11357077 0 -0.10937931 3.8146973e-06
		 -0.10937931 0 -0.11331096 0 -0.11357077 0 -0.10937931 -3.5643578e-05 -0.10929681
		 -1.6987324e-06 -0.10929681 0.0001565516 -0.11344089 -3.8146973e-06 -0.11344089 3.5643578e-05
		 -0.11344089 0 -0.11344089 0 -0.11344095 0 -0.11344095 0 -0.14142922 -0.049180102
		 -0.14142922 -0.060902134 -0.13916519 -0.060902134 -0.13916519 -0.049180102 -0.1450848
		 0.044219118 -0.1450848 -0.037879799 -0.11675414 -0.037879799 -0.11675414 0.044219118
		 -0.12775192 -0.002466714 -0.12775192 -0.013883118 -0.12583575 -0.013883118 -0.12583575
		 -0.002466714 -0.15863676 0.09109173 -0.15863676 0.0093997745 -0.13020872 0.0093997745
		 -0.13020884 0.09109173;
createNode polyPinUV -n "polyPinUV9";
	rename -uid "47A4423F-491A-A87F-733E-2BBD866DB028";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "map[342:361]";
	setAttr -s 20 ".pn[342:361]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
createNode polyPinUV -n "polyPinUV10";
	rename -uid "CDA5CCA4-4F87-F22D-83A0-78A25CEBE8F4";
	setAttr ".uopa" yes;
	setAttr ".op" 2;
createNode polyMapSew -n "polyMapSew30";
	rename -uid "D6E724F2-45D8-FBF9-1ECB-D5B6142AEFD8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[313:314]" "e[318]";
createNode polyTweak -n "polyTweak35";
	rename -uid "27403EC4-47BD-AAF7-89E0-D794571D25F6";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[188:191]" -type "float3"  0 0 0.042273697 0 0 0.042273697
		 0 0 0.042273697 0 0 0.042273697;
createNode polyTweakUV -n "polyTweakUV99";
	rename -uid "E7EDD107-4A7E-C974-AF62-BE8945BA0CD9";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk[342:355]" -type "float2" -1.2814999e-05 0.00010928691
		 -1.3113022e-05 0.00010928691 -0.00015735626 0.00010928691 1.6868114e-05 0.00010928691
		 1.3113022e-05 0.0001092571 4.0531158e-06 0.00032780331 0.00015735626 0.00032780331
		 6.7412853e-05 0.0001092571 5.6624413e-06 0.0001092571 1.1324883e-05 0.0001092571
		 -0.030010622 -0.014187858 -0.11153102 -0.014187858 -0.11153102 -0.095708296 -0.030010622
		 -0.095708296;
createNode polyMapSew -n "polyMapSew31";
	rename -uid "4150EF4B-4BC3-95D9-12DB-C49812936A97";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[317]";
createNode polyTweakUV -n "polyTweakUV100";
	rename -uid "CEE8DFC8-4361-7DAF-7D30-D085C7F7E637";
	setAttr ".uopa" yes;
	setAttr -s 21 ".uvtk";
	setAttr ".uvtk[342]" -type "float2" 0 -0.00018101931 ;
	setAttr ".uvtk[343]" -type "float2" 0 0.00013872981 ;
	setAttr ".uvtk[344]" -type "float2" -0.00011104345 0 ;
	setAttr ".uvtk[345]" -type "float2" -0.00011104345 0 ;
	setAttr ".uvtk[348]" -type "float2" 0.00011104345 0 ;
	setAttr ".uvtk[349]" -type "float2" 0.00011104345 0 ;
	setAttr ".uvtk[351]" -type "float2" 0.00011104345 0 ;
	setAttr ".uvtk[352]" -type "float2" 0 0.00018101931 ;
	setAttr ".uvtk[353]" -type "float2" 0 -0.00013875961 ;
	setAttr ".uvtk[354]" -type "float2" -0.13409154 -0.16327561 ;
	setAttr ".uvtk[355]" -type "float2" 0.051606312 0.022422239 ;
	setAttr ".uvtk[356]" -type "float2" 0.039089516 0.034939036 ;
	setAttr ".uvtk[357]" -type "float2" -0.0021571368 -0.0063076168 ;
	setAttr ".uvtk[358]" -type "float2" -0.0069562048 -0.0015085489 ;
	setAttr ".uvtk[359]" -type "float2" -0.15140741 -0.14595975 ;
	setAttr ".uvtk[360]" -type "float2" 0.083413258 -0.066723682 ;
	setAttr ".uvtk[361]" -type "float2" 0.066097528 -0.043535583 ;
	setAttr ".uvtk[362]" -type "float2" -0.12934552 -0.18798673 ;
	setAttr ".uvtk[363]" -type "float2" -0.12454654 -0.19592239 ;
	setAttr ".uvtk[364]" -type "float2" -0.17902906 -0.23716904 ;
	setAttr ".uvtk[365]" -type "float2" -0.16651209 -0.25242174 ;
createNode polyPinUV -n "polyPinUV11";
	rename -uid "DF5A9B98-41DB-55D5-764E-78A04B2BFDAE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "map[366:369]" "map[374:381]";
	setAttr -s 12 ".pn";
	setAttr ".pn[366]" 1;
	setAttr ".pn[367]" 1;
	setAttr ".pn[368]" 1;
	setAttr ".pn[369]" 1;
	setAttr ".pn[374]" 1;
	setAttr ".pn[375]" 1;
	setAttr ".pn[376]" 1;
	setAttr ".pn[377]" 1;
	setAttr ".pn[378]" 1;
	setAttr ".pn[379]" 1;
	setAttr ".pn[380]" 1;
	setAttr ".pn[381]" 1;
createNode polyFlipUV -n "polyFlipUV10";
	rename -uid "86D30654-43DD-9A39-D0C5-2BB9356B3F92";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[157]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".up" yes;
	setAttr ".pu" 0.63048943879999997;
	setAttr ".pv" 0.75419396159999996;
createNode polyTweak -n "polyTweak36";
	rename -uid "24A579C1-4E9E-5C83-BD67-969AFF3C6BDE";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[192]" -type "float3" 0 0 -0.014462164 ;
	setAttr ".tk[193]" -type "float3" 0 0 -0.014462164 ;
	setAttr ".tk[194]" -type "float3" 0 -0.038061894 -0.014462164 ;
	setAttr ".tk[195]" -type "float3" 0 -0.038061894 -0.014462164 ;
	setAttr ".tk[196]" -type "float3" 0 -0.038061894 0.028838292 ;
	setAttr ".tk[197]" -type "float3" 0 -0.038061894 0.028838292 ;
	setAttr ".tk[200]" -type "float3" 0 0 0.028838292 ;
	setAttr ".tk[201]" -type "float3" 0 0 0.028838292 ;
createNode polyTweakUV -n "polyTweakUV101";
	rename -uid "75D2CB2A-4B51-0726-15BA-6D8994AC31EE";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk[354:359]" -type "float2" -0.19986348 -0.042443991
		 0.23577915 -0.042443991 0.23577915 -0.070311919 0.13983884 -0.070311919 0.13983884
		 -0.083100781 -0.19986348 -0.083100781;
createNode polyFlipUV -n "polyFlipUV11";
	rename -uid "4D2D4BC0-41CF-C85B-0165-188383968C1C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[157]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".up" yes;
	setAttr ".pu" 0.64844733480000005;
	setAttr ".pv" 0.69142156840000002;
createNode polyTweakUV -n "polyTweakUV102";
	rename -uid "B5008549-49CF-D98B-B323-BBB7330D620B";
	setAttr ".uopa" yes;
	setAttr -s 22 ".uvtk";
	setAttr ".uvtk[354]" -type "float2" 0 0.01542256 ;
	setAttr ".uvtk[355]" -type "float2" 0 0.01542256 ;
	setAttr ".uvtk[356]" -type "float2" 0 0.01542256 ;
	setAttr ".uvtk[357]" -type "float2" 0 0.01542256 ;
	setAttr ".uvtk[358]" -type "float2" 0 0.01542256 ;
	setAttr ".uvtk[359]" -type "float2" 0 0.01542256 ;
	setAttr ".uvtk[366]" -type "float2" -0.2061373 -0.027736856 ;
	setAttr ".uvtk[367]" -type "float2" -0.21862617 -0.043236263 ;
	setAttr ".uvtk[368]" -type "float2" -0.16413379 -0.084482908 ;
	setAttr ".uvtk[369]" -type "float2" -0.15164483 -0.068983436 ;
	setAttr ".uvtk[370]" -type "float2" -0.13057508 -0.028045282 ;
	setAttr ".uvtk[371]" -type "float2" -0.14306404 -0.043419346 ;
	setAttr ".uvtk[372]" -type "float2" 0.052617341 -0.18787065 ;
	setAttr ".uvtk[373]" -type "float2" 0.065106302 -0.17249656 ;
	setAttr ".uvtk[374]" -type "float2" -0.23555566 -0.043220803 ;
	setAttr ".uvtk[375]" -type "float2" -0.23229779 -0.043220803 ;
	setAttr ".uvtk[376]" -type "float2" -0.23229779 -0.040266439 ;
	setAttr ".uvtk[377]" -type "float2" -0.23555566 -0.040266439 ;
	setAttr ".uvtk[378]" -type "float2" -0.17916982 -0.040397324 ;
	setAttr ".uvtk[379]" -type "float2" -0.17916982 -0.043407835 ;
	setAttr ".uvtk[380]" -type "float2" -0.1763082 -0.043407835 ;
	setAttr ".uvtk[381]" -type "float2" -0.1763082 -0.040397324 ;
createNode polyPinUV -n "polyPinUV12";
	rename -uid "B6E8BAAC-4C7C-B213-B273-1084CF392418";
	setAttr ".uopa" yes;
	setAttr ".op" 2;
createNode polyAutoProj -n "polyAutoProj58";
	rename -uid "0B3A22E2-4FCB-C3D1-4F2E-EDA818395445";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[155]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 0.76855897903442383 0.76855897903442383 0.76855897903442383 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV103";
	rename -uid "74C6CB53-4E28-107A-B0A0-A1810DDDC7D9";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk";
	setAttr ".uvtk[374]" -type "float2" 0.00013786554 0.015609086 ;
	setAttr ".uvtk[375]" -type "float2" -0.015609026 -0.00013780594 ;
	setAttr ".uvtk[376]" -type "float2" -0.00013780594 -0.015609026 ;
	setAttr ".uvtk[377]" -type "float2" 0.015609086 0.00013786554 ;
	setAttr ".uvtk[406]" -type "float2" 0.076931812 -0.31819397 ;
	setAttr ".uvtk[407]" -type "float2" 0.79530263 -0.30268663 ;
	setAttr ".uvtk[408]" -type "float2" 0.77239823 0.69332939 ;
	setAttr ".uvtk[409]" -type "float2" 0.054027427 0.67782205 ;
createNode polyMapSew -n "polyMapSew32";
	rename -uid "418F09CE-4148-8B9C-2145-AB996450304B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[322:323]" "e[333]" "e[335]" "e[337:338]";
createNode polyTweakUV -n "polyTweakUV104";
	rename -uid "ECD7B4BE-407C-71E2-C74C-5BA0774E7213";
	setAttr ".uopa" yes;
	setAttr -s 41 ".uvtk";
	setAttr ".uvtk[354]" -type "float2" 0.0001308918 0 ;
	setAttr ".uvtk[357]" -type "float2" -4.5657158e-05 0 ;
	setAttr ".uvtk[358]" -type "float2" 3.015995e-05 0.00017637014 ;
	setAttr ".uvtk[359]" -type "float2" -8.2373619e-05 0.00013774633 ;
	setAttr ".uvtk[360]" -type "float2" -1.4305115e-05 -5.9604645e-08 ;
	setAttr ".uvtk[361]" -type "float2" -0.0001308322 4.2319298e-05 ;
	setAttr ".uvtk[362]" -type "float2" 4.5657158e-05 7.8380108e-05 ;
	setAttr ".uvtk[363]" -type "float2" 8.3446503e-07 0 ;
	setAttr ".uvtk[365]" -type "float2" 0 5.9604645e-08 ;
	setAttr ".uvtk[366]" -type "float2" -0.00051151885 -0.00011384487 ;
	setAttr ".uvtk[367]" -type "float2" -0.00051163806 -7.8439713e-05 ;
	setAttr ".uvtk[368]" -type "float2" -0.00017052752 -5.376339e-05 ;
	setAttr ".uvtk[369]" -type "float2" -0.00017052752 3.439188e-05 ;
	setAttr ".uvtk[370]" -type "float2" -0.00051157846 -0.00017642975 ;
	setAttr ".uvtk[371]" -type "float2" -0.00051157846 -1.7225742e-05 ;
	setAttr ".uvtk[372]" -type "float2" -0.19406424 -0.20941655 ;
	setAttr ".uvtk[373]" -type "float2" -0.10729939 -0.12687324 ;
	setAttr ".uvtk[374]" -type "float2" -0.12109482 -0.11143508 ;
	setAttr ".uvtk[375]" -type "float2" -0.20785965 -0.19397844 ;
	setAttr ".uvtk[376]" -type "float2" -0.12159601 -0.15499264 ;
	setAttr ".uvtk[377]" -type "float2" -0.20856218 -0.072449356 ;
	setAttr ".uvtk[378]" -type "float2" -0.22235793 -0.088254154 ;
	setAttr ".uvtk[379]" -type "float2" -0.13539165 -0.17079741 ;
	setAttr ".uvtk[380]" -type "float2" -0.15120356 -0.088188082 ;
	setAttr ".uvtk[381]" -type "float2" -0.17203568 -0.11152139 ;
	setAttr ".uvtk[382]" -type "float2" -0.085209116 -0.19406472 ;
	setAttr ".uvtk[383]" -type "float2" -0.064377025 -0.17073141 ;
	setAttr ".uvtk[384]" -type "float2" -0.085850097 -0.072477236 ;
	setAttr ".uvtk[385]" -type "float2" -0.10668217 -0.048715945 ;
	setAttr ".uvtk[386]" -type "float2" -0.19326724 -0.13125926 ;
	setAttr ".uvtk[387]" -type "float2" -0.17243518 -0.15502065 ;
	setAttr ".uvtk[388]" -type "float2" -0.22275652 -0.092645288 ;
	setAttr ".uvtk[389]" -type "float2" -0.22275652 -0.048855048 ;
	setAttr ".uvtk[390]" -type "float2" -0.25145617 -0.048855048 ;
	setAttr ".uvtk[391]" -type "float2" -0.25145617 -0.092645288 ;
	setAttr ".uvtk[392]" -type "float2" -0.14113267 -0.13025479 ;
	setAttr ".uvtk[393]" -type "float2" -0.14113255 -0.13245185 ;
	setAttr ".uvtk[394]" -type "float2" -0.1401511 -0.1324518 ;
	setAttr ".uvtk[395]" -type "float2" -0.14015119 -0.13025494 ;
	setAttr ".uvtk[396]" -type "float2" 0 -7.6174736e-05 ;
	setAttr ".uvtk[397]" -type "float2" 0 4.1723251e-06 ;
createNode polyMapSew -n "polyMapSew33";
	rename -uid "CC1B0D1E-4F3F-C6F6-835D-9C8B99FE708A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[339]" "e[341]" "e[345:346]" "e[349]";
createNode polyTweakUV -n "polyTweakUV105";
	rename -uid "56B61531-498B-9F78-B5C2-3D85276530E4";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk[372:385]" -type "float2" 0.0003071246 0.00015435391
		 -0.00044946524 0.00015435391 -0.00046847912 0.00019130879 0.00035099362 0.00026527815
		 -0.00047777744 0.0003332856 0.00027988528 0.00011662272 0.00041536664 0.00039289024
		 -0.00049273821 0.0003949783 -0.00043337198 8.4795291e-05 0.00020198202 0.00015429431
		 -0.00038570724 0.00022391253 -0.00038570724 -0.00031681222 0.00013206841 4.3429667e-05
		 0.00013218762 0.00039927987;
createNode polyPinUV -n "polyPinUV13";
	rename -uid "690B9BAA-4403-5933-202B-64848204ACDC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "map[372:381]";
	setAttr -s 10 ".pn[372:381]"  1 1 1 1 1 1 1 1 1 1;
createNode polyPinUV -n "polyPinUV14";
	rename -uid "DD456CF2-45A4-07C5-9FAB-C0AD1003C207";
	setAttr ".uopa" yes;
	setAttr ".op" 2;
createNode file -n "file2";
	rename -uid "D0883030-4754-48D7-9BDB-FA9D657077C6";
	setAttr ".ftn" -type "string" "C:/Users/Liam - Moose/Documents/UVminecraftTexture.png";
	setAttr ".ft" 0;
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "798CC21A-4123-49BA-CAA3-18A9C21114E9";
createNode groupId -n "groupId29";
	rename -uid "37CAD2B9-400E-61C1-7C6F-B0984ACC37A1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	rename -uid "D7171664-4528-7D3E-C453-DA8641B5ADE6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:166]";
createNode groupId -n "groupId30";
	rename -uid "478ACA5C-4E2E-96EC-C347-8C8881952DA2";
	setAttr ".ihi" 0;
createNode polyFlipUV -n "polyFlipUV12";
	rename -uid "0605BCB5-4A4B-4778-C7A8-79ACCB6614D4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[93]" "f[95:98]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".up" yes;
	setAttr ".pu" 0.51545572279999996;
	setAttr ".pv" 0.16787401590000001;
createNode polyTweakUV -n "polyTweakUV106";
	rename -uid "7EAE2414-4508-2603-FD3C-04B6B83E8890";
	setAttr ".uopa" yes;
	setAttr -s 79 ".uvtk";
	setAttr ".uvtk[127]" -type "float2" -0.0038059461 0 ;
	setAttr ".uvtk[128]" -type "float2" -0.0038059461 0 ;
	setAttr ".uvtk[134]" -type "float2" 5.3216121e-05 0 ;
	setAttr ".uvtk[135]" -type "float2" 5.3216121e-05 0 ;
	setAttr ".uvtk[202]" -type "float2" -0.0025695092 0 ;
	setAttr ".uvtk[203]" -type "float2" -0.0025695092 0 ;
	setAttr ".uvtk[312]" -type "float2" -0.046422243 0.038498685 ;
	setAttr ".uvtk[313]" -type "float2" -0.046422243 -0.038668633 ;
	setAttr ".uvtk[314]" -type "float2" -0.015621901 -0.023515835 ;
	setAttr ".uvtk[315]" -type "float2" -0.015621901 0.023341998 ;
	setAttr ".uvtk[316]" -type "float2" 0.046422243 -0.03881906 ;
	setAttr ".uvtk[317]" -type "float2" 0.046422243 0.038649097 ;
	setAttr ".uvtk[318]" -type "float2" 0.015596151 0.023341998 ;
	setAttr ".uvtk[319]" -type "float2" 0.015596151 -0.023515835 ;
	setAttr ".uvtk[320]" -type "float2" 0.015596151 0.054707184 ;
	setAttr ".uvtk[321]" -type "float2" -0.015621901 0.054707184 ;
	setAttr ".uvtk[322]" -type "float2" -0.015621901 -0.054707192 ;
	setAttr ".uvtk[323]" -type "float2" 0.015596151 -0.054707192 ;
	setAttr ".uvtk[324]" -type "float2" -0.00010188721 2.1435873e-05 ;
	setAttr ".uvtk[325]" -type "float2" -0.00015596382 2.1435873e-05 ;
	setAttr ".uvtk[326]" -type "float2" -0.00015596382 9.2860777e-05 ;
	setAttr ".uvtk[327]" -type "float2" -0.00010188721 9.2875198e-05 ;
	setAttr ".uvtk[328]" -type "float2" -0.00015596382 9.8548582e-05 ;
	setAttr ".uvtk[329]" -type "float2" -0.00010188721 9.8548582e-05 ;
	setAttr ".uvtk[330]" -type "float2" -0.00010188721 0 ;
	setAttr ".uvtk[331]" -type "float2" -0.00015596382 0 ;
	setAttr ".uvtk[332]" -type "float2" -0.00015596382 0.0001644619 ;
	setAttr ".uvtk[333]" -type "float2" -0.00010188721 0.0001644619 ;
	setAttr ".uvtk[334]" -type "float2" -0.00010188721 2.142787e-05 ;
	setAttr ".uvtk[335]" -type "float2" -0.00010188721 9.2875198e-05 ;
	setAttr ".uvtk[336]" -type "float2" 0.00013324886 9.8548582e-05 ;
	setAttr ".uvtk[337]" -type "float2" 0.00013324886 0.00016447857 ;
	setAttr ".uvtk[338]" -type "float2" 0.00013324886 0 ;
	setAttr ".uvtk[339]" -type "float2" 0.00013324886 9.8548582e-05 ;
	setAttr ".uvtk[340]" -type "float2" -0.00015596382 0 ;
	setAttr ".uvtk[341]" -type "float2" -0.00015596382 9.8548582e-05 ;
	setAttr ".uvtk[342]" -type "float2" -0.00023963285 0.00027727708 ;
	setAttr ".uvtk[343]" -type "float2" -0.00023963285 0 ;
	setAttr ".uvtk[344]" -type "float2" 4.3234679e-05 0 ;
	setAttr ".uvtk[345]" -type "float2" 4.3234679e-05 0.00027727708 ;
	setAttr ".uvtk[346]" -type "float2" -0.00023963285 0 ;
	setAttr ".uvtk[347]" -type "float2" -0.00023963285 0 ;
	setAttr ".uvtk[348]" -type "float2" 4.3234679e-05 0 ;
	setAttr ".uvtk[349]" -type "float2" 4.3234679e-05 0 ;
	setAttr ".uvtk[350]" -type "float2" -0.00023963285 0.00025757536 ;
	setAttr ".uvtk[351]" -type "float2" 4.3234679e-05 0.00025757536 ;
	setAttr ".uvtk[352]" -type "float2" 0.00028818756 0.00027727708 ;
	setAttr ".uvtk[353]" -type "float2" 0.00028818756 0 ;
	setAttr ".uvtk[354]" -type "float2" -0.00012188384 0.00020039912 ;
	setAttr ".uvtk[355]" -type "float2" 0 0.00020039912 ;
	setAttr ".uvtk[359]" -type "float2" -0.00012188384 0 ;
	setAttr ".uvtk[360]" -type "float2" -0.00012188384 0 ;
	setAttr ".uvtk[361]" -type "float2" -0.00012188384 0 ;
	setAttr ".uvtk[363]" -type "float2" 0 0.00026725739 ;
	setAttr ".uvtk[364]" -type "float2" -0.00024523793 0.00026725739 ;
	setAttr ".uvtk[365]" -type "float2" -0.00024523793 0 ;
	setAttr ".uvtk[366]" -type "float2" 8.1419945e-05 0 ;
	setAttr ".uvtk[367]" -type "float2" 8.1419945e-05 0 ;
	setAttr ".uvtk[368]" -type "float2" -5.9783459e-05 0 ;
	setAttr ".uvtk[369]" -type "float2" -5.9783459e-05 0 ;
	setAttr ".uvtk[373]" -type "float2" 0 9.6866388e-05 ;
	setAttr ".uvtk[374]" -type "float2" 0 -2.3654204e-05 ;
	setAttr ".uvtk[375]" -type "float2" 0 -2.3654204e-05 ;
	setAttr ".uvtk[376]" -type "float2" 0 -3.9339066e-06 ;
	setAttr ".uvtk[377]" -type "float2" 0 -3.9339066e-06 ;
	setAttr ".uvtk[378]" -type "float2" 0 -2.9206276e-06 ;
	setAttr ".uvtk[379]" -type "float2" 0 -2.9206276e-06 ;
	setAttr ".uvtk[383]" -type "float2" 0 -3.9339066e-06 ;
	setAttr ".uvtk[384]" -type "float2" 0.00017483003 -2.3654204e-05 ;
	setAttr ".uvtk[385]" -type "float2" 0.00017483003 -2.9206276e-06 ;
	setAttr ".uvtk[386]" -type "float2" 0.00013560822 0 ;
	setAttr ".uvtk[387]" -type "float2" 0.00013560822 0 ;
createNode polyPinUV -n "polyPinUV15";
	rename -uid "7E4F4EF7-4D3E-7007-4D8F-329BBEF2D422";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "map[372:381]" "map[384:385]";
	setAttr -s 12 ".pn";
	setAttr ".pn[372]" 1;
	setAttr ".pn[373]" 1;
	setAttr ".pn[374]" 1;
	setAttr ".pn[375]" 1;
	setAttr ".pn[376]" 1;
	setAttr ".pn[377]" 1;
	setAttr ".pn[378]" 1;
	setAttr ".pn[379]" 1;
	setAttr ".pn[380]" 1;
	setAttr ".pn[381]" 1;
	setAttr ".pn[384]" 1;
	setAttr ".pn[385]" 1;
createNode polyPinUV -n "polyPinUV16";
	rename -uid "3366D4E5-4F39-4548-0251-4E98A99EA27A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "map[374:381]" "map[384:385]";
	setAttr -s 10 ".pn";
	setAttr ".pn[374]" 0;
	setAttr ".pn[375]" 0;
	setAttr ".pn[376]" 0;
	setAttr ".pn[377]" 0;
	setAttr ".pn[378]" 0;
	setAttr ".pn[379]" 0;
	setAttr ".pn[380]" 0;
	setAttr ".pn[381]" 0;
	setAttr ".pn[384]" 0;
	setAttr ".pn[385]" 0;
	setAttr ".op" 1;
createNode polyPinUV -n "polyPinUV17";
	rename -uid "B53E7717-4498-F112-4444-B08A1C0DE24C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "map[374:375]" "map[378:379]" "map[384:385]";
	setAttr -s 6 ".pn";
	setAttr ".pn[374]" 1;
	setAttr ".pn[375]" 1;
	setAttr ".pn[378]" 1;
	setAttr ".pn[379]" 1;
	setAttr ".pn[384]" 1;
	setAttr ".pn[385]" 1;
createNode polyPinUV -n "polyPinUV18";
	rename -uid "A0C17450-4C4E-5F4A-20AD-8E819803A60D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "map[374:375]" "map[378:379]" "map[384:385]";
	setAttr -s 6 ".pn";
	setAttr ".pn[374]" 0;
	setAttr ".pn[375]" 0;
	setAttr ".pn[378]" 0;
	setAttr ".pn[379]" 0;
	setAttr ".pn[384]" 0;
	setAttr ".pn[385]" 0;
	setAttr ".op" 1;
createNode polyPinUV -n "polyPinUV19";
	rename -uid "91F5330D-476E-9B61-CAFD-C39361C93F2E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "map[374:385]";
	setAttr -s 12 ".pn[374:385]"  1 1 1 1 1 1 1 1 1 1 1 1;
createNode polyPinUV -n "polyPinUV20";
	rename -uid "C8608B89-473F-A0A9-7A17-2A8E9DFDC288";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "map[372:375]" "map[384]";
	setAttr -s 5 ".pn";
	setAttr ".pn[372]" 0;
	setAttr ".pn[373]" 0;
	setAttr ".pn[374]" 0;
	setAttr ".pn[375]" 0;
	setAttr ".pn[384]" 0;
	setAttr ".op" 1;
createNode polyPinUV -n "polyPinUV21";
	rename -uid "A15B6387-4F40-97B3-6C49-F9A734A96DF6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "map[372:383]";
	setAttr -s 12 ".pn[372:383]"  1 1 1 1 1 1 1 1 1 1 1 1;
createNode polyPinUV -n "polyPinUV22";
	rename -uid "9BED0AA4-4987-4880-AEB9-7D8EB57A92D4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "map[374]" "map[379]" "map[384:385]";
	setAttr -s 4 ".pn";
	setAttr ".pn[374]" 0;
	setAttr ".pn[379]" 0;
	setAttr ".pn[384]" 0;
	setAttr ".pn[385]" 0;
	setAttr ".op" 1;
createNode polyPinUV -n "polyPinUV23";
	rename -uid "4F5AD9D8-4FDD-77CF-9FE4-63BBCDB7E09B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "map[358:387]";
	setAttr -s 30 ".pn[358:387]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1;
createNode polyPinUV -n "polyPinUV24";
	rename -uid "B65D80FC-4584-EA5B-C87C-97ABCE49427D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "map[354:371]" "map[386:387]";
	setAttr -s 20 ".pn";
	setAttr ".pn[354]" 0;
	setAttr ".pn[355]" 0;
	setAttr ".pn[356]" 0;
	setAttr ".pn[357]" 0;
	setAttr ".pn[358]" 0;
	setAttr ".pn[359]" 0;
	setAttr ".pn[360]" 0;
	setAttr ".pn[361]" 0;
	setAttr ".pn[362]" 0;
	setAttr ".pn[363]" 0;
	setAttr ".pn[364]" 0;
	setAttr ".pn[365]" 0;
	setAttr ".pn[366]" 0;
	setAttr ".pn[367]" 0;
	setAttr ".pn[368]" 0;
	setAttr ".pn[369]" 0;
	setAttr ".pn[370]" 0;
	setAttr ".pn[371]" 0;
	setAttr ".pn[386]" 0;
	setAttr ".pn[387]" 0;
	setAttr ".op" 1;
createNode polyPinUV -n "polyPinUV25";
	rename -uid "3F141910-46F2-9718-0971-6BBE5D5A5895";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "map[354:359]" "map[361:362]" "map[366:371]" "map[386:387]";
	setAttr -s 16 ".pn";
	setAttr ".pn[354]" 1;
	setAttr ".pn[355]" 1;
	setAttr ".pn[356]" 1;
	setAttr ".pn[357]" 1;
	setAttr ".pn[358]" 1;
	setAttr ".pn[359]" 1;
	setAttr ".pn[361]" 1;
	setAttr ".pn[362]" 1;
	setAttr ".pn[366]" 1;
	setAttr ".pn[367]" 1;
	setAttr ".pn[368]" 1;
	setAttr ".pn[369]" 1;
	setAttr ".pn[370]" 1;
	setAttr ".pn[371]" 1;
	setAttr ".pn[386]" 1;
	setAttr ".pn[387]" 1;
createNode polyPinUV -n "polyPinUV26";
	rename -uid "0A427769-4C81-6E38-F022-BEAA6730BDAC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "map[354:369]" "map[386:387]";
	setAttr -s 18 ".pn";
	setAttr ".pn[354]" 0;
	setAttr ".pn[355]" 0;
	setAttr ".pn[356]" 0;
	setAttr ".pn[357]" 0;
	setAttr ".pn[358]" 0;
	setAttr ".pn[359]" 0;
	setAttr ".pn[360]" 0;
	setAttr ".pn[361]" 0;
	setAttr ".pn[362]" 0;
	setAttr ".pn[363]" 0;
	setAttr ".pn[364]" 0;
	setAttr ".pn[365]" 0;
	setAttr ".pn[366]" 0;
	setAttr ".pn[367]" 0;
	setAttr ".pn[368]" 0;
	setAttr ".pn[369]" 0;
	setAttr ".pn[386]" 0;
	setAttr ".pn[387]" 0;
	setAttr ".op" 1;
createNode polyPinUV -n "polyPinUV27";
	rename -uid "872DE7AC-4F9F-226C-B1C8-58904458F570";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "map[324:325]" "map[328:334]" "map[336:341]" "map[354:371]" "map[386:387]";
	setAttr -s 35 ".pn";
	setAttr ".pn[324]" 1;
	setAttr ".pn[325]" 1;
	setAttr ".pn[328]" 1;
	setAttr ".pn[329]" 1;
	setAttr ".pn[330]" 1;
	setAttr ".pn[331]" 1;
	setAttr ".pn[332]" 1;
	setAttr ".pn[333]" 1;
	setAttr ".pn[334]" 1;
	setAttr ".pn[336]" 1;
	setAttr ".pn[337]" 1;
	setAttr ".pn[338]" 1;
	setAttr ".pn[339]" 1;
	setAttr ".pn[340]" 1;
	setAttr ".pn[341]" 1;
	setAttr ".pn[354]" 1;
	setAttr ".pn[355]" 1;
	setAttr ".pn[356]" 1;
	setAttr ".pn[357]" 1;
	setAttr ".pn[358]" 1;
	setAttr ".pn[359]" 1;
	setAttr ".pn[360]" 1;
	setAttr ".pn[361]" 1;
	setAttr ".pn[362]" 1;
	setAttr ".pn[363]" 1;
	setAttr ".pn[364]" 1;
	setAttr ".pn[365]" 1;
	setAttr ".pn[366]" 1;
	setAttr ".pn[367]" 1;
	setAttr ".pn[368]" 1;
	setAttr ".pn[369]" 1;
	setAttr ".pn[370]" 1;
	setAttr ".pn[371]" 1;
	setAttr ".pn[386]" 1;
	setAttr ".pn[387]" 1;
createNode polyPinUV -n "polyPinUV28";
	rename -uid "765B568E-471D-FA78-5F31-27A9D74821C2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "map[324]" "map[327]" "map[329:330]" "map[333:335]";
	setAttr -s 7 ".pn";
	setAttr ".pn[324]" 0;
	setAttr ".pn[327]" 0;
	setAttr ".pn[329]" 0;
	setAttr ".pn[330]" 0;
	setAttr ".pn[333]" 0;
	setAttr ".pn[334]" 0;
	setAttr ".pn[335]" 0;
	setAttr ".op" 1;
createNode polyPinUV -n "polyPinUV29";
	rename -uid "7D84C3D5-4661-D79E-292F-8DBEB76C6C51";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "map[326]" "map[331]" "map[336:337]";
	setAttr -s 4 ".pn";
	setAttr ".pn[326]" 1;
	setAttr ".pn[331]" 1;
	setAttr ".pn[336]" 1;
	setAttr ".pn[337]" 1;
createNode polyPinUV -n "polyPinUV30";
	rename -uid "D8827064-4A2C-4A82-BC8C-4A923365431F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "map[324:333]" "map[336:341]";
	setAttr -s 16 ".pn";
	setAttr ".pn[324]" 0;
	setAttr ".pn[325]" 0;
	setAttr ".pn[326]" 0;
	setAttr ".pn[327]" 0;
	setAttr ".pn[328]" 0;
	setAttr ".pn[329]" 0;
	setAttr ".pn[330]" 0;
	setAttr ".pn[331]" 0;
	setAttr ".pn[332]" 0;
	setAttr ".pn[333]" 0;
	setAttr ".pn[336]" 0;
	setAttr ".pn[337]" 0;
	setAttr ".pn[338]" 0;
	setAttr ".pn[339]" 0;
	setAttr ".pn[340]" 0;
	setAttr ".pn[341]" 0;
	setAttr ".op" 1;
createNode polyPinUV -n "polyPinUV31";
	rename -uid "776C2981-456E-7EC8-42B3-7681D82FDAAF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "map[324:327]" "map[329:330]" "map[333:335]";
	setAttr -s 9 ".pn";
	setAttr ".pn[324]" 1;
	setAttr ".pn[325]" 1;
	setAttr ".pn[326]" 1;
	setAttr ".pn[327]" 1;
	setAttr ".pn[329]" 1;
	setAttr ".pn[330]" 1;
	setAttr ".pn[333]" 1;
	setAttr ".pn[334]" 1;
	setAttr ".pn[335]" 1;
createNode polyPinUV -n "polyPinUV32";
	rename -uid "F3D6556E-48B2-F46C-07BD-88820E232B0E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "map[325:326]" "map[328]" "map[331:332]" "map[336:337]";
	setAttr -s 7 ".pn";
	setAttr ".pn[325]" 0;
	setAttr ".pn[326]" 0;
	setAttr ".pn[328]" 0;
	setAttr ".pn[331]" 0;
	setAttr ".pn[332]" 0;
	setAttr ".pn[336]" 0;
	setAttr ".pn[337]" 0;
	setAttr ".op" 1;
createNode polyPinUV -n "polyPinUV33";
	rename -uid "CC4B5E90-4A7F-9147-B845-39B8D67E6CFD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "map[324:331]" "map[342:353]";
	setAttr -s 20 ".pn";
	setAttr ".pn[324]" 1;
	setAttr ".pn[325]" 1;
	setAttr ".pn[326]" 1;
	setAttr ".pn[327]" 1;
	setAttr ".pn[328]" 1;
	setAttr ".pn[329]" 1;
	setAttr ".pn[330]" 1;
	setAttr ".pn[331]" 1;
	setAttr ".pn[342]" 1;
	setAttr ".pn[343]" 1;
	setAttr ".pn[344]" 1;
	setAttr ".pn[345]" 1;
	setAttr ".pn[346]" 1;
	setAttr ".pn[347]" 1;
	setAttr ".pn[348]" 1;
	setAttr ".pn[349]" 1;
	setAttr ".pn[350]" 1;
	setAttr ".pn[351]" 1;
	setAttr ".pn[352]" 1;
	setAttr ".pn[353]" 1;
createNode polyPinUV -n "polyPinUV34";
	rename -uid "8EE6CE7A-405F-E241-3FC4-76A242CB6E73";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "map[324:335]";
	setAttr -s 12 ".pn[324:335]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".op" 1;
createNode polyPinUV -n "polyPinUV35";
	rename -uid "763A1807-4062-B9D4-9453-8DB5DB1DA838";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "map[328]" "map[332]" "map[336:341]";
	setAttr -s 8 ".pn";
	setAttr ".pn[328]" 1;
	setAttr ".pn[332]" 1;
	setAttr ".pn[336]" 1;
	setAttr ".pn[337]" 1;
	setAttr ".pn[338]" 1;
	setAttr ".pn[339]" 1;
	setAttr ".pn[340]" 1;
	setAttr ".pn[341]" 1;
createNode polyPinUV -n "polyPinUV36";
	rename -uid "161ACFAF-4181-7FBB-2217-63B0FED34743";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "map[324:341]";
	setAttr -s 18 ".pn[324:341]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".op" 1;
createNode polyPinUV -n "polyPinUV37";
	rename -uid "529E0814-4D76-9F89-8A5A-E9A2B4F13391";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "map[324:341]";
	setAttr -s 18 ".pn[324:341]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
createNode polyPinUV -n "polyPinUV38";
	rename -uid "8F02CA49-4FFD-7F35-3B29-5094DD6200CA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "map[342:353]";
	setAttr -s 12 ".pn[342:353]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".op" 1;
createNode polyPinUV -n "polyPinUV39";
	rename -uid "9F6E587B-4D40-1506-DADE-A9AFB9229920";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "map[342:345]" "map[352:353]";
	setAttr -s 6 ".pn";
	setAttr ".pn[342]" 1;
	setAttr ".pn[343]" 1;
	setAttr ".pn[344]" 1;
	setAttr ".pn[345]" 1;
	setAttr ".pn[352]" 1;
	setAttr ".pn[353]" 1;
createNode polyPinUV -n "polyPinUV40";
	rename -uid "05AA7E56-4476-4712-F28E-629D397FEBDB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "map[342:345]" "map[347:348]" "map[352:353]";
	setAttr -s 8 ".pn";
	setAttr ".pn[342]" 0;
	setAttr ".pn[343]" 0;
	setAttr ".pn[344]" 0;
	setAttr ".pn[345]" 0;
	setAttr ".pn[347]" 0;
	setAttr ".pn[348]" 0;
	setAttr ".pn[352]" 0;
	setAttr ".pn[353]" 0;
	setAttr ".op" 1;
createNode polyPinUV -n "polyPinUV41";
	rename -uid "6CE9F31E-4EA3-8555-5CB3-00BC76BEB257";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "map[338]" "map[340]" "map[342:343]" "map[346:351]";
	setAttr -s 10 ".pn";
	setAttr ".pn[338]" 1;
	setAttr ".pn[340]" 1;
	setAttr ".pn[342]" 1;
	setAttr ".pn[343]" 1;
	setAttr ".pn[346]" 1;
	setAttr ".pn[347]" 1;
	setAttr ".pn[348]" 1;
	setAttr ".pn[349]" 1;
	setAttr ".pn[350]" 1;
	setAttr ".pn[351]" 1;
createNode polyPinUV -n "polyPinUV42";
	rename -uid "F590EFA6-4A54-9CE2-C472-2A9F28CC451F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "map[344:345]" "map[348:349]" "map[351:353]";
	setAttr -s 7 ".pn";
	setAttr ".pn[344]" 0;
	setAttr ".pn[345]" 0;
	setAttr ".pn[348]" 0;
	setAttr ".pn[349]" 0;
	setAttr ".pn[351]" 0;
	setAttr ".pn[352]" 0;
	setAttr ".pn[353]" 0;
	setAttr ".op" 1;
createNode polyPinUV -n "polyPinUV43";
	rename -uid "7DEBC405-4155-0C10-016E-459A7C9646B1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "map[342:353]";
	setAttr -s 12 ".pn[342:353]"  1 1 1 1 1 1 1 1 1 1 1 1;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "5C36B4EA-4E68-E435-CD14-47B1007FDC45";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -338.02908709703149 -273.80951292931138 ;
	setAttr ".tgi[0].vh" -type "double2" 335.64813481068967 277.38094135882409 ;
	setAttr -s 6 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 364.28570556640625;
	setAttr ".tgi[0].ni[0].y" 122.85713958740234;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -557.14288330078125;
	setAttr ".tgi[0].ni[1].y" 122.85713958740234;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" -250;
	setAttr ".tgi[0].ni[2].y" 145.71427917480469;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" -247.14285278320313;
	setAttr ".tgi[0].ni[3].y" 51.428569793701172;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" 57.142856597900391;
	setAttr ".tgi[0].ni[4].y" 145.71427917480469;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" 60;
	setAttr ".tgi[0].ni[5].y" 74.285713195800781;
	setAttr ".tgi[0].ni[5].nvs" 1923;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :lambert1;
select -ne :initialShadingGroup;
	setAttr -s 30 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 29 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :initialMaterialInfo;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "layer1.di" "imagePlane1.do";
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape1.ws";
connectAttr ":sideShape.msg" "imagePlaneShape1.ltc";
connectAttr "groupId27.id" "pCubeShape14.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape14.iog.og[0].gco";
connectAttr "groupParts14.og" "pCubeShape14.i";
connectAttr "groupId28.id" "pCubeShape14.ciog.cog[0].cgid";
connectAttr "groupId25.id" "pCubeShape13.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape13.iog.og[0].gco";
connectAttr "groupParts13.og" "pCubeShape13.i";
connectAttr "groupId26.id" "pCubeShape13.ciog.cog[0].cgid";
connectAttr "groupId23.id" "pCubeShape12.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape12.iog.og[0].gco";
connectAttr "groupParts12.og" "pCubeShape12.i";
connectAttr "groupId24.id" "pCubeShape12.ciog.cog[0].cgid";
connectAttr "groupId21.id" "pCubeShape11.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape11.iog.og[0].gco";
connectAttr "groupParts11.og" "pCubeShape11.i";
connectAttr "groupId22.id" "pCubeShape11.ciog.cog[0].cgid";
connectAttr "groupId19.id" "pCubeShape10.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape10.iog.og[0].gco";
connectAttr "groupParts10.og" "pCubeShape10.i";
connectAttr "groupId20.id" "pCubeShape10.ciog.cog[0].cgid";
connectAttr "groupId17.id" "pCubeShape9.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape9.iog.og[0].gco";
connectAttr "groupParts9.og" "pCubeShape9.i";
connectAttr "groupId18.id" "pCubeShape9.ciog.cog[0].cgid";
connectAttr "groupId15.id" "pCubeShape8.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape8.iog.og[0].gco";
connectAttr "groupParts8.og" "pCubeShape8.i";
connectAttr "polyTweakUV2.uvtk[0]" "pCubeShape8.uvst[0].uvtw";
connectAttr "groupId16.id" "pCubeShape8.ciog.cog[0].cgid";
connectAttr "groupId13.id" "pCubeShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape7.iog.og[0].gco";
connectAttr "groupParts7.og" "pCubeShape7.i";
connectAttr "groupId14.id" "pCubeShape7.ciog.cog[0].cgid";
connectAttr "groupId11.id" "pCubeShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape6.iog.og[0].gco";
connectAttr "groupParts6.og" "pCubeShape6.i";
connectAttr "groupId12.id" "pCubeShape6.ciog.cog[0].cgid";
connectAttr "groupId9.id" "pCubeShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape5.iog.og[0].gco";
connectAttr "groupParts5.og" "pCubeShape5.i";
connectAttr "groupId10.id" "pCubeShape5.ciog.cog[0].cgid";
connectAttr "groupId7.id" "pCubeShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape4.iog.og[0].gco";
connectAttr "groupParts4.og" "pCubeShape4.i";
connectAttr "groupId8.id" "pCubeShape4.ciog.cog[0].cgid";
connectAttr "groupId5.id" "pCubeShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape3.iog.og[0].gco";
connectAttr "groupParts3.og" "pCubeShape3.i";
connectAttr "groupId6.id" "pCubeShape3.ciog.cog[0].cgid";
connectAttr "groupId3.id" "pCubeShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape2.iog.og[0].gco";
connectAttr "groupParts2.og" "pCubeShape2.i";
connectAttr "groupId4.id" "pCubeShape2.ciog.cog[0].cgid";
connectAttr "groupId1.id" "pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupParts1.og" "pCubeShape1.i";
connectAttr "groupId2.id" "pCubeShape1.ciog.cog[0].cgid";
connectAttr "polyPinUV43.out" "pCube15Shape.i";
connectAttr "polyTweakUV106.uvtk[0]" "pCube15Shape.uvst[0].uvtw";
connectAttr "groupId29.id" "pCube15Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube15Shape.iog.og[0].gco";
connectAttr "groupId30.id" "pCube15Shape.ciog.cog[0].cgid";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "layerManager.dli[1]" "layer1.id";
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak2.ip";
connectAttr "polyExtrudeFace2.out" "polyTweak3.ip";
connectAttr "polyTweak3.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "polyTweak4.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace3.mp";
connectAttr "polyCube3.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polySplitRing1.ip";
connectAttr "pCubeShape3.wm" "polySplitRing1.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak5.ip";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "pCubeShape3.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "pCubeShape3.wm" "polySplitRing3.mp";
connectAttr "polySplitRing3.out" "polyTweak6.ip";
connectAttr "polyTweak6.out" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "deleteComponent9.ig";
connectAttr "deleteComponent2.og" "polyExtrudeFace4.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyTweak7.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak9.ip";
connectAttr "polyExtrudeFace7.out" "polyTweak10.ip";
connectAttr "polyTweak10.out" "deleteComponent10.ig";
connectAttr "deleteComponent10.og" "deleteComponent11.ig";
connectAttr "deleteComponent11.og" "deleteComponent12.ig";
connectAttr "deleteComponent12.og" "deleteComponent13.ig";
connectAttr "polyCube4.out" "polyExtrudeFace8.ip";
connectAttr "pCubeShape4.wm" "polyExtrudeFace8.mp";
connectAttr "polyTweak11.out" "polyExtrudeFace9.ip";
connectAttr "pCubeShape4.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polyExtrudeFace10.ip";
connectAttr "pCubeShape4.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak12.ip";
connectAttr "polyTweak13.out" "polyExtrudeFace11.ip";
connectAttr "pCubeShape4.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace10.out" "polyTweak13.ip";
connectAttr "polyTweak14.out" "polySplitRing4.ip";
connectAttr "pCubeShape5.wm" "polySplitRing4.mp";
connectAttr "polyCube5.out" "polyTweak14.ip";
connectAttr "polySplitRing4.out" "deleteComponent14.ig";
connectAttr "deleteComponent14.og" "deleteComponent15.ig";
connectAttr "polyTweak15.out" "polyExtrudeFace12.ip";
connectAttr "pCubeShape7.wm" "polyExtrudeFace12.mp";
connectAttr "polyCube7.out" "polyTweak15.ip";
connectAttr "polyExtrudeFace12.out" "polyTweak16.ip";
connectAttr "polyTweak16.out" "deleteComponent16.ig";
connectAttr "polyTweak17.out" "polyExtrudeFace13.ip";
connectAttr "pCubeShape8.wm" "polyExtrudeFace13.mp";
connectAttr "polyCube8.out" "polyTweak17.ip";
connectAttr "polyExtrudeFace13.out" "polyTweakUV1.ip";
connectAttr "polyTweak18.out" "polyMergeVert1.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert1.mp";
connectAttr "polyTweakUV1.out" "polyTweak18.ip";
connectAttr "polyMergeVert1.out" "polyTweakUV2.ip";
connectAttr "polyTweak19.out" "polyMergeVert2.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert2.mp";
connectAttr "polyTweakUV2.out" "polyTweak19.ip";
connectAttr "polyMergeVert2.out" "deleteComponent17.ig";
connectAttr "polyTweak20.out" "polyExtrudeFace14.ip";
connectAttr "pCubeShape10.wm" "polyExtrudeFace14.mp";
connectAttr "polyCube10.out" "polyTweak20.ip";
connectAttr "polyTweak21.out" "polyExtrudeFace15.ip";
connectAttr "pCubeShape10.wm" "polyExtrudeFace15.mp";
connectAttr "polyExtrudeFace14.out" "polyTweak21.ip";
connectAttr "polyCube11.out" "polyExtrudeFace16.ip";
connectAttr "pCubeShape11.wm" "polyExtrudeFace16.mp";
connectAttr "polyTweak22.out" "polyExtrudeFace17.ip";
connectAttr "pCubeShape11.wm" "polyExtrudeFace17.mp";
connectAttr "polyExtrudeFace16.out" "polyTweak22.ip";
connectAttr "polyTweak23.out" "polyExtrudeFace18.ip";
connectAttr "pCubeShape11.wm" "polyExtrudeFace18.mp";
connectAttr "polyExtrudeFace17.out" "polyTweak23.ip";
connectAttr "polyTweak24.out" "polyExtrudeFace19.ip";
connectAttr "pCubeShape11.wm" "polyExtrudeFace19.mp";
connectAttr "polyExtrudeFace18.out" "polyTweak24.ip";
connectAttr "polyTweak25.out" "polyExtrudeFace20.ip";
connectAttr "pCubeShape11.wm" "polyExtrudeFace20.mp";
connectAttr "polyExtrudeFace19.out" "polyTweak25.ip";
connectAttr "polyTweak26.out" "polyExtrudeFace21.ip";
connectAttr "pCubeShape13.wm" "polyExtrudeFace21.mp";
connectAttr "polyCube13.out" "polyTweak26.ip";
connectAttr "polyTweak27.out" "polyExtrudeFace22.ip";
connectAttr "pCubeShape13.wm" "polyExtrudeFace22.mp";
connectAttr "polyExtrudeFace21.out" "polyTweak27.ip";
connectAttr "polyExtrudeFace22.out" "polyTweak28.ip";
connectAttr "polyTweak28.out" "deleteComponent18.ig";
connectAttr "deleteComponent18.og" "deleteComponent19.ig";
connectAttr "deleteComponent19.og" "deleteComponent20.ig";
connectAttr "deleteComponent20.og" "deleteComponent21.ig";
connectAttr "deleteComponent21.og" "deleteComponent22.ig";
connectAttr "deleteComponent22.og" "deleteComponent23.ig";
connectAttr "polyTweak29.out" "polyExtrudeFace23.ip";
connectAttr "pCubeShape12.wm" "polyExtrudeFace23.mp";
connectAttr "polyCube12.out" "polyTweak29.ip";
connectAttr "polyTweak30.out" "polyExtrudeFace24.ip";
connectAttr "pCubeShape12.wm" "polyExtrudeFace24.mp";
connectAttr "polyExtrudeFace23.out" "polyTweak30.ip";
connectAttr "pCubeShape1.o" "polyUnite1.ip[0]";
connectAttr "pCubeShape2.o" "polyUnite1.ip[1]";
connectAttr "pCubeShape3.o" "polyUnite1.ip[2]";
connectAttr "pCubeShape4.o" "polyUnite1.ip[3]";
connectAttr "pCubeShape5.o" "polyUnite1.ip[4]";
connectAttr "pCubeShape6.o" "polyUnite1.ip[5]";
connectAttr "pCubeShape7.o" "polyUnite1.ip[6]";
connectAttr "pCubeShape8.o" "polyUnite1.ip[7]";
connectAttr "pCubeShape9.o" "polyUnite1.ip[8]";
connectAttr "pCubeShape10.o" "polyUnite1.ip[9]";
connectAttr "pCubeShape11.o" "polyUnite1.ip[10]";
connectAttr "pCubeShape12.o" "polyUnite1.ip[11]";
connectAttr "pCubeShape13.o" "polyUnite1.ip[12]";
connectAttr "pCubeShape14.o" "polyUnite1.ip[13]";
connectAttr "pCubeShape1.wm" "polyUnite1.im[0]";
connectAttr "pCubeShape2.wm" "polyUnite1.im[1]";
connectAttr "pCubeShape3.wm" "polyUnite1.im[2]";
connectAttr "pCubeShape4.wm" "polyUnite1.im[3]";
connectAttr "pCubeShape5.wm" "polyUnite1.im[4]";
connectAttr "pCubeShape6.wm" "polyUnite1.im[5]";
connectAttr "pCubeShape7.wm" "polyUnite1.im[6]";
connectAttr "pCubeShape8.wm" "polyUnite1.im[7]";
connectAttr "pCubeShape9.wm" "polyUnite1.im[8]";
connectAttr "pCubeShape10.wm" "polyUnite1.im[9]";
connectAttr "pCubeShape11.wm" "polyUnite1.im[10]";
connectAttr "pCubeShape12.wm" "polyUnite1.im[11]";
connectAttr "pCubeShape13.wm" "polyUnite1.im[12]";
connectAttr "pCubeShape14.wm" "polyUnite1.im[13]";
connectAttr "deleteComponent13.og" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polyCube2.out" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "deleteComponent9.og" "groupParts3.ig";
connectAttr "groupId5.id" "groupParts3.gi";
connectAttr "polyExtrudeFace11.out" "groupParts4.ig";
connectAttr "groupId7.id" "groupParts4.gi";
connectAttr "deleteComponent15.og" "groupParts5.ig";
connectAttr "groupId9.id" "groupParts5.gi";
connectAttr "polyCube6.out" "groupParts6.ig";
connectAttr "groupId11.id" "groupParts6.gi";
connectAttr "deleteComponent16.og" "groupParts7.ig";
connectAttr "groupId13.id" "groupParts7.gi";
connectAttr "deleteComponent17.og" "groupParts8.ig";
connectAttr "groupId15.id" "groupParts8.gi";
connectAttr "polyCube9.out" "groupParts9.ig";
connectAttr "groupId17.id" "groupParts9.gi";
connectAttr "polyExtrudeFace15.out" "groupParts10.ig";
connectAttr "groupId19.id" "groupParts10.gi";
connectAttr "polyExtrudeFace20.out" "groupParts11.ig";
connectAttr "groupId21.id" "groupParts11.gi";
connectAttr "polyExtrudeFace24.out" "groupParts12.ig";
connectAttr "groupId23.id" "groupParts12.gi";
connectAttr "deleteComponent23.og" "groupParts13.ig";
connectAttr "groupId25.id" "groupParts13.gi";
connectAttr "polyCube14.out" "groupParts14.ig";
connectAttr "groupId27.id" "groupParts14.gi";
connectAttr "file1.oc" "pixelMeasure.c";
connectAttr "pixelMeasure.oc" "lambert2SG.ss";
connectAttr "pCube15Shape.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "groupId30.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "pixelMeasure.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "polyUnite1.out" "polyMapDel1.ip";
connectAttr "polyMapDel1.out" "polyAutoProj1.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj1.mp";
connectAttr "polyAutoProj1.out" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polyAutoProj2.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj2.mp";
connectAttr "polyAutoProj2.out" "polyTweakUV4.ip";
connectAttr "polyTweakUV4.out" "polyAutoProj3.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj3.mp";
connectAttr "polyAutoProj3.out" "polyTweakUV5.ip";
connectAttr "polyTweakUV5.out" "polyAutoProj4.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj4.mp";
connectAttr "polyAutoProj4.out" "polyTweakUV6.ip";
connectAttr "polyTweakUV6.out" "polyAutoProj5.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj5.mp";
connectAttr "polyAutoProj5.out" "polyTweakUV7.ip";
connectAttr "polyTweakUV7.out" "polyAutoProj6.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj6.mp";
connectAttr "polyAutoProj6.out" "polyTweakUV8.ip";
connectAttr "polyTweakUV8.out" "polyAutoProj7.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj7.mp";
connectAttr "polyAutoProj7.out" "polyTweakUV9.ip";
connectAttr "polyTweakUV9.out" "polyAutoProj8.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj8.mp";
connectAttr "polyAutoProj8.out" "polyTweakUV10.ip";
connectAttr "polyTweakUV10.out" "polyAutoProj9.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj9.mp";
connectAttr "polyAutoProj9.out" "polyTweakUV11.ip";
connectAttr "polyTweakUV11.out" "polyAutoProj10.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj10.mp";
connectAttr "polyAutoProj10.out" "polyTweakUV12.ip";
connectAttr "polyTweakUV12.out" "polyAutoProj11.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj11.mp";
connectAttr "polyAutoProj11.out" "polyTweakUV13.ip";
connectAttr "polyTweakUV13.out" "polyAutoProj12.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj12.mp";
connectAttr "polyAutoProj12.out" "polyTweakUV14.ip";
connectAttr "polyTweakUV14.out" "polyAutoProj13.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj13.mp";
connectAttr "polyAutoProj13.out" "polyTweakUV15.ip";
connectAttr "polyTweakUV15.out" "polyAutoProj14.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj14.mp";
connectAttr "polyAutoProj14.out" "polyTweakUV16.ip";
connectAttr "polyTweakUV16.out" "polyAutoProj15.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj15.mp";
connectAttr "polyAutoProj15.out" "polyTweakUV17.ip";
connectAttr "polyTweakUV17.out" "polyAutoProj16.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj16.mp";
connectAttr "polyAutoProj16.out" "polyTweakUV18.ip";
connectAttr "polyTweakUV18.out" "polyAutoProj17.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj17.mp";
connectAttr "polyAutoProj17.out" "polyTweakUV19.ip";
connectAttr "polyTweakUV19.out" "polyAutoProj18.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj18.mp";
connectAttr "polyAutoProj18.out" "polyTweakUV20.ip";
connectAttr "polyTweakUV20.out" "polyAutoProj19.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj19.mp";
connectAttr "polyAutoProj19.out" "polyTweakUV21.ip";
connectAttr "polyTweakUV21.out" "polyAutoProj20.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj20.mp";
connectAttr "polyAutoProj20.out" "polyTweakUV22.ip";
connectAttr "polyTweakUV22.out" "polyAutoProj21.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj21.mp";
connectAttr "polyAutoProj21.out" "polyTweakUV23.ip";
connectAttr "polyTweakUV23.out" "polyMapSew1.ip";
connectAttr "polyMapSew1.out" "polyTweakUV24.ip";
connectAttr "polyTweakUV24.out" "polyMapSew2.ip";
connectAttr "polyMapSew2.out" "polyTweakUV25.ip";
connectAttr "polyTweakUV25.out" "polyMapSew3.ip";
connectAttr "polyMapSew3.out" "polyTweakUV26.ip";
connectAttr "polyTweakUV26.out" "polyMapSew4.ip";
connectAttr "polyMapSew4.out" "polyTweakUV27.ip";
connectAttr "polyTweakUV27.out" "polyMapSew5.ip";
connectAttr "polyMapSew5.out" "polyTweakUV28.ip";
connectAttr "polyTweakUV28.out" "polyMapSew6.ip";
connectAttr "polyMapSew6.out" "polyTweakUV29.ip";
connectAttr "polyTweakUV29.out" "polyFlipUV1.ip";
connectAttr "pCube15Shape.wm" "polyFlipUV1.mp";
connectAttr "polyFlipUV1.out" "polyTweakUV30.ip";
connectAttr "polyTweakUV30.out" "polyFlipUV2.ip";
connectAttr "pCube15Shape.wm" "polyFlipUV2.mp";
connectAttr "polyFlipUV2.out" "polyTweakUV31.ip";
connectAttr "polyTweakUV31.out" "polyFlipUV3.ip";
connectAttr "pCube15Shape.wm" "polyFlipUV3.mp";
connectAttr "polyFlipUV3.out" "polyTweakUV32.ip";
connectAttr "polyTweakUV32.out" "polyFlipUV4.ip";
connectAttr "pCube15Shape.wm" "polyFlipUV4.mp";
connectAttr "polyFlipUV4.out" "polyTweakUV33.ip";
connectAttr "polyTweakUV33.out" "polyFlipUV5.ip";
connectAttr "pCube15Shape.wm" "polyFlipUV5.mp";
connectAttr "polyFlipUV5.out" "polyTweakUV34.ip";
connectAttr "polyTweakUV34.out" "polyMapSew7.ip";
connectAttr "polyMapSew7.out" "polyTweakUV35.ip";
connectAttr "polyTweakUV35.out" "polyFlipUV6.ip";
connectAttr "pCube15Shape.wm" "polyFlipUV6.mp";
connectAttr "polyFlipUV6.out" "polyTweakUV36.ip";
connectAttr "polyTweakUV36.out" "polyFlipUV7.ip";
connectAttr "pCube15Shape.wm" "polyFlipUV7.mp";
connectAttr "polyFlipUV7.out" "polyTweakUV37.ip";
connectAttr "polyTweakUV37.out" "polyAutoProj22.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj22.mp";
connectAttr "polyAutoProj22.out" "polyTweakUV38.ip";
connectAttr "polyTweakUV38.out" "polyAutoProj23.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj23.mp";
connectAttr "polyAutoProj23.out" "polyTweakUV39.ip";
connectAttr "polyTweakUV39.out" "polyAutoProj24.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj24.mp";
connectAttr "polyAutoProj24.out" "polyTweakUV40.ip";
connectAttr "polyTweakUV40.out" "polyAutoProj25.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj25.mp";
connectAttr "polyAutoProj25.out" "polyTweakUV41.ip";
connectAttr "polyTweakUV41.out" "polyMapSew8.ip";
connectAttr "polyMapSew8.out" "polyTweakUV42.ip";
connectAttr "polyTweakUV42.out" "polyAutoProj26.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj26.mp";
connectAttr "polyAutoProj26.out" "polyTweakUV43.ip";
connectAttr "polyTweakUV43.out" "polyMapSew9.ip";
connectAttr "polyMapSew9.out" "polyTweakUV44.ip";
connectAttr "polyTweakUV44.out" "polyAutoProj27.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj27.mp";
connectAttr "polyAutoProj27.out" "polyTweakUV45.ip";
connectAttr "polyTweakUV45.out" "polyAutoProj28.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj28.mp";
connectAttr "polyAutoProj28.out" "polyTweakUV46.ip";
connectAttr "polyTweakUV46.out" "polyFlipUV8.ip";
connectAttr "pCube15Shape.wm" "polyFlipUV8.mp";
connectAttr "polyFlipUV8.out" "polyTweakUV47.ip";
connectAttr "polyTweakUV47.out" "polyFlipUV9.ip";
connectAttr "pCube15Shape.wm" "polyFlipUV9.mp";
connectAttr "polyFlipUV9.out" "polyTweakUV48.ip";
connectAttr "polyTweakUV48.out" "polyAutoProj29.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj29.mp";
connectAttr "polyAutoProj29.out" "polyTweakUV49.ip";
connectAttr "polyTweakUV49.out" "polyAutoProj30.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj30.mp";
connectAttr "polyAutoProj30.out" "polyTweakUV50.ip";
connectAttr "polyTweakUV50.out" "polyPinUV1.ip";
connectAttr "polyPinUV1.out" "polyPinUV2.ip";
connectAttr "polyPinUV2.out" "polyAutoProj31.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj31.mp";
connectAttr "polyAutoProj31.out" "polyTweakUV51.ip";
connectAttr "polyTweak31.out" "polyAutoProj32.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj32.mp";
connectAttr "polyTweakUV51.out" "polyTweak31.ip";
connectAttr "polyAutoProj32.out" "polyTweakUV52.ip";
connectAttr "polyTweakUV52.out" "polyAutoProj33.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj33.mp";
connectAttr "polyAutoProj33.out" "polyTweakUV53.ip";
connectAttr "polyTweakUV53.out" "polyAutoProj34.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj34.mp";
connectAttr "polyAutoProj34.out" "polyTweakUV54.ip";
connectAttr "polyTweakUV54.out" "polyMapSew10.ip";
connectAttr "polyMapSew10.out" "polyTweakUV55.ip";
connectAttr "polyTweakUV55.out" "polyAutoProj35.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj35.mp";
connectAttr "polyAutoProj35.out" "polyTweakUV56.ip";
connectAttr "polyTweakUV56.out" "polyAutoProj36.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj36.mp";
connectAttr "polyAutoProj36.out" "polyTweakUV57.ip";
connectAttr "polyTweakUV57.out" "polyAutoProj37.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj37.mp";
connectAttr "polyAutoProj37.out" "polyTweakUV58.ip";
connectAttr "polyTweakUV58.out" "polyAutoProj38.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj38.mp";
connectAttr "polyAutoProj38.out" "polyTweakUV59.ip";
connectAttr "polyTweakUV59.out" "polyAutoProj39.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj39.mp";
connectAttr "polyAutoProj39.out" "polyTweakUV60.ip";
connectAttr "polyTweakUV60.out" "polyPinUV3.ip";
connectAttr "polyPinUV3.out" "polyPinUV4.ip";
connectAttr "polyTweak32.out" "polyMapCut1.ip";
connectAttr "polyPinUV4.out" "polyTweak32.ip";
connectAttr "polyMapCut1.out" "polyTweakUV61.ip";
connectAttr "polyTweakUV61.out" "polyMapSew11.ip";
connectAttr "polyMapSew11.out" "polyMapSew12.ip";
connectAttr "polyMapSew12.out" "polyTweakUV62.ip";
connectAttr "polyTweakUV62.out" "polyMapDel2.ip";
connectAttr "polyMapDel2.out" "polyAutoProj40.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj40.mp";
connectAttr "polyAutoProj40.out" "polyTweakUV63.ip";
connectAttr "polyTweakUV63.out" "polyMapSew13.ip";
connectAttr "polyMapSew13.out" "polyTweakUV64.ip";
connectAttr "polyTweakUV64.out" "polyPinUV5.ip";
connectAttr "polyPinUV5.out" "polyPinUV6.ip";
connectAttr "polyPinUV6.out" "polyAutoProj41.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj41.mp";
connectAttr "polyAutoProj41.out" "polyTweakUV65.ip";
connectAttr "polyTweakUV65.out" "polyAutoProj42.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj42.mp";
connectAttr "polyAutoProj42.out" "polyTweakUV66.ip";
connectAttr "polyTweakUV66.out" "polyAutoProj43.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj43.mp";
connectAttr "polyAutoProj43.out" "polyTweakUV67.ip";
connectAttr "polyTweakUV67.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyTweakUV68.ip";
connectAttr "polyTweak33.out" "polyMapSew14.ip";
connectAttr "polyTweakUV68.out" "polyTweak33.ip";
connectAttr "polyMapSew14.out" "polyTweakUV69.ip";
connectAttr "polyTweakUV69.out" "polyMapSew15.ip";
connectAttr "polyMapSew15.out" "polyTweakUV70.ip";
connectAttr "polyTweakUV70.out" "polyAutoProj44.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj44.mp";
connectAttr "polyAutoProj44.out" "polyTweakUV71.ip";
connectAttr "polyTweakUV71.out" "polyMapSew16.ip";
connectAttr "polyMapSew16.out" "polyTweakUV72.ip";
connectAttr "polyTweakUV72.out" "polyAutoProj45.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj45.mp";
connectAttr "polyAutoProj45.out" "polyTweakUV73.ip";
connectAttr "polyTweakUV73.out" "polyAutoProj46.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj46.mp";
connectAttr "polyAutoProj46.out" "polyTweakUV74.ip";
connectAttr "polyTweakUV74.out" "polyAutoProj47.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj47.mp";
connectAttr "polyAutoProj47.out" "polyTweakUV75.ip";
connectAttr "polyTweakUV75.out" "polyMapSew17.ip";
connectAttr "polyMapSew17.out" "polyTweakUV76.ip";
connectAttr "polyTweakUV76.out" "polyMapSew18.ip";
connectAttr "polyMapSew18.out" "polyTweakUV77.ip";
connectAttr "polyTweakUV77.out" "polyMapSew19.ip";
connectAttr "polyMapSew19.out" "polyTweakUV78.ip";
connectAttr "polyTweakUV78.out" "polyPinUV7.ip";
connectAttr "polyPinUV7.out" "polyPinUV8.ip";
connectAttr "polyPinUV8.out" "polyAutoProj48.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj48.mp";
connectAttr "polyAutoProj48.out" "polyTweakUV79.ip";
connectAttr "polyTweak34.out" "polyMapSew20.ip";
connectAttr "polyTweakUV79.out" "polyTweak34.ip";
connectAttr "polyMapSew20.out" "polyTweakUV80.ip";
connectAttr "polyTweakUV80.out" "polyMapSew21.ip";
connectAttr "polyMapSew21.out" "polyTweakUV81.ip";
connectAttr "polyTweakUV81.out" "polyAutoProj49.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj49.mp";
connectAttr "polyAutoProj49.out" "polyTweakUV82.ip";
connectAttr "polyTweakUV82.out" "polyMapSew22.ip";
connectAttr "polyMapSew22.out" "polyTweakUV83.ip";
connectAttr "polyTweakUV83.out" "polyAutoProj50.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj50.mp";
connectAttr "polyAutoProj50.out" "polyTweakUV84.ip";
connectAttr "polyTweakUV84.out" "polyMapSew23.ip";
connectAttr "polyMapSew23.out" "polyTweakUV85.ip";
connectAttr "polyTweakUV85.out" "polyMapSew24.ip";
connectAttr "polyMapSew24.out" "polyTweakUV86.ip";
connectAttr "polyTweakUV86.out" "polyAutoProj51.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj51.mp";
connectAttr "polyAutoProj51.out" "polyTweakUV87.ip";
connectAttr "polyTweakUV87.out" "polyAutoProj52.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj52.mp";
connectAttr "polyAutoProj52.out" "polyTweakUV88.ip";
connectAttr "polyTweakUV88.out" "polyMapSew25.ip";
connectAttr "polyMapSew25.out" "polyTweakUV89.ip";
connectAttr "polyTweakUV89.out" "polyAutoProj53.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj53.mp";
connectAttr "polyAutoProj53.out" "polyTweakUV90.ip";
connectAttr "polyTweakUV90.out" "polyMapSew26.ip";
connectAttr "polyMapSew26.out" "polyTweakUV91.ip";
connectAttr "polyTweakUV91.out" "polyAutoProj54.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj54.mp";
connectAttr "polyAutoProj54.out" "polyTweakUV92.ip";
connectAttr "polyTweakUV92.out" "polyAutoProj55.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj55.mp";
connectAttr "polyAutoProj55.out" "polyTweakUV93.ip";
connectAttr "polyTweakUV93.out" "polyAutoProj56.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj56.mp";
connectAttr "polyAutoProj56.out" "polyTweakUV94.ip";
connectAttr "polyTweakUV94.out" "polyAutoProj57.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj57.mp";
connectAttr "polyAutoProj57.out" "polyTweakUV95.ip";
connectAttr "polyTweakUV95.out" "polyMapSew27.ip";
connectAttr "polyMapSew27.out" "polyTweakUV96.ip";
connectAttr "polyTweakUV96.out" "polyMapSew28.ip";
connectAttr "polyMapSew28.out" "polyTweakUV97.ip";
connectAttr "polyTweakUV97.out" "polyMapSew29.ip";
connectAttr "polyMapSew29.out" "polyTweakUV98.ip";
connectAttr "polyTweakUV98.out" "polyPinUV9.ip";
connectAttr "polyPinUV9.out" "polyPinUV10.ip";
connectAttr "polyTweak35.out" "polyMapSew30.ip";
connectAttr "polyPinUV10.out" "polyTweak35.ip";
connectAttr "polyMapSew30.out" "polyTweakUV99.ip";
connectAttr "polyTweakUV99.out" "polyMapSew31.ip";
connectAttr "polyMapSew31.out" "polyTweakUV100.ip";
connectAttr "polyTweakUV100.out" "polyPinUV11.ip";
connectAttr "polyTweak36.out" "polyFlipUV10.ip";
connectAttr "pCube15Shape.wm" "polyFlipUV10.mp";
connectAttr "polyPinUV11.out" "polyTweak36.ip";
connectAttr "polyFlipUV10.out" "polyTweakUV101.ip";
connectAttr "polyTweakUV101.out" "polyFlipUV11.ip";
connectAttr "pCube15Shape.wm" "polyFlipUV11.mp";
connectAttr "polyFlipUV11.out" "polyTweakUV102.ip";
connectAttr "polyTweakUV102.out" "polyPinUV12.ip";
connectAttr "polyPinUV12.out" "polyAutoProj58.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj58.mp";
connectAttr "polyAutoProj58.out" "polyTweakUV103.ip";
connectAttr "polyTweakUV103.out" "polyMapSew32.ip";
connectAttr "polyMapSew32.out" "polyTweakUV104.ip";
connectAttr "polyTweakUV104.out" "polyMapSew33.ip";
connectAttr "polyMapSew33.out" "polyTweakUV105.ip";
connectAttr "polyTweakUV105.out" "polyPinUV13.ip";
connectAttr "polyPinUV13.out" "polyPinUV14.ip";
connectAttr ":defaultColorMgtGlobals.cme" "file2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file2.ws";
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "polyPinUV14.out" "groupParts15.ig";
connectAttr "groupId29.id" "groupParts15.gi";
connectAttr "groupParts15.og" "polyFlipUV12.ip";
connectAttr "pCube15Shape.wm" "polyFlipUV12.mp";
connectAttr "polyFlipUV12.out" "polyTweakUV106.ip";
connectAttr "polyTweakUV106.out" "polyPinUV15.ip";
connectAttr "polyPinUV15.out" "polyPinUV16.ip";
connectAttr "polyPinUV16.out" "polyPinUV17.ip";
connectAttr "polyPinUV17.out" "polyPinUV18.ip";
connectAttr "polyPinUV18.out" "polyPinUV19.ip";
connectAttr "polyPinUV19.out" "polyPinUV20.ip";
connectAttr "polyPinUV20.out" "polyPinUV21.ip";
connectAttr "polyPinUV21.out" "polyPinUV22.ip";
connectAttr "polyPinUV22.out" "polyPinUV23.ip";
connectAttr "polyPinUV23.out" "polyPinUV24.ip";
connectAttr "polyPinUV24.out" "polyPinUV25.ip";
connectAttr "polyPinUV25.out" "polyPinUV26.ip";
connectAttr "polyPinUV26.out" "polyPinUV27.ip";
connectAttr "polyPinUV27.out" "polyPinUV28.ip";
connectAttr "polyPinUV28.out" "polyPinUV29.ip";
connectAttr "polyPinUV29.out" "polyPinUV30.ip";
connectAttr "polyPinUV30.out" "polyPinUV31.ip";
connectAttr "polyPinUV31.out" "polyPinUV32.ip";
connectAttr "polyPinUV32.out" "polyPinUV33.ip";
connectAttr "polyPinUV33.out" "polyPinUV34.ip";
connectAttr "polyPinUV34.out" "polyPinUV35.ip";
connectAttr "polyPinUV35.out" "polyPinUV36.ip";
connectAttr "polyPinUV36.out" "polyPinUV37.ip";
connectAttr "polyPinUV37.out" "polyPinUV38.ip";
connectAttr "polyPinUV38.out" "polyPinUV39.ip";
connectAttr "polyPinUV39.out" "polyPinUV40.ip";
connectAttr "polyPinUV40.out" "polyPinUV41.ip";
connectAttr "polyPinUV41.out" "polyPinUV42.ip";
connectAttr "polyPinUV42.out" "polyPinUV43.ip";
connectAttr "lambert2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "place2dTexture1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "file1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "place2dTexture2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "pixelMeasure.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "file2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "pixelMeasure.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.oc" ":lambert1.c";
connectAttr "file2.ot" ":lambert1.it";
connectAttr "pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape8.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape8.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape9.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape9.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape10.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape10.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape11.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape11.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape12.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape12.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape13.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape13.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape14.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape14.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube15Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId17.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId18.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId19.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId20.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId21.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId22.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId23.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId24.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId25.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId26.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId27.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId28.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId29.msg" ":initialShadingGroup.gn" -na;
connectAttr "file2.msg" ":initialMaterialInfo.t" -na;
// End of v06.ma
