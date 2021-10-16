//Maya ASCII 2022 scene
//Name: checkpointB1.0002.ma
//Last modified: Tue, Oct 12, 2021 01:27:59 PM
//Codeset: UTF-8
requires maya "2022";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
requires "mtoa" "4.2.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202108111415-612a77abf4";
fileInfo "osv" "Linux 4.15.0-154-generic #161-Ubuntu SMP Fri Jul 30 13:04:17 UTC 2021 x86_64";
fileInfo "UUID" "2D8F9D00-0000-5E5D-6165-C59F00000463";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "F236F04D-4A9A-F2A1-7778-468127925811";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -12.132775767468949 6.8504145327829731 -5.7686488190458105 ;
	setAttr ".r" -type "double3" -29.138352949785499 2044.9999999974502 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "A4E87FCB-46CB-A224-B0EC-A1828D77C1CF";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 15.33764284477191;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "5EEFC41D-4170-318D-4E14-689A0327CAB9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.2094857991946188 1000.1 0.43955651781048632 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "44796CF7-496B-4899-A5CE-BAA5081C928A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 12.120499892480279;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "A05CAD4F-4C8B-213C-5DAE-6BA7B43AAC38";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.64998506732885342 0.5586270273704923 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "20C3D3F9-4E81-5862-63E6-0A93EFFFA292";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 10.451336575857571;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "A045AF05-4D3B-9554-027A-798DA8708D1E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0.81081106679509085 0.099817142791060409 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "BDD1D424-4D73-F345-170D-F1BF60C953D7";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 4.5596689582161272;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "side_plane";
	rename -uid "FA3E9D51-437F-ACB3-90EA-AB9FA220D95B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 -6.5697748138636705 ;
createNode imagePlane -n "side_planeShape" -p "side_plane";
	rename -uid "E2ECC677-4BA7-ED7B-4778-30924AC4ECD8";
	setAttr -k off ".v";
	setAttr ".fc" 101;
	setAttr ".imn" -type "string" "/home/mtlaurentys/github/EleventhSemester/IGME0219/laurM_P03a/scenes/mouse_side.jpg";
	setAttr ".cov" -type "short2" 1280 720 ;
	setAttr ".dlc" no;
	setAttr ".w" 12.8;
	setAttr ".h" 7.2;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "bottom_plane";
	rename -uid "C6718878-40DD-CDF7-B124-68AB4EE90624";
	setAttr ".v" no;
createNode imagePlane -n "bottom_planeShape" -p "bottom_plane";
	rename -uid "ACF84390-4138-69CC-1ED7-10BBF23A64F7";
	setAttr -k off ".v";
	setAttr ".fc" 101;
	setAttr ".imn" -type "string" "/home/mtlaurentys/github/EleventhSemester/IGME0219/laurM_P03a/scenes/mouse_bottom.jpg";
	setAttr ".cov" -type "short2" 720 1280 ;
	setAttr ".dlc" no;
	setAttr ".w" 12.8;
	setAttr ".h" 7.2;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "pCube1";
	rename -uid "AC90CE47-4310-C980-6136-3187E339DDCE";
	setAttr ".t" -type "double3" -0.63808260437311826 0 0 ;
	setAttr ".s" -type "double3" 6.8319074201956802 2.3740218526812202 2.6905581171469062 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "D7F1BBF4-44F2-28B0-3686-7BB318A68EEC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49029189348220825 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "front_plane";
	rename -uid "2457E0AE-40C0-759B-CFAD-A2A724EE0640";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.96583747671857734 -0.83552320775746969 -0.39853403251035102 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 1.1466515162340285 1.0457461832838004 0.64976917556465585 ;
	setAttr ".spt" -type "double3" 0 0 -0.4352234204422521 ;
createNode imagePlane -n "front_planeShape" -p "front_plane";
	rename -uid "D583DE58-443C-B020-CB0B-1F92ED246147";
	setAttr -k off ".v";
	setAttr ".fc" 101;
	setAttr ".imn" -type "string" "/home/mtlaurentys/github/EleventhSemester/IGME0219/laurM_P03a/scenes/mouse_front.jpg";
	setAttr ".cov" -type "short2" 720 1280 ;
	setAttr ".dlc" no;
	setAttr ".w" 7.2;
	setAttr ".h" 12.799999999999999;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "top_plane";
	rename -uid "7F8682B4-42A0-ED27-DCE4-2EA5962522F3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.96982262740699998 -1.8889279512858397 0.36609250259017534 ;
	setAttr ".r" -type "double3" 90 270 0 ;
	setAttr ".s" -type "double3" 1.1814974275327368 1.2077529264930367 1.1814974275327368 ;
createNode imagePlane -n "top_planeShape" -p "top_plane";
	rename -uid "F2EBADE2-4C8F-383F-1076-86870CD0C139";
	setAttr -k off ".v";
	setAttr ".fc" 101;
	setAttr ".imn" -type "string" "/home/mtlaurentys/github/EleventhSemester/IGME0219/laurM_P03a/scenes/mouse_top.jpg";
	setAttr ".cov" -type "short2" 720 1280 ;
	setAttr ".dlc" no;
	setAttr ".w" 7.2;
	setAttr ".h" 12.799999999999999;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "back_plane";
	rename -uid "28FBB807-4383-B9F7-131C-91855466EAE8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.6346209124187601 0 -0.85999882733551059 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 0.91344941681332981 0.91344941681332981 0.91344941681332981 ;
createNode imagePlane -n "back_planeShape" -p "back_plane";
	rename -uid "A9042EEC-4296-E8E8-49B0-FD8854A99D0E";
	setAttr -k off ".v";
	setAttr ".fc" 101;
	setAttr ".imn" -type "string" "/home/mtlaurentys/github/EleventhSemester/IGME0219/laurM_P03a/scenes/mouse_back.jpg";
	setAttr ".cov" -type "short2" 1280 720 ;
	setAttr ".dlc" no;
	setAttr ".w" 12.8;
	setAttr ".h" 7.2;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "back1";
	rename -uid "A81233D0-4633-5AC0-9D78-DB9103084CAA";
	setAttr ".t" -type "double3" 0 0 -1000.1 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode camera -n "backShape1" -p "back1";
	rename -uid "37007455-467A-2007-6261-028997F04D88";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "back1";
	setAttr ".den" -type "string" "back1_depth";
	setAttr ".man" -type "string" "back1_mask";
	setAttr ".hc" -type "string" "viewSet -b %camera";
	setAttr ".o" yes;
createNode transform -n "right1";
	rename -uid "F39FC5CA-438B-FD05-CBEC-E1ACB91BFBB2";
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -n "rightShape1" -p "right1";
	rename -uid "6D338C6D-4F9D-AE1D-FE14-598C2DB97B52";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 8.8956921116205869;
	setAttr ".imn" -type "string" "right1";
	setAttr ".den" -type "string" "right1_depth";
	setAttr ".man" -type "string" "right1_mask";
	setAttr ".hc" -type "string" "viewSet -rs %camera";
	setAttr ".o" yes;
createNode transform -n "left1";
	rename -uid "7728EF8B-4655-E473-C8DA-65BB77750CC3";
	setAttr ".t" -type "double3" -1000.1 0.46067891868407562 -0.30389640976031324 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode camera -n "leftShape1" -p "left1";
	rename -uid "230A70BE-44F3-B4D4-58B0-EFAAB51E4AB1";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 7.662157020525548;
	setAttr ".imn" -type "string" "left1";
	setAttr ".den" -type "string" "left1_depth";
	setAttr ".man" -type "string" "left1_mask";
	setAttr ".hc" -type "string" "viewSet -ls %camera";
	setAttr ".o" yes;
createNode transform -n "bottom1";
	rename -uid "3A8F5FC8-47D0-F7B0-3F30-E788C15B95E5";
	setAttr ".t" -type "double3" 0 -1000.1 0 ;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode camera -n "bottomShape1" -p "bottom1";
	rename -uid "19E6A4CA-4878-8335-CA7B-EA8BAA3C940E";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 23.344047738672124;
	setAttr ".imn" -type "string" "bottom1";
	setAttr ".den" -type "string" "bottom1_depth";
	setAttr ".man" -type "string" "bottom1_mask";
	setAttr ".hc" -type "string" "viewSet -bo %camera";
	setAttr ".o" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "2D8F9D00-0000-5E5D-6165-B9F500000294";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "2D8F9D00-0000-5E5D-6165-B9F500000295";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "2D8F9D00-0000-5E5D-6165-B9F500000296";
createNode displayLayerManager -n "layerManager";
	rename -uid "2D8F9D00-0000-5E5D-6165-B9F500000297";
createNode displayLayer -n "defaultLayer";
	rename -uid "46E621BB-4FCB-6D79-5056-C781D7E11E1F";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "2D8F9D00-0000-5E5D-6165-B9F500000299";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "EA62F0B4-46B0-1E3C-9FC5-5DAD2E2F3E64";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "322583F6-4D1F-9A84-FA15-5DA4877B926E";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "B57F774B-4F13-6176-1C6D-A9910B14237E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" 6.8319074201956802 0 0 0 0 2.3740218526812202 0 0
		 0 0 2.3740218526812202 0 -0.63808260437311826 0 0 1;
	setAttr ".wt" 0.11437828093767166;
	setAttr ".re" 4;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "CF547251-48F9-6236-9BBD-B89D7C081C12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[8:9]" "e[12]" "e[17]";
	setAttr ".ix" -type "matrix" 6.8319074201956802 0 0 0 0 2.3740218526812202 0 0
		 0 0 2.3740218526812202 0 -0.63808260437311826 0 0 1;
	setAttr ".wt" 0.30763712525367737;
	setAttr ".re" 12;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "8013BF7E-4847-002A-BCEF-EDB38F2ABCDD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[8:9]" "e[20]" "e[25]";
	setAttr ".ix" -type "matrix" 6.8319074201956802 0 0 0 0 2.3740218526812202 0 0
		 0 0 2.3740218526812202 0 -0.63808260437311826 0 0 1;
	setAttr ".wt" 0.60155355930328369;
	setAttr ".dr" no;
	setAttr ".re" 20;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "F69692D8-49EF-3F56-EBF7-6197F7974D2B";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top|topShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 623\n            -height 350\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|bottom1|bottomShape1\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 622\n            -height 350\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front|frontShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n"
		+ "            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n"
		+ "            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 623\n            -height 350\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp|perspShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n"
		+ "            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 457\n            -height 653\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n"
		+ "            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n"
		+ "                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp|perspShape\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n"
		+ "                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n"
		+ "                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n"
		+ "\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 457\\n    -height 653\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 457\\n    -height 653\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "8D10ED5D-4E84-FCF8-2F03-B186A3D0B592";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "A78343B3-420A-BF78-7365-ECA9A6D91FB1";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 6.8319074201956802 0 0 0 0 2.3740218526812202 0 0
		 0 0 2.3740218526812202 0 -0.63808260437311826 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.0062619 -0.1662989 0 ;
	setAttr ".rs" 44876;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -5.3675422767804086 -0.23595424444112512 -1.1870109263406101 ;
	setAttr ".cbx" -type "double3" 3.3550183436103236 -0.09664353400136351 1.1870109263406101 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "2B365912-4829-EC6B-D6B5-1690B2E8189F";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk[0:19]" -type "float3"  0.13254336 0 0 -0.029130394
		 0 0 -0.1922605 -0.59939009 0 0.084478177 -0.54070878 0 -0.1922605 -0.59939009 0 0.084478177
		 -0.54070878 0 0.13254336 0 0 -0.029130394 0 0 -0.016021717 -0.046106949 0 -0.016021717
		 -0.046106949 0 0.056804292 0 0 0.056804292 0 0 -0.1106956 -0.27245015 0 -0.1106956
		 -0.27245015 0 0.087391235 -0.17604472 0 0.087391235 -0.17604472 0 -0.16895634 -0.49041075
		 0 -0.16895634 -0.49041075 0 0.088847756 -0.43172899 0 0.088847756 -0.43172899 0;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "19A068C0-4DFF-335E-D7A0-2893795F6F4D";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 6.8319074201956802 0 0 0 0 2.3740218526812202 0 0
		 0 0 2.3740218526812202 0 -0.63808260437311826 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.0062622 0.32001632 0 ;
	setAttr ".rs" 53644;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -5.3675422767804086 0.25036095568395844 -1.1870108555892456 ;
	setAttr ".cbx" -type "double3" 3.3550179363969086 0.38967166612372006 1.1870108555892456 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "AD818F95-4581-DC48-D78E-35BF328776B9";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[20:23]" -type "float3"  0 0.20484866 0 0 0.20484866
		 0 0 0.20484866 0 0 0.20484866 0;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "C3618845-4981-3035-5C52-33A58D220945";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 6.8319074201956802 0 0 0 0 2.3740218526812202 0 0
		 0 0 2.3740218526812202 0 -0.63808260437311826 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.0062624 0.78896314 0 ;
	setAttr ".rs" 60609;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -5.3675422767804086 0.71930775706799199 -1.1870107848378808 ;
	setAttr ".cbx" -type "double3" 3.3550175291834936 0.85861846750775361 1.1870107848378808 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "6591DF00-4C26-180D-91FE-9BB6230B6A38";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[24:27]" -type "float3"  0 0.19753264 0 0 0.19753264
		 0 0 0.19753264 0 0 0.19753264 0;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "BC0AB4CB-4F52-2C99-1646-B9B1215DA4E6";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 6.8319074201956802 0 0 0 0 2.3740218526812202 0 0
		 0 0 2.3740218526812202 0 -0.63808260437311826 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.0062624 1.0755419 0 ;
	setAttr ".rs" 34987;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -5.3675422767804086 1.0058865131737293 -1.1870107848378808 ;
	setAttr ".cbx" -type "double3" 3.3550175291834936 1.1451972943648554 1.1870107848378808 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "33F453AC-47EC-E26E-9856-4CB7F1194689";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[28:31]" -type "float3"  0 0.12071449 0 0 0.12071449
		 0 0 0.12071449 0 0 0.12071449 0;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "39F4DC7F-4489-3E6A-7CBD-62B4957A1E66";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 6.8319074201956802 0 0 0 0 2.3740218526812202 0 0
		 0 0 2.3740218526812202 0 -0.63808260437311826 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.0062624 1.6226465 0 ;
	setAttr ".rs" 47827;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -5.3675422767804086 1.5529910381411234 -1.1870107848378808 ;
	setAttr ".cbx" -type "double3" 3.3550175291834936 1.6923018900836142 1.1870107848378808 ;
createNode polyTweak -n "polyTweak5";
	rename -uid "24B54024-4404-A071-79CB-79B55D8B2347";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[32:35]" -type "float3"  0 0.23045474 0 0 0.23045474
		 0 0 0.23045474 0 0 0.23045474 0;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "ABD2C3F6-4DD0-0F5C-54F5-FB9252B7290A";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 6.8319074201956802 0 0 0 0 2.3740218526812202 0 0
		 0 0 2.3740218526812202 0 -0.63808260437311826 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.0062624 1.9613303 0 ;
	setAttr ".rs" 37804;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -5.3675422767804086 1.8916748489672817 -1.1870107848378808 ;
	setAttr ".cbx" -type "double3" 3.3550175291834936 2.0309857009097723 1.1870107848378808 ;
createNode polyTweak -n "polyTweak6";
	rename -uid "9DC3BF8A-4B4C-0DDC-6E9A-2F9F0446B14B";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[36:39]" -type "float3"  0 0.14266247 0 0 0.14266247
		 0 0 0.14266247 0 0 0.14266247 0;
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "B14731A7-4FDD-85AE-CCF7-0ABCAB9524D1";
	setAttr ".ics" -type "componentList" 3 "e[46]" "e[48]" "e[50:51]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak7";
	rename -uid "CFC8F4F4-4E90-A781-3F8C-5F8387D92144";
	setAttr ".uopa" yes;
	setAttr -s 26 ".tk";
	setAttr ".tk[2]" -type "float3" -0.0038133729 0 0 ;
	setAttr ".tk[4]" -type "float3" -0.0038133729 0 0 ;
	setAttr ".tk[20]" -type "float3" 0.008897868 0 0 ;
	setAttr ".tk[21]" -type "float3" -0.066098467 0 0 ;
	setAttr ".tk[22]" -type "float3" -0.066098467 0 0 ;
	setAttr ".tk[23]" -type "float3" 0.008897868 0 0 ;
	setAttr ".tk[24]" -type "float3" 0.050844982 0 0 ;
	setAttr ".tk[25]" -type "float3" -0.14363703 0 0 ;
	setAttr ".tk[26]" -type "float3" -0.14363703 0 0 ;
	setAttr ".tk[27]" -type "float3" 0.050844982 0 0 ;
	setAttr ".tk[28]" -type "float3" 0.077538572 0 0 ;
	setAttr ".tk[29]" -type "float3" -0.23388697 0 0 ;
	setAttr ".tk[30]" -type "float3" -0.23388697 0 0 ;
	setAttr ".tk[31]" -type "float3" 0.077538572 0 0 ;
	setAttr ".tk[32]" -type "float3" 0.16651724 1.110223e-16 0 ;
	setAttr ".tk[33]" -type "float3" -0.38387978 0 0 ;
	setAttr ".tk[34]" -type "float3" -0.38387978 0 0 ;
	setAttr ".tk[35]" -type "float3" 0.16651724 1.110223e-16 0 ;
	setAttr ".tk[36]" -type "float3" 0.2821897 1.110223e-16 0 ;
	setAttr ".tk[37]" -type "float3" -0.5427705 0 0 ;
	setAttr ".tk[38]" -type "float3" -0.5427705 0 0 ;
	setAttr ".tk[39]" -type "float3" 0.2821897 1.110223e-16 0 ;
	setAttr ".tk[40]" -type "float3" 0.42074254 0.1207144 0 ;
	setAttr ".tk[41]" -type "float3" -0.6622566 0.073160246 0 ;
	setAttr ".tk[42]" -type "float3" -0.6622566 0.073160246 0 ;
	setAttr ".tk[43]" -type "float3" 0.42074254 0.1207144 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "391FD456-4907-BB35-4E32-E4B114CB8180";
	setAttr ".ics" -type "componentList" 1 "f[25]";
	setAttr ".ix" -type "matrix" 6.8319074201956802 0 0 0 0 2.3740218526812202 0 0
		 0 0 2.6905581171469062 0 -0.63808260437311826 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.3302813 0.76743448 0 ;
	setAttr ".rs" 35517;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.7571234910164886 0.38967166612372006 -3.7966780721488878 ;
	setAttr ".cbx" -type "double3" 2.9034390271357662 1.1451972943648554 3.7966780721488878 ;
createNode polyTweak -n "polyTweak8";
	rename -uid "46404276-40AA-AC83-CB96-8680213A4818";
	setAttr ".uopa" yes;
	setAttr -s 41 ".tk[0:40]" -type "float3"  0 0 0.91111177 0 0 0.91111177
		 0 0 0.91111177 0 0 0.91111177 0 0 -0.91111177 0 0 -0.91111177 0 0 -0.91111177 0 0
		 -0.91111177 0 0 0.91111177 0 0 -0.91111177 0 0 -0.91111177 0 0 0.91111177 0 0 0.91111177
		 0 0 -0.91111177 0 0 -0.91111177 0 0 0.91111177 0 0 0.91111177 0 0 -0.91111177 0 0
		 -0.91111177 0 0 0.91111177 0 0 0.91111177 0 0 0.91111177 0 0 -0.91111177 0 0 -0.91111177
		 0 0 0.91111177 0 0 0.91111177 0 0 -0.91111177 0 0 -0.91111177 0 0 0.91111177 0 0
		 0.91111177 0 0 -0.91111177 0 0 -0.91111177 0 0 0.91111177 0 0 0.91111177 0 0 -0.91111177
		 0 0 -0.91111177 0 0 0.91111177 0 0 0.91111177 0 0 -0.91111177 0 0 -0.91111177 0 0
		 0;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "D7D4BFF4-4E0E-E7F0-F893-C0B7DD51F6EF";
	setAttr ".ics" -type "componentList" 1 "f[25]";
	setAttr ".ix" -type "matrix" 6.8319074201956802 0 0 0 0 2.3740218526812202 0 0
		 0 0 2.6905581171469062 0 -0.63808260437311826 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.3302813 0.70446849 0 ;
	setAttr ".rs" 55603;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.7571232874097811 0.42044684707158392 -0.95901405635980408 ;
	setAttr ".cbx" -type "double3" 2.9034390271357662 0.98849009689229406 0.95901405635980408 ;
createNode polyTweak -n "polyTweak9";
	rename -uid "4404AF68-4F9E-EC06-C3C0-8386AE4E22C0";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[40:43]" -type "float3"  0 0.012963302 1.054674864
		 0 -0.066009179 1.054674864 0 -0.066009179 -1.054674864 0 0.012963302 -1.054674864;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "E6F38E14-4ABF-F1B5-6ACC-F880291AF819";
	setAttr ".ics" -type "componentList" 1 "f[25]";
	setAttr ".ix" -type "matrix" 6.8319074201956802 0 0 0 0 2.3740218526812202 0 0
		 0 0 2.6905581171469062 0 -0.63808260437311826 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.330281 0.72963357 0.010914325 ;
	setAttr ".rs" 48005;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.9698458743757199 0.56053507963271654 -0.3561629566286757 ;
	setAttr ".cbx" -type "double3" 2.6907162365631203 0.89873208569468221 0.3779916064378212 ;
createNode polyTweak -n "polyTweak10";
	rename -uid "683D571E-407F-203B-2436-0EB5FC3E0E53";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[44:47]" -type "float3"  -0.031136651 0.059875958 0.22406173
		 0.031136651 -0.037808388 0.22406173 0.043708436 -0.038780186 -0.21594867 -0.043708436
		 0.059008818 -0.21594867;
createNode polyTweak -n "polyTweak11";
	rename -uid "483777BB-445F-2076-EC43-00BE755F9BA4";
	setAttr ".uopa" yes;
	setAttr -s 52 ".tk[0:51]" -type "float3"  0 0 -0.60372061 0 0 -0.60372061
		 0 0 -0.60372061 0 0 -0.60372061 0 0 0.60372061 0 0 0.60372061 0 0 0.60372061 0 0
		 0.60372061 0 0 -0.60372061 0 0 0.60372061 0 0 0.60372061 0 0 -0.60372061 0 0 -0.60372061
		 0 0 0.60372061 0 0 0.60372061 0 0 -0.60372061 0 0 -0.60372061 0 0 0.60372061 0 0
		 0.60372061 0 0 -0.60372061 0 0 -0.60372061 0 0 -0.60372061 0 0 0.60372061 0 0 0.60372061
		 0 0 -0.60372061 0 0 -0.60372061 0 0 0.60372061 0 0 0.60372061 0 0 -0.60372061 0 0
		 -0.60372061 0 0 0.60372061 0 0 0.60372061 0 0 -0.60372061 0 0 -0.60372061 0 0 0.60372061
		 0 0 0.60372061 0 0 -0.60372061 0 0 -0.60372061 0 0 0.60372061 0 0 0.60372061 0 0
		 0.15249549 0 0 0.15249549 0 0 -0.15249549 0 0 -0.15249549 0 0 0.056634463 0 0 0.056634463
		 0 0 -0.060105499 0 0 -0.060105499 0 0.013179084 0.056634463 0 0.013179084 0.056634463
		 0 0.013179084 -0.060105499 0 0.013179084 -0.060105499;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "B18C5FCC-4607-8CA0-FC2C-03B5847A35E5";
	setAttr ".dc" -type "componentList" 1 "f[42:45]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "93B13258-4273-61CC-A168-E9B6C5805B18";
	setAttr ".dc" -type "componentList" 1 "f[25]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "574797FA-45B2-4E9F-63DF-A6837112AA5B";
	setAttr ".dc" -type "componentList" 1 "f[44]";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "726E3B9E-4D69-E993-CB1C-0898724EEDAD";
	setAttr ".dc" -type "componentList" 2 "f[41]" "f[43]";
createNode deleteComponent -n "deleteComponent5";
	rename -uid "66FA261F-4998-80C7-F268-02BDBFDCAF84";
	setAttr ".dc" -type "componentList" 1 "f[41]";
createNode deleteComponent -n "deleteComponent6";
	rename -uid "AF3D9A5D-4023-9AC4-F4C4-13BE1E6541AE";
	setAttr ".dc" -type "componentList" 1 "f[37]";
createNode deleteComponent -n "deleteComponent7";
	rename -uid "3D946B7C-42DE-3ECD-7CB8-F0AD88361BB1";
	setAttr ".dc" -type "componentList" 1 "f[37]";
createNode deleteComponent -n "deleteComponent8";
	rename -uid "C77CB9AD-440F-BE3C-7229-A8816D3C542A";
	setAttr ".dc" -type "componentList" 1 "f[37]";
createNode deleteComponent -n "deleteComponent9";
	rename -uid "61530CB4-4827-8582-63C6-D4A4FD6B0BC1";
	setAttr ".dc" -type "componentList" 1 "f[37]";
createNode polyCloseBorder -n "polyCloseBorder1";
	rename -uid "DA2AD10D-4BDF-2BDD-BBF9-BCB77E637C1A";
	setAttr ".ics" -type "componentList" 3 "e[40]" "e[45]" "e[47:48]";
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "709070AF-4080-25F4-EF16-C493A9392C41";
	setAttr ".ics" -type "componentList" 1 "f[26]";
	setAttr ".ix" -type "matrix" 6.8319074201956802 0 0 0 0 2.3740218526812202 0 0
		 0 0 2.6905581171469062 0 -0.63808260437311826 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.5096229 1.2798023 0 ;
	setAttr ".rs" 53793;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.76712323782519976 0.89335547724394748 -2.1723326968726893 ;
	setAttr ".cbx" -type "double3" 2.252122548676919 1.6662492565963569 2.1723326968726893 ;
createNode polyTweak -n "polyTweak12";
	rename -uid "20D5A792-4E8B-6B91-723F-DC87914E0AD0";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[25]" -type "float3" 0.072454065 -0.10608235 0 ;
	setAttr ".tk[26]" -type "float3" 0.072454065 -0.10608235 0 ;
	setAttr ".tk[29]" -type "float3" 0.005084496 -0.01097404 0 ;
	setAttr ".tk[30]" -type "float3" 0.005084496 -0.01097404 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "9D7CC77E-4A7A-0E9A-9E2D-D5B5EDD6089E";
	setAttr ".ics" -type "componentList" 1 "f[26]";
	setAttr ".ix" -type "matrix" 6.8319074201956802 0 0 0 0 2.3740218526812202 0 0
		 0 0 2.6905581171469062 0 -0.63808260437311826 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.5096227 1.2194562 -0.029334838 ;
	setAttr ".rs" 52572;
	setAttr ".lt" -type "double3" -1.8735013540549517e-16 0 -0.090591253410572864 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.76712313602184601 0.81695985177185737 -0.52547269013543729 ;
	setAttr ".cbx" -type "double3" 2.2521223450702115 1.6219525347282833 0.46680301683701736 ;
createNode polyTweak -n "polyTweak13";
	rename -uid "7E45CB31-4213-AFBA-A641-178FF6137EAF";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[25]" -type "float3" 0.020032637 -0.043531235 0 ;
	setAttr ".tk[26]" -type "float3" 0.020032637 -0.043531235 0 ;
	setAttr ".tk[40]" -type "float3" 0 -0.032179765 -0.63389438 ;
	setAttr ".tk[41]" -type "float3" 0 -0.032179791 0.61208862 ;
	setAttr ".tk[42]" -type "float3" 0 -0.018658889 0.61208862 ;
	setAttr ".tk[43]" -type "float3" 0 -0.018658889 -0.63389438 ;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	rename -uid "09876395-4381-4526-EAC9-8BA185A36ADF";
	setAttr ".ics" -type "componentList" 1 "f[26]";
	setAttr ".ix" -type "matrix" 6.8319074201956802 0 0 0 0 2.3740218526812202 0 0
		 0 0 2.6905581171469062 0 -0.63808260437311826 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.46645 1.1398139 -0.029334817 ;
	setAttr ".rs" 43030;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.72395036977212102 0.73731751692922298 -0.52547269013543729 ;
	setAttr ".cbx" -type "double3" 2.2089495788204863 1.5423102706370135 0.46680305692945756 ;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	rename -uid "A2FE5E73-423D-6DE1-D0C0-D5A6E8E1A795";
	setAttr ".ics" -type "componentList" 1 "f[26]";
	setAttr ".ix" -type "matrix" 6.8319074201956802 0 0 0 0 2.3740218526812202 0 0
		 0 0 2.6905581171469062 0 -0.63808260437311826 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.46645 1.1398139 -0.029334838 ;
	setAttr ".rs" 38369;
	setAttr ".lt" -type "double3" 2.4286128663675299e-16 0 0.13076087296018163 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.79876534901807483 0.7778735433990519 -0.47548126607403546 ;
	setAttr ".cbx" -type "double3" 2.1341344977711785 1.5017543149185493 0.41681159277561552 ;
createNode polyTweak -n "polyTweak14";
	rename -uid "63AEF83F-4AB0-D025-788F-24AC82472444";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[48:55]" -type "float3"  -0.010950841 0.017083246 -0.018580325
		 -0.010950841 0.01708325 0.018580325 0.01095084 -0.01708325 0.018580325 0.01095084
		 -0.01708325 -0.018580325 0 -7.4505806e-09 1.8626451e-09 0 7.4505806e-09 -1.8626451e-09
		 -1.8626451e-09 5.5879354e-09 -1.8626451e-09 -1.8626451e-09 5.5879354e-09 1.8626451e-09;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	rename -uid "22BFF9F0-4063-C53C-0D62-4BA3C59E81DD";
	setAttr ".ics" -type "componentList" 1 "f[26]";
	setAttr ".ix" -type "matrix" 6.8319074201956802 0 0 0 0 2.3740218526812202 0 0
		 0 0 2.6905581171469062 0 -0.63808260437311826 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.5287662 1.2547709 -0.029334817 ;
	setAttr ".rs" 53041;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.86108152331320897 0.89283050211854842 -0.47548126607403546 ;
	setAttr ".cbx" -type "double3" 2.1964507738696666 1.6167111321353165 0.41681163286805573 ;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	rename -uid "DCD422A4-4315-37F3-CB01-63AC8ECF88CA";
	setAttr ".ics" -type "componentList" 1 "f[26]";
	setAttr ".ix" -type "matrix" 6.8319074201956802 0 0 0 0 2.3740218526812202 0 0
		 0 0 2.6905581171469062 0 -0.63808260437311826 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.5287662 1.2547708 -0.029334817 ;
	setAttr ".rs" 37227;
	setAttr ".ls" -type "double3" 0.94309445324269692 0.72814993286123553 0.29802278397598658 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.86108152331320897 0.89283050211854842 -0.47548126607403546 ;
	setAttr ".cbx" -type "double3" 2.1964507738696666 1.6167109906325872 0.41681163286805573 ;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	rename -uid "AFCDC738-4C69-EDB9-5F67-F58A145C6752";
	setAttr ".ics" -type "componentList" 1 "f[26]";
	setAttr ".ix" -type "matrix" 6.8319074201956802 0 0 0 0 2.3740218526812202 0 0
		 0 0 2.6905581171469062 0 -0.63808260437311826 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.5287662 1.2547706 -0.029334806 ;
	setAttr ".rs" 49327;
	setAttr ".lt" -type "double3" -1.6653345369377348e-16 0 -0.080663069116879593 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.89907636738552976 0.91342686111852134 -0.35419630215929876 ;
	setAttr ".cbx" -type "double3" 2.1584559297973458 1.5961144193785206 0.29552668899953916 ;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	rename -uid "C1E04E13-4FE2-CD43-4196-73B985E975C8";
	setAttr ".ics" -type "componentList" 1 "f[26]";
	setAttr ".ix" -type "matrix" 6.8319074201956802 0 0 0 0 2.3740218526812202 0 0
		 0 0 2.6905581171469062 0 -0.63808260437311826 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.4903249 1.1838566 -0.029334806 ;
	setAttr ".rs" 60987;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.86063501380374996 0.84251276837088107 -0.35419630215929876 ;
	setAttr ".cbx" -type "double3" 2.1200147798222737 1.5252003266308802 0.29552668899953916 ;
createNode polyExtrudeFace -n "polyExtrudeFace18";
	rename -uid "7B8F530B-4DD4-69E6-5669-138CFF526C89";
	setAttr ".ics" -type "componentList" 1 "f[26]";
	setAttr ".ix" -type "matrix" 6.8319074201956802 0 0 0 0 2.3740218526812202 0 0
		 0 0 2.6905581171469062 0 -0.63808260437311826 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.4903247 1.1838565 -0.029334806 ;
	setAttr ".rs" 56824;
	setAttr ".ls" -type "double3" 0.94370729105852846 0.90077896086801112 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.86063481019704269 0.84251269761951642 -0.35419630215929876 ;
	setAttr ".cbx" -type "double3" 2.1200147798222737 1.5252001851281511 0.29552668899953916 ;
createNode polyExtrudeFace -n "polyExtrudeFace19";
	rename -uid "7745A247-44AC-8379-6FE2-64B01602C330";
	setAttr ".ics" -type "componentList" 1 "f[26]";
	setAttr ".ix" -type "matrix" 6.8319074201956802 0 0 0 0 2.3740218526812202 0 0
		 0 0 2.6905581171469062 0 -0.63808260437311826 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.4903247 1.1838564 -0.029334806 ;
	setAttr ".rs" 44104;
	setAttr ".lt" -type "double3" 8.3266726846886741e-17 3.8163916471489756e-17 0.32474770308351636 ;
	setAttr ".ls" -type "double3" 1 1 4.5022866787769669 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.89608171993221464 0.86172784847959161 -0.3219631830076678 ;
	setAttr ".cbx" -type "double3" 2.0845676664803943 1.5059849635167113 0.26329356984790814 ;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "85C64DAF-4AB4-CFB8-010E-DFA24B5A8B0F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[148:149]" "e[151]" "e[153]";
	setAttr ".ix" -type "matrix" 6.8319074201956802 0 0 0 0 2.3740218526812202 0 0
		 0 0 2.6905581171469062 0 -0.63808260437311826 0 0 1;
	setAttr ".wt" 0.74697726964950562;
	setAttr ".dr" no;
	setAttr ".re" 153;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "6DB8E621-4237-373A-1ECA-FE9AD299E437";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[148:149]" "e[151]" "e[153]";
	setAttr ".ix" -type "matrix" 6.8319074201956802 0 0 0 0 2.3740218526812202 0 0
		 0 0 2.6905581171469062 0 -0.63808260437311826 0 0 1;
	setAttr ".wt" 0.56439352035522461;
	setAttr ".dr" no;
	setAttr ".re" 153;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "092FF74D-40A2-D448-41F6-5985522DE7F2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[148:149]" "e[151]" "e[153]";
	setAttr ".ix" -type "matrix" 6.8319074201956802 0 0 0 0 2.3740218526812202 0 0
		 0 0 2.6905581171469062 0 -0.63808260437311826 0 0 1;
	setAttr ".wt" 0.53272342681884766;
	setAttr ".dr" no;
	setAttr ".re" 153;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode animCurveTL -n "pCubeShape1_pnts_20__pntx";
	rename -uid "6286484D-49B9-63D7-5E9B-A7B336B2010E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -4.6566128730773926e-09;
createNode animCurveTL -n "pCubeShape1_pnts_20__pnty";
	rename -uid "D7969B26-4A72-0435-A4C1-DC8DA21D615A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCubeShape1_pnts_20__pntz";
	rename -uid "49C81323-4B51-1D96-D610-D9AC220A4BAD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.23588681221008301;
createNode polySplitRing -n "polySplitRing7";
	rename -uid "A4EDD72D-4232-922F-5E15-24A078BDFC18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 17 "e[0:3]" "e[16]" "e[19]" "e[24]" "e[27]" "e[32]" "e[35]" "e[38]" "e[42]" "e[46]" "e[50]" "e[54]" "e[58]" "e[62]" "e[66]" "e[70]" "e[74]";
	setAttr ".ix" -type "matrix" 6.8319074201956802 0 0 0 0 2.3740218526812202 0 0
		 0 0 2.6905581171469062 0 -0.63808260437311826 0 0 1;
	setAttr ".wt" 0.95740818977355957;
	setAttr ".dr" no;
	setAttr ".re" 35;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak15";
	rename -uid "EADDA4B6-47C8-7B94-D1B3-54AC2E6718A1";
	setAttr ".uopa" yes;
	setAttr -s 92 ".tk[0:91]" -type "float3"  0 0 -0.68273175 0 0 -0.50889462
		 -4.6566129e-09 0 -0.56211466 -7.4505806e-09 0 0.087043233 2.2351742e-08 0 0.57099384
		 -1.4901161e-08 0 -0.12714364 0 0 0.67551953 0 0 0.45126605 -4.6566129e-09 0 -0.64006257
		 2.2351742e-08 0 0.63770956 -1.4901161e-08 0 0.10130975 -1.4901161e-08 0 -0.16344124
		 -4.6566129e-09 0 -0.61458552 2.2351742e-08 0 0.60227978 -1.4901161e-08 0 0.050791688
		 -7.4505806e-09 0 -0.11459267 -8.3819032e-09 0 -0.58456433 1.8626451e-08 0 0.57941508
		 -1.4901161e-08 0 -0.11233088 -7.4505806e-09 0 0.060380265 -4.6566129e-09 0 -0.23588681
		 -1.4901161e-08 0 0.10504778 -1.4901161e-08 0 -0.14613387 1.8626451e-08 0 0.62528175
		 0 0 -0.71924251 -1.1175871e-08 0 0.092217617 -1.1175871e-08 0 -0.13962403 2.2351742e-08
		 0 0.71211386 0 0 -0.75364447 1.4901161e-08 0 -0.060242325 1.4901161e-08 7.4505806e-09
		 0.026662966 2.2351742e-08 7.4505806e-09 0.75353003 0.0029924123 0.002801314 -0.78427297
		 0.039387662 -0.032507904 -0.73751146 0.039387662 -0.0325079 0.70393157 0.0029924123
		 0.002801314 0.77994061 0.069351532 0.019366592 -0.78065121 0.011872137 -0.0047750799
		 -0.77937329 0.011872137 -0.0047750799 0.74579287 0.069351532 0.019366592 0.7476182
		 1.4901161e-08 0 -0.073259778 1.4901161e-08 0 0.06606438 1.4901161e-08 0 0.16100393
		 1.4901161e-08 0 -0.1586221 1.4901161e-08 0 -0.073259778 1.4901161e-08 0 0.06606438
		 1.4901161e-08 0 0.13568361 1.4901161e-08 0 -0.13367675 1.4901161e-08 0 -0.066240542
		 1.4901161e-08 0 0.059045155 1.4901161e-08 0 0.12211329 1.4901161e-08 0 -0.12010616
		 1.4901161e-08 0 -0.066240542 1.4901161e-08 0 0.059045155 1.4901161e-08 0 0.14490092
		 1.4901161e-08 0 -0.14251915 7.4505806e-09 3.7252903e-09 -0.066240549 7.4505806e-09
		 3.7252903e-09 0.059045158 2.2351742e-08 -3.7252903e-09 0.14490092 2.2351742e-08 -3.7252903e-09
		 -0.14251915 1.4901161e-08 0 -0.04921107 1.4901161e-08 0 0.042015694 1.4901161e-08
		 0 0.089189343 1.4901161e-08 0 -0.087182328 1.4901161e-08 0 -0.04921107 1.4901161e-08
		 0 0.042015694 1.4901161e-08 0 0.089189343 1.4901161e-08 0 -0.087182328 1.4901161e-08
		 0 -0.04921107 1.4901161e-08 0 0.042015694 1.4901161e-08 0 0.089189343 1.4901161e-08
		 0 -0.087182328 1.4901161e-08 0 -0.044685259 1.4901161e-08 0 0.03748988 1.4901161e-08
		 0 0.080439709 1.4901161e-08 0 -0.078432336 -0.058053702 0.080003358 -0.093068823
		 -0.058053702 0.080003358 0.095450617 0.062141977 -0.097651191 0.080439709 0.062141977
		 -0.097651191 -0.078432336 0.033524066 -0.062355552 -0.078432336 0.033524066 -0.062355552
		 0.080439709 -0.031479884 0.031766027 0.03748988 -0.031479884 0.031766027 -0.044685259
		 0.0094031058 -0.030589508 -0.078432336 0.0094031058 -0.030589508 0.080439709 -0.012673708
		 0.016471274 0.03748988 -0.012673708 0.016471274 -0.044685259 1.4901161e-08 0 -0.078432336
		 1.4901161e-08 0 0.080439709 -0.0085854139 0.0035295589 0.03748988 -0.0085854139 0.0035295589
		 -0.044685259;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "435027BB-4F7F-A765-B30B-2A88FC83FBD8";
	setAttr ".ics" -type "componentList" 3 "vtx[36]" "vtx[39]" "vtx[105:106]";
	setAttr ".ix" -type "matrix" 6.8319074201956802 0 0 0 0 2.3740218526812202 0 0
		 0 0 2.6905581171469062 0 -0.63808260437311826 0 0 1;
	setAttr ".d" 0.03;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak16";
	rename -uid "715B6F34-481C-46AF-64B4-ECAEB446006A";
	setAttr ".uopa" yes;
	setAttr -s 35 ".tk";
	setAttr ".tk[2]" -type "float3" 1.8626451e-09 0 0 ;
	setAttr ".tk[4]" -type "float3" 1.8626451e-09 0 0 ;
	setAttr ".tk[8]" -type "float3" 1.8626451e-09 0 0 ;
	setAttr ".tk[9]" -type "float3" 1.8626451e-09 0 0 ;
	setAttr ".tk[12]" -type "float3" 1.8626451e-09 0 0 ;
	setAttr ".tk[13]" -type "float3" 1.8626451e-09 0 0 ;
	setAttr ".tk[16]" -type "float3" 1.8626451e-09 0 0 ;
	setAttr ".tk[17]" -type "float3" 1.8626451e-09 0 0 ;
	setAttr ".tk[20]" -type "float3" 3.7252903e-09 0 -0.36737859 ;
	setAttr ".tk[23]" -type "float3" 1.8626451e-09 0 0 ;
	setAttr ".tk[24]" -type "float3" 1.8626451e-09 0 0 ;
	setAttr ".tk[27]" -type "float3" 1.8626451e-09 0 0 ;
	setAttr ".tk[28]" -type "float3" 1.8626451e-09 0 0 ;
	setAttr ".tk[31]" -type "float3" 1.8626451e-09 0 0 ;
	setAttr ".tk[32]" -type "float3" 1.8626451e-09 0 0 ;
	setAttr ".tk[35]" -type "float3" 1.8626451e-09 0 0 ;
	setAttr ".tk[92]" -type "float3" 1.8626451e-09 0 0.26884675 ;
	setAttr ".tk[93]" -type "float3" 1.8626451e-09 0 0.2294343 ;
	setAttr ".tk[94]" -type "float3" 1.8626451e-09 0 0.20060864 ;
	setAttr ".tk[95]" -type "float3" 0 0 0.14010395 ;
	setAttr ".tk[96]" -type "float3" 0 0 -0.15769255 ;
	setAttr ".tk[97]" -type "float3" 1.8626451e-09 0 -0.21334007 ;
	setAttr ".tk[98]" -type "float3" 1.8626451e-09 0 -0.25261885 ;
	setAttr ".tk[99]" -type "float3" 1.8626451e-09 0 -0.28402081 ;
	setAttr ".tk[100]" -type "float3" 1.8626451e-09 0 -0.29348689 ;
	setAttr ".tk[101]" -type "float3" 1.8626451e-09 0 -0.23777176 ;
	setAttr ".tk[102]" -type "float3" 1.8626451e-09 0 -0.14694639 ;
	setAttr ".tk[103]" -type "float3" 1.8626451e-09 0 -0.096057586 ;
	setAttr ".tk[104]" -type "float3" 1.8626451e-09 0 -0.0774967 ;
	setAttr ".tk[105]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".tk[107]" -type "float3" 0 0 0.077496678 ;
	setAttr ".tk[108]" -type "float3" 1.8626451e-09 0 0.086984336 ;
	setAttr ".tk[109]" -type "float3" 1.8626451e-09 0 0.12991963 ;
	setAttr ".tk[110]" -type "float3" 2.2351742e-08 0 -0.079702206 ;
	setAttr ".tk[111]" -type "float3" 1.8626451e-09 0 0.29348686 ;
createNode polySplitRing -n "polySplitRing8";
	rename -uid "8C64E7FE-49E6-5460-6066-78B942C88CB8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[19]" "e[27]" "e[35]" "e[183]" "e[185]" "e[187]" "e[189]" "e[191]" "e[193]" "e[195]" "e[197]" "e[199]" "e[201]" "e[203]" "e[205:206]" "e[208]" "e[210]" "e[212]" "e[214]";
	setAttr ".ix" -type "matrix" 6.8319074201956802 0 0 0 0 2.3740218526812202 0 0
		 0 0 2.6905581171469062 0 -0.63808260437311826 0 0 1;
	setAttr ".wt" 0.11778692156076431;
	setAttr ".re" 214;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak17";
	rename -uid "0296B13B-4D05-B335-0FC7-D1A5A439F36E";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk";
	setAttr ".tk[0]" -type "float3" 0.01462193 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.01462193 0 0 ;
	setAttr ".tk[4]" -type "float3" 0.01462193 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.01462193 0 0 ;
	setAttr ".tk[8]" -type "float3" 0.01462193 0 0 ;
	setAttr ".tk[9]" -type "float3" 0.01462193 0 0 ;
	setAttr ".tk[12]" -type "float3" 0.01462193 0 0 ;
	setAttr ".tk[13]" -type "float3" 0.01462193 0 0 ;
	setAttr ".tk[16]" -type "float3" 0.01462193 0 0 ;
	setAttr ".tk[17]" -type "float3" 0.01462193 0 0 ;
	setAttr ".tk[20]" -type "float3" 0.01462193 0 0 ;
	setAttr ".tk[23]" -type "float3" 0.01462193 0 0 ;
	setAttr ".tk[24]" -type "float3" 0.01462193 0 0 ;
	setAttr ".tk[27]" -type "float3" 0.01462193 0 0 ;
	setAttr ".tk[28]" -type "float3" 0.01462193 0 0 ;
	setAttr ".tk[31]" -type "float3" 0.01462193 0 0 ;
	setAttr ".tk[32]" -type "float3" 0.01462193 0 0 ;
	setAttr ".tk[35]" -type "float3" 0.01462193 0 0 ;
	setAttr ".tk[92]" -type "float3" 0.060315475 0 0 ;
	setAttr ".tk[93]" -type "float3" 0.060315475 0 0 ;
	setAttr ".tk[94]" -type "float3" 0.01462193 0 0 ;
	setAttr ".tk[95]" -type "float3" 0.01462193 0 0 ;
	setAttr ".tk[96]" -type "float3" 0.01462193 0 0 ;
	setAttr ".tk[97]" -type "float3" 0.01462193 0 0 ;
	setAttr ".tk[98]" -type "float3" 0.029243859 0 0 ;
	setAttr ".tk[99]" -type "float3" 0.029243859 0 0 ;
	setAttr ".tk[100]" -type "float3" 0.029243859 0 0 ;
	setAttr ".tk[101]" -type "float3" 0.01462193 0 0 ;
	setAttr ".tk[102]" -type "float3" 0.01462193 0 0 ;
	setAttr ".tk[103]" -type "float3" 0.01462193 0 0 ;
	setAttr ".tk[104]" -type "float3" 0.01462193 0 0 ;
	setAttr ".tk[105]" -type "float3" 0.01462193 0 0 ;
	setAttr ".tk[106]" -type "float3" 0.01462193 0 0 ;
	setAttr ".tk[107]" -type "float3" 0.01462193 0 0 ;
	setAttr ".tk[108]" -type "float3" 0.060315475 0 0 ;
	setAttr ".tk[109]" -type "float3" 0.060315475 0 0 ;
createNode polySplitRing -n "polySplitRing9";
	rename -uid "E283DF13-4B14-C8B2-1915-E3A24BC241DB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[19]" "e[27]" "e[35]" "e[217:218]" "e[220]" "e[222]" "e[224]" "e[226]" "e[228]" "e[230]" "e[232]" "e[234]" "e[236]" "e[238]" "e[240]" "e[242]" "e[244]" "e[246]" "e[248]";
	setAttr ".ix" -type "matrix" 6.8319074201956802 0 0 0 0 2.3740218526812202 0 0
		 0 0 2.6905581171469062 0 -0.63808260437311826 0 0 1;
	setAttr ".wt" 0.19174966216087341;
	setAttr ".re" 217;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing10";
	rename -uid "18F51067-4AC2-269A-20C2-59A135A0C969";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[19]" "e[27]" "e[35]" "e[257:258]" "e[260]" "e[262]" "e[264]" "e[266]" "e[268]" "e[270]" "e[272]" "e[274]" "e[276]" "e[278]" "e[280]" "e[282]" "e[284]" "e[286]" "e[288]";
	setAttr ".ix" -type "matrix" 6.8319074201956802 0 0 0 0 2.3740218526812202 0 0
		 0 0 2.6905581171469062 0 -0.63808260437311826 0 0 1;
	setAttr ".wt" 0.24334634840488434;
	setAttr ".re" 257;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing11";
	rename -uid "A23C1CA9-4F10-0CB2-52FB-56BA3E78E846";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[19]" "e[27]" "e[35]" "e[297:298]" "e[300]" "e[302]" "e[304]" "e[306]" "e[308]" "e[310]" "e[312]" "e[314]" "e[316]" "e[318]" "e[320]" "e[322]" "e[324]" "e[326]" "e[328]";
	setAttr ".ix" -type "matrix" 6.8319074201956802 0 0 0 0 2.3740218526812202 0 0
		 0 0 2.6905581171469062 0 -0.63808260437311826 0 0 1;
	setAttr ".wt" 0.25805583596229553;
	setAttr ".re" 298;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak18";
	rename -uid "485FA365-48B6-E83E-6C2E-4992E5269F72";
	setAttr ".uopa" yes;
	setAttr -s 60 ".tk[110:169]" -type "float3"  0 0 0.17804095 0 0 0.16305022
		 0 0 0.096677378 0 0 0.06998311 0 0 0.02890208 0 0 0.007741136 0 0 -0.017867601 0
		 0 -0.03189075 0 0 -0.074280187 0 0 -0.10541931 0 0 -0.15092427 0 0 -0.17804095 0
		 0 -0.17280787 0 0 -0.15149334 0 0 -0.13015892 0 0 -0.090274833 0 0 0.080898292 0
		 0 0.12304755 0 0 0.13911282 0 0 0.16483192 0 0 0.23461924 0 0 0.2213027 0 0 0.15607098
		 0 0 0.11985364 0 0 0.034120835 0 0 0.010764047 0 0 -0.020141929 0 0 -0.036577091
		 0 0 -0.12357865 0 0 -0.16504321 0 0 -0.20961091 0 0 -0.23461924 0 0 -0.2285409 0
		 0 -0.19681774 0 0 -0.17270613 0 0 -0.11031491 0 0 0.10003456 0 0 0.16431722 0 0 0.18320622
		 0 0 0.22000352 0 0 0.21745685 0 0 0.21021801 0 0 0.16738302 0 0 0.13299046 0 0 0.028481025
		 0 0 0.010422891 0 0 -0.015970333 0 0 -0.029582672 0 0 -0.13490698 0 0 -0.17367926
		 0 0 -0.20278029 0 0 -0.21745685 0 0 -0.21247129 0 0 -0.18018694 0 0 -0.16101207 0
		 0 -0.095390007 0 0 0.087507308 0 0 0.15401548 0 0 0.169714 0 0 0.20612267;
createNode polySplitRing -n "polySplitRing12";
	rename -uid "22B18FBB-417F-874C-B192-748CC2FE8B78";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[19]" "e[27]" "e[35]" "e[337:338]" "e[340]" "e[342]" "e[344]" "e[346]" "e[348]" "e[350]" "e[352]" "e[354]" "e[356]" "e[358]" "e[360]" "e[362]" "e[364]" "e[366]" "e[374]";
	setAttr ".ix" -type "matrix" 6.8319074201956802 0 0 0 0 2.3740218526812202 0 0
		 0 0 2.6905581171469062 0 -0.63808260437311826 0 0 1;
	setAttr ".wt" 0.79735308885574341;
	setAttr ".dr" no;
	setAttr ".re" 337;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyPlanarProj -n "polyPlanarProj1";
	rename -uid "2D8F9D00-0000-5E5D-6165-BA2B000002DE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "f[1]" "f[29:36]" "f[101:104]" "f[112:116]" "f[132:136]" "f[152:156]" "f[171:175]" "f[191:195]";
	setAttr ".ix" -type "matrix" 6.8319074201956802 0 0 0 0 2.3740218526812202 0 0
		 0 0 2.6905581171469062 0 -0.63808260437311826 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -1.6684757471084595 1.8582181930541992 -0.035242557525634766 ;
	setAttr ".ic" -type "double2" -0.50624461405925736 0.5 ;
	setAttr ".ro" -type "double3" -90.132828448514289 2.1679833538394125e-10 2.0025566171517593 ;
	setAttr ".ps" -type "double2" 4.9414060500987755 3.3406992157343591 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak19";
	rename -uid "2D8F9D00-0000-5E5D-6165-BA2B000002DF";
	setAttr ".uopa" yes;
	setAttr -s 157 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 -4.6566129e-09 ;
	setAttr ".tk[1]" -type "float3" 0.0063417405 0 -0.18308823 ;
	setAttr ".tk[3]" -type "float3" -0.0079271756 0 -0.52508098 ;
	setAttr ".tk[5]" -type "float3" -0.0079271756 0 0.52451557 ;
	setAttr ".tk[6]" -type "float3" 0 0 -1.3969839e-09 ;
	setAttr ".tk[7]" -type "float3" 0.0063417405 0 0.19258152 ;
	setAttr ".tk[9]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".tk[10]" -type "float3" -0.0079271756 0 0.39341196 ;
	setAttr ".tk[11]" -type "float3" -0.0079271756 0 -0.38133496 ;
	setAttr ".tk[12]" -type "float3" 0 0 -9.3132257e-09 ;
	setAttr ".tk[13]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[14]" -type "float3" -0.0079271756 0 0.42240301 ;
	setAttr ".tk[15]" -type "float3" -0.0079271756 0 -0.4093678 ;
	setAttr ".tk[16]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".tk[17]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".tk[18]" -type "float3" -0.0079271756 0 0.51601464 ;
	setAttr ".tk[19]" -type "float3" -0.0079271756 0 -0.50977999 ;
	setAttr ".tk[21]" -type "float3" -0.0079271756 0 -0.53541327 ;
	setAttr ".tk[22]" -type "float3" -0.0079271756 0 0.53541338 ;
	setAttr ".tk[24]" -type "float3" 0 0.013789119 0.0047683823 ;
	setAttr ".tk[25]" -type "float3" 0.0063417405 0.013789119 -0.51096886 ;
	setAttr ".tk[26]" -type "float3" 0.0063417405 0.013789119 0.51457161 ;
	setAttr ".tk[27]" -type "float3" 0 0.013789119 -0.003200738 ;
	setAttr ".tk[29]" -type "float3" 0.0063417405 0 -0.44055775 ;
	setAttr ".tk[30]" -type "float3" 0.0063417405 0 0.43624997 ;
	setAttr ".tk[32]" -type "float3" 0.026059778 1.110223e-16 0.038496684 ;
	setAttr ".tk[33]" -type "float3" 0.018132603 1.110223e-16 -0.019765845 ;
	setAttr ".tk[34]" -type "float3" 0.018132603 1.110223e-16 -0.012035403 ;
	setAttr ".tk[35]" -type "float3" 0.026059778 1.110223e-16 -0.024312751 ;
	setAttr ".tk[36]" -type "float3" 0.0064791613 -0.040028624 0 ;
	setAttr ".tk[37]" -type "float3" 0.0064791613 -0.040028624 0 ;
	setAttr ".tk[38]" -type "float3" 0.0064791613 -0.040028624 0 ;
	setAttr ".tk[39]" -type "float3" 0.0064791613 -0.040028624 0 ;
	setAttr ".tk[40]" -type "float3" 0.014268916 0 0.048444729 ;
	setAttr ".tk[41]" -type "float3" 0.014268916 0 -0.048444737 ;
	setAttr ".tk[42]" -type "float3" 0.014268916 0 -0.050000329 ;
	setAttr ".tk[43]" -type "float3" 0.014268916 0 0.054683972 ;
	setAttr ".tk[44]" -type "float3" 0.014268916 0 0.048444733 ;
	setAttr ".tk[45]" -type "float3" 0.014268916 0 -0.048444737 ;
	setAttr ".tk[46]" -type "float3" 0.014268916 0 -0.10390449 ;
	setAttr ".tk[47]" -type "float3" 0.014268916 0 0.10778984 ;
	setAttr ".tk[48]" -type "float3" 0.014268916 0 0.043563396 ;
	setAttr ".tk[49]" -type "float3" 0.014268916 0 -0.043563407 ;
	setAttr ".tk[50]" -type "float3" 0.014268916 0 -0.09323851 ;
	setAttr ".tk[51]" -type "float3" 0.014268916 0 0.097124808 ;
	setAttr ".tk[52]" -type "float3" 0.014268916 0 0.043563396 ;
	setAttr ".tk[53]" -type "float3" 0.014268916 0 -0.043563407 ;
	setAttr ".tk[54]" -type "float3" 0.014268916 -2.3283064e-10 -0.044726372 ;
	setAttr ".tk[55]" -type "float3" 0.014268916 -2.3283064e-10 0.04940993 ;
	setAttr ".tk[56]" -type "float3" 0.014268916 0 0.043563396 ;
	setAttr ".tk[57]" -type "float3" 0.014268916 0 -0.043563403 ;
	setAttr ".tk[58]" -type "float3" 0.014268916 -2.3283064e-10 -0.044726372 ;
	setAttr ".tk[59]" -type "float3" 0.014268916 -2.3283064e-10 0.04940993 ;
	setAttr ".tk[60]" -type "float3" 0.014268916 0 0.031720698 ;
	setAttr ".tk[61]" -type "float3" 0.014268916 0 -0.031720657 ;
	setAttr ".tk[62]" -type "float3" 0.014268916 0 -0.067364097 ;
	setAttr ".tk[63]" -type "float3" 0.014268916 0 0.071249746 ;
	setAttr ".tk[64]" -type "float3" 0.014268916 0 0.031720698 ;
	setAttr ".tk[65]" -type "float3" 0.014268916 0 -0.031720657 ;
	setAttr ".tk[66]" -type "float3" 0.014268916 0 -0.067364097 ;
	setAttr ".tk[67]" -type "float3" 0.014268916 0 0.071249746 ;
	setAttr ".tk[68]" -type "float3" 0.014268916 0 0.031720698 ;
	setAttr ".tk[69]" -type "float3" 0.014268916 0 -0.031720657 ;
	setAttr ".tk[70]" -type "float3" 0.014268916 0 -0.067364097 ;
	setAttr ".tk[71]" -type "float3" 0.014268916 0 0.071249746 ;
	setAttr ".tk[72]" -type "float3" 0.014268916 0 0.028573319 ;
	setAttr ".tk[73]" -type "float3" 0.014268916 0 -0.028573319 ;
	setAttr ".tk[74]" -type "float3" 0.014268916 2.3283064e-10 -0.060486834 ;
	setAttr ".tk[75]" -type "float3" 0.014268916 2.3283064e-10 0.064373262 ;
	setAttr ".tk[76]" -type "float3" 0.014268916 0 0.0081447111 ;
	setAttr ".tk[77]" -type "float3" 0.014268916 0 -0.0041010063 ;
	setAttr ".tk[78]" -type "float3" 0.014268916 -1.4551915e-11 -0.060486872 ;
	setAttr ".tk[79]" -type "float3" 0.014268916 -1.4551915e-11 0.064373344 ;
	setAttr ".tk[80]" -type "float3" 0.014268916 0 0.064373262 ;
	setAttr ".tk[81]" -type "float3" 0.014268916 0 -0.060486834 ;
	setAttr ".tk[82]" -type "float3" 0.014268916 0 -0.028573319 ;
	setAttr ".tk[83]" -type "float3" 0.014268916 0 0.028573321 ;
	setAttr ".tk[84]" -type "float3" 0.014268916 0 0.064373262 ;
	setAttr ".tk[85]" -type "float3" 0.014268916 0 -0.060486834 ;
	setAttr ".tk[86]" -type "float3" 0.014268916 0 -0.028573319 ;
	setAttr ".tk[87]" -type "float3" 0.014268916 0 0.028573321 ;
	setAttr ".tk[88]" -type "float3" 0.014268916 0 0.064373262 ;
	setAttr ".tk[89]" -type "float3" 0.014268916 0 -0.060486834 ;
	setAttr ".tk[90]" -type "float3" 0.014268916 0 -0.028573319 ;
	setAttr ".tk[91]" -type "float3" 0.014268916 0 0.028573319 ;
	setAttr ".tk[95]" -type "float3" 0 0 -9.3132257e-09 ;
	setAttr ".tk[96]" -type "float3" 0 0 -1.3038516e-08 ;
	setAttr ".tk[97]" -type "float3" 0 0 5.5879354e-09 ;
	setAttr ".tk[98]" -type "float3" 0.0064791613 0.0032354624 0 ;
	setAttr ".tk[99]" -type "float3" 0.0064791613 0.0032354624 0 ;
	setAttr ".tk[102]" -type "float3" 0 0.013789119 -0.011161064 ;
	setAttr ".tk[104]" -type "float3" 0.026059778 1.110223e-16 -0.12458959 ;
	setAttr ".tk[105]" -type "float3" 0.026059778 1.110223e-16 0.13722616 ;
	setAttr ".tk[107]" -type "float3" 0 0.013789119 0.011914435 ;
	setAttr ".tk[112]" -type "float3" 0 0.013789119 0.019425513 ;
	setAttr ".tk[114]" -type "float3" 0.026059778 1.110223e-16 0.1683365 ;
	setAttr ".tk[115]" -type "float3" 0.0064791613 -0.040028624 0 ;
	setAttr ".tk[116]" -type "float3" 0.0064791613 -0.040028624 0 ;
	setAttr ".tk[117]" -type "float3" 0.026059778 1.110223e-16 -0.16350859 ;
	setAttr ".tk[119]" -type "float3" 0 0.013789119 -0.01916215 ;
	setAttr ".tk[126]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[132]" -type "float3" 0 0.013789119 0.0267609 ;
	setAttr ".tk[134]" -type "float3" 0.026059778 1.110223e-16 0.16794224 ;
	setAttr ".tk[135]" -type "float3" 0.0064791613 -0.040028624 0 ;
	setAttr ".tk[136]" -type "float3" 0.0064791613 -0.040028624 0 ;
	setAttr ".tk[137]" -type "float3" 0.032538939 -0.040028624 -0.1683365 ;
	setAttr ".tk[139]" -type "float3" 0 0.013789119 -0.02666582 ;
	setAttr ".tk[145]" -type "float3" 0 0 -4.4703484e-08 ;
	setAttr ".tk[146]" -type "float3" 0 0 5.9604645e-08 ;
	setAttr ".tk[152]" -type "float3" 0 0.013789119 0.032129716 ;
	setAttr ".tk[154]" -type "float3" 0.026059778 1.110223e-16 0.15388398 ;
	setAttr ".tk[155]" -type "float3" 0.0064791613 -0.040028624 0 ;
	setAttr ".tk[156]" -type "float3" 0.0064791613 -0.040028624 0 ;
	setAttr ".tk[157]" -type "float3" 0.026059778 1.110223e-16 -0.15863058 ;
	setAttr ".tk[159]" -type "float3" 0 0.013789119 -0.032080725 ;
	setAttr ".tk[165]" -type "float3" 0 0 -2.9802322e-08 ;
	setAttr ".tk[166]" -type "float3" 0 0 -4.4703484e-08 ;
	setAttr ".tk[170]" -type "float3" 0 0 -0.010183383 ;
	setAttr ".tk[171]" -type "float3" 0 0.013789119 0.025175905 ;
	setAttr ".tk[172]" -type "float3" 0 0 -0.0069506308 ;
	setAttr ".tk[173]" -type "float3" 0.026059778 1.110223e-16 0.1362364 ;
	setAttr ".tk[174]" -type "float3" 0.0064791613 -0.040028624 -0.00051016442 ;
	setAttr ".tk[175]" -type "float3" 0.0064791613 -0.040028624 0.00068964227 ;
	setAttr ".tk[176]" -type "float3" 0.026059778 1.110223e-16 -0.14542603 ;
	setAttr ".tk[177]" -type "float3" 0 0 0.0070003998 ;
	setAttr ".tk[178]" -type "float3" 0 0.013789119 -0.024930043 ;
	setAttr ".tk[179]" -type "float3" 0 0 0.0099205123 ;
	setAttr ".tk[180]" -type "float3" 0 0 0.010390353 ;
	setAttr ".tk[181]" -type "float3" 0 0 0.01016978 ;
	setAttr ".tk[182]" -type "float3" 0 0 0.0085487589 ;
	setAttr ".tk[183]" -type "float3" 0 0 0.0077189207 ;
	setAttr ".tk[184]" -type "float3" 0.014268916 0 0.0043712631 ;
	setAttr ".tk[185]" -type "float3" 0.014268916 0 -0.0040394096 ;
	setAttr ".tk[186]" -type "float3" 0 0 -0.0074058138 ;
	setAttr ".tk[187]" -type "float3" 0 0 -0.008106675 ;
	setAttr ".tk[188]" -type "float3" 0 0 -0.0099090077 ;
	setAttr ".tk[189]" -type "float3" 0 0 -0.010390355 ;
	setAttr ".tk[190]" -type "float3" 0 0 -0.21635729 ;
	setAttr ".tk[191]" -type "float3" 0 0.013789119 -0.17747194 ;
	setAttr ".tk[192]" -type "float3" 0 0 -0.17184803 ;
	setAttr ".tk[193]" -type "float3" 0.026059778 1.110223e-16 0.056561414 ;
	setAttr ".tk[194]" -type "float3" 0.0064791613 -0.040028624 -0.010646406 ;
	setAttr ".tk[195]" -type "float3" 0.0064791613 -0.040028624 0.011132459 ;
	setAttr ".tk[196]" -type "float3" 0.026059778 1.110223e-16 -0.076514974 ;
	setAttr ".tk[197]" -type "float3" 0 0 0.17178184 ;
	setAttr ".tk[198]" -type "float3" 0 0.013789119 0.15560657 ;
	setAttr ".tk[199]" -type "float3" 0 0 0.19220275 ;
	setAttr ".tk[200]" -type "float3" 0 0 0.19066909 ;
	setAttr ".tk[201]" -type "float3" 0 0 0.18697459 ;
	setAttr ".tk[202]" -type "float3" 0 0 0.1497274 ;
	setAttr ".tk[203]" -type "float3" 0 0 0.1367971 ;
	setAttr ".tk[204]" -type "float3" 0.014268916 0 0.081596345 ;
	setAttr ".tk[205]" -type "float3" 0.014268916 0 -0.075987726 ;
	setAttr ".tk[206]" -type "float3" 0 0 -0.15458497 ;
	setAttr ".tk[207]" -type "float3" 0 0 -0.16665581 ;
	setAttr ".tk[208]" -type "float3" 0 0 -0.20687933 ;
	setAttr ".tk[209]" -type "float3" 0 0 -0.21388844 ;
createNode checker -n "checker1";
	rename -uid "2D8F9D00-0000-5E5D-6165-BA6A0000036D";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "2D8F9D00-0000-5E5D-6165-BA6A0000036E";
	setAttr ".re" -type "float2" 4 4 ;
createNode lambert -n "checker1Material";
	rename -uid "2D8F9D00-0000-5E5D-6165-BA7000000371";
createNode shadingEngine -n "checker1SG";
	rename -uid "2D8F9D00-0000-5E5D-6165-BA7000000372";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "2D8F9D00-0000-5E5D-6165-BA7000000373";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "2D8F9D00-0000-5E5D-6165-BA7500000374";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -330.95236780151544 -344.0476053763955 ;
	setAttr ".tgi[0].vh" -type "double2" 317.85713022663526 338.09522466054096 ;
	setAttr -s 4 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 110;
	setAttr ".tgi[0].ni[0].y" 77.142860412597656;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -197.14285278320312;
	setAttr ".tgi[0].ni[1].y" 100;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" -811.4285888671875;
	setAttr ".tgi[0].ni[2].y" 77.142860412597656;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" -504.28570556640625;
	setAttr ".tgi[0].ni[3].y" 100;
	setAttr ".tgi[0].ni[3].nvs" 1923;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "2D8F9D00-0000-5E5D-6165-BA9D00000380";
	setAttr ".uopa" yes;
	setAttr -s 47 ".uvtk";
	setAttr ".uvtk[44]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[45]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[46]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[47]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[48]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[49]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[50]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[51]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[117]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[118]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[127]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[128]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[129]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[130]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[148]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[149]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[150]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[151]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[169]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[170]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[171]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[172]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[189]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[190]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[191]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[192]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[210]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[211]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[212]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[213]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[228]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[229]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[230]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[231]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[232]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[233]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[234]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[235]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[236]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[237]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[238]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[239]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[240]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[241]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[242]" -type "float2" -0.028940678 0 ;
	setAttr ".uvtk[243]" -type "float2" -0.028940678 0 ;
createNode polyPlanarProj -n "polyPlanarProj2";
	rename -uid "2D8F9D00-0000-5E5D-6165-BB22000003E2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "f[16]" "f[19]" "f[26]" "f[37:89]" "f[189:190]" "f[196:199]" "f[207:208]";
	setAttr ".ix" -type "matrix" 6.8319074201956802 0 0 0 0 2.3740218526812202 0 0
		 0 0 2.6905581171469062 0 -0.63808260437311826 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 1.8952467441558838 0.69067949056625366 -0.090860843658447266 ;
	setAttr ".ro" -type "double3" -90.680977148302532 3.0849615202347901e-09 -27.120855291178156 ;
	setAttr ".ps" -type "double2" 3.5660287107439523 3.9228589551197399 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "2D8F9D00-0000-5E5D-6165-BB39000003FC";
	setAttr ".uopa" yes;
	setAttr -s 73 ".uvtk";
	setAttr ".uvtk[3]" -type "float2" 0 1.0463164 ;
	setAttr ".uvtk[5]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[11]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[33]" -type "float2" 0 1.0463164 ;
	setAttr ".uvtk[34]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[37]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[38]" -type "float2" 0 1.0463164 ;
	setAttr ".uvtk[41]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[42]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[52]" -type "float2" 0 1.0463164 ;
	setAttr ".uvtk[53]" -type "float2" 0 1.0463164 ;
	setAttr ".uvtk[54]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[55]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[56]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[57]" -type "float2" 0 1.0463164 ;
	setAttr ".uvtk[58]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[59]" -type "float2" 0 1.0463164 ;
	setAttr ".uvtk[60]" -type "float2" 0 1.0463164 ;
	setAttr ".uvtk[61]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[62]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[63]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[64]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[65]" -type "float2" 0 1.0463164 ;
	setAttr ".uvtk[66]" -type "float2" 0 1.0463164 ;
	setAttr ".uvtk[67]" -type "float2" 0 1.0463164 ;
	setAttr ".uvtk[68]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[69]" -type "float2" 0 1.0463164 ;
	setAttr ".uvtk[70]" -type "float2" 0 1.0463164 ;
	setAttr ".uvtk[71]" -type "float2" 0 1.0463164 ;
	setAttr ".uvtk[72]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[73]" -type "float2" 0 1.0463164 ;
	setAttr ".uvtk[74]" -type "float2" 0 1.0463164 ;
	setAttr ".uvtk[75]" -type "float2" 0 1.0463164 ;
	setAttr ".uvtk[76]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[77]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[78]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[79]" -type "float2" 0 1.0463164 ;
	setAttr ".uvtk[80]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[81]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[82]" -type "float2" 0 1.0463164 ;
	setAttr ".uvtk[83]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[84]" -type "float2" 0 1.0463164 ;
	setAttr ".uvtk[85]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[86]" -type "float2" 0 1.0463164 ;
	setAttr ".uvtk[87]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[88]" -type "float2" 0 1.0463164 ;
	setAttr ".uvtk[89]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[90]" -type "float2" 0 1.0463164 ;
	setAttr ".uvtk[91]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[92]" -type "float2" 0 1.0463164 ;
	setAttr ".uvtk[93]" -type "float2" 0 1.0463164 ;
	setAttr ".uvtk[94]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[95]" -type "float2" 0 1.0463164 ;
	setAttr ".uvtk[96]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[97]" -type "float2" 0 1.0463164 ;
	setAttr ".uvtk[98]" -type "float2" 0 1.0463164 ;
	setAttr ".uvtk[99]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[100]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[101]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[102]" -type "float2" 0 1.0463164 ;
	setAttr ".uvtk[103]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[244]" -type "float2" 0 1.0463164 ;
	setAttr ".uvtk[245]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[246]" -type "float2" 0 1.0463164 ;
	setAttr ".uvtk[247]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[248]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[249]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[250]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[251]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[252]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[253]" -type "float2" 0 1.0463163 ;
	setAttr ".uvtk[254]" -type "float2" 0 1.0463163 ;
createNode polyPlanarProj -n "polyPlanarProj3";
	rename -uid "2D8F9D00-0000-5E5D-6165-BB680000041C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "f[18]" "f[21]" "f[23:25]" "f[28]" "f[105:107]" "f[109:111]" "f[129:131]" "f[149:151]" "f[169:170]" "f[188]";
	setAttr ".ix" -type "matrix" 6.8319074201956802 0 0 0 0 2.3740218526812202 0 0
		 0 0 2.6905581171469062 0 -0.63808260437311826 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -1.625940203666687 0.72931110858917236 1.1034955978393555 ;
	setAttr ".ic" -type "double2" -0.81123468513474051 1.6420431128592901 ;
	setAttr ".ro" -type "double3" 10.039268197191536 -34.042549621861504 -79.681488192922671 ;
	setAttr ".ps" -type "double2" 3.4840295955929133 8.006549521158469 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "2D8F9D00-0000-5E5D-6165-BB940000043A";
	setAttr ".uopa" yes;
	setAttr -s 33 ".uvtk";
	setAttr ".uvtk[32]" -type "float2" -0.075544477 0 ;
	setAttr ".uvtk[36]" -type "float2" -0.13506162 0 ;
	setAttr ".uvtk[40]" -type "float2" -0.069967031 0 ;
	setAttr ".uvtk[119]" -type "float2" -0.012781322 0 ;
	setAttr ".uvtk[120]" -type "float2" 0.085919328 -0.091206223 ;
	setAttr ".uvtk[121]" -type "float2" 0.021883845 -0.0065786839 ;
	setAttr ".uvtk[124]" -type "float2" 0.070585489 -0.0030400753 ;
	setAttr ".uvtk[125]" -type "float2" 0.1189081 -0.087008268 ;
	setAttr ".uvtk[126]" -type "float2" 0.15152872 0.0079374313 ;
	setAttr ".uvtk[145]" -type "float2" 0.15249161 -0.032661069 ;
	setAttr ".uvtk[146]" -type "float2" 0.061699927 0 ;
	setAttr ".uvtk[147]" -type "float2" 0.11569476 0 ;
	setAttr ".uvtk[166]" -type "float2" 0.14427054 0 ;
	setAttr ".uvtk[167]" -type "float2" 0.18097544 0 ;
	setAttr ".uvtk[168]" -type "float2" 0.20767987 0 ;
	setAttr ".uvtk[186]" -type "float2" 0.18111886 -0.019583929 ;
	setAttr ".uvtk[187]" -type "float2" -0.18111563 0 ;
	setAttr ".uvtk[188]" -type "float2" -0.11726683 0 ;
	setAttr ".uvtk[207]" -type "float2" 0.00056749582 0 ;
	setAttr ".uvtk[208]" -type "float2" 0.10158139 0 ;
	setAttr ".uvtk[209]" -type "float2" -0.21346712 0 ;
	setAttr ".uvtk[255]" -type "float2" -0.15175933 0 ;
	setAttr ".uvtk[256]" -type "float2" -0.05188942 0 ;
	setAttr ".uvtk[257]" -type "float2" 0.065320373 0 ;
	setAttr ".uvtk[258]" -type "float2" -0.22898471 0 ;
	setAttr ".uvtk[259]" -type "float2" -0.1684401 0 ;
	setAttr ".uvtk[260]" -type "float2" -0.081401765 0 ;
	setAttr ".uvtk[261]" -type "float2" 0.046482682 0 ;
	setAttr ".uvtk[262]" -type "float2" -0.17048317 0 ;
	setAttr ".uvtk[263]" -type "float2" -0.11209315 0 ;
	setAttr ".uvtk[264]" -type "float2" 0.032790065 0 ;
	setAttr ".uvtk[265]" -type "float2" -0.22898471 0 ;
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
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cme" no;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".ovt" no;
	setAttr ".povt" no;
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr ":defaultColorMgtGlobals.cme" "side_planeShape.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "side_planeShape.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "side_planeShape.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "side_planeShape.ws";
connectAttr ":defaultColorMgtGlobals.cme" "bottom_planeShape.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "bottom_planeShape.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "bottom_planeShape.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "bottom_planeShape.ws";
connectAttr "polyTweakUV3.out" "pCubeShape1.i";
connectAttr "polyTweakUV3.uvtk[0]" "pCubeShape1.uvst[0].uvtw";
connectAttr ":defaultColorMgtGlobals.cme" "front_planeShape.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "front_planeShape.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "front_planeShape.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "front_planeShape.ws";
connectAttr ":sideShape.msg" "front_planeShape.ltc";
connectAttr ":defaultColorMgtGlobals.cme" "top_planeShape.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "top_planeShape.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "top_planeShape.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "top_planeShape.ws";
connectAttr ":perspShape.msg" "top_planeShape.ltc";
connectAttr ":defaultColorMgtGlobals.cme" "back_planeShape.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "back_planeShape.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "back_planeShape.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "back_planeShape.ws";
connectAttr ":perspShape.msg" "back_planeShape.ltc";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "checker1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "checker1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polySplitRing1.ip";
connectAttr "pCubeShape1.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "pCubeShape1.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "pCubeShape1.wm" "polySplitRing3.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polySplitRing3.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyDelEdge1.ip";
connectAttr "polyExtrudeFace6.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace7.mp";
connectAttr "polyDelEdge1.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyExtrudeFace8.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polyExtrudeFace9.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak10.ip";
connectAttr "polyExtrudeFace9.out" "polyTweak11.ip";
connectAttr "polyTweak11.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "polyCloseBorder1.ip";
connectAttr "polyTweak12.out" "polyExtrudeFace10.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace10.mp";
connectAttr "polyCloseBorder1.out" "polyTweak12.ip";
connectAttr "polyTweak13.out" "polyExtrudeFace11.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace10.out" "polyTweak13.ip";
connectAttr "polyExtrudeFace11.out" "polyExtrudeFace12.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace12.mp";
connectAttr "polyTweak14.out" "polyExtrudeFace13.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace12.out" "polyTweak14.ip";
connectAttr "polyExtrudeFace13.out" "polyExtrudeFace14.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace14.mp";
connectAttr "polyExtrudeFace14.out" "polyExtrudeFace15.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace15.mp";
connectAttr "polyExtrudeFace15.out" "polyExtrudeFace16.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace16.mp";
connectAttr "polyExtrudeFace16.out" "polyExtrudeFace17.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace17.mp";
connectAttr "polyExtrudeFace17.out" "polyExtrudeFace18.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace18.mp";
connectAttr "polyExtrudeFace18.out" "polyExtrudeFace19.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace19.mp";
connectAttr "polyExtrudeFace19.out" "polySplitRing4.ip";
connectAttr "pCubeShape1.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "pCubeShape1.wm" "polySplitRing5.mp";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "pCubeShape1.wm" "polySplitRing6.mp";
connectAttr "polyTweak15.out" "polySplitRing7.ip";
connectAttr "pCubeShape1.wm" "polySplitRing7.mp";
connectAttr "polySplitRing6.out" "polyTweak15.ip";
connectAttr "pCubeShape1_pnts_20__pntx.o" "polyTweak15.tk[20].tx";
connectAttr "pCubeShape1_pnts_20__pnty.o" "polyTweak15.tk[20].ty";
connectAttr "pCubeShape1_pnts_20__pntz.o" "polyTweak15.tk[20].tz";
connectAttr "polyTweak16.out" "polyMergeVert1.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert1.mp";
connectAttr "polySplitRing7.out" "polyTweak16.ip";
connectAttr "polyTweak17.out" "polySplitRing8.ip";
connectAttr "pCubeShape1.wm" "polySplitRing8.mp";
connectAttr "polyMergeVert1.out" "polyTweak17.ip";
connectAttr "polySplitRing8.out" "polySplitRing9.ip";
connectAttr "pCubeShape1.wm" "polySplitRing9.mp";
connectAttr "polySplitRing9.out" "polySplitRing10.ip";
connectAttr "pCubeShape1.wm" "polySplitRing10.mp";
connectAttr "polyTweak18.out" "polySplitRing11.ip";
connectAttr "pCubeShape1.wm" "polySplitRing11.mp";
connectAttr "polySplitRing10.out" "polyTweak18.ip";
connectAttr "polySplitRing11.out" "polySplitRing12.ip";
connectAttr "pCubeShape1.wm" "polySplitRing12.mp";
connectAttr "polyTweak19.out" "polyPlanarProj1.ip";
connectAttr "pCubeShape1.wm" "polyPlanarProj1.mp";
connectAttr "polySplitRing12.out" "polyTweak19.ip";
connectAttr "place2dTexture1.o" "checker1.uv";
connectAttr "place2dTexture1.ofs" "checker1.fs";
connectAttr "checker1.oc" "checker1Material.c";
connectAttr "checker1Material.oc" "checker1SG.ss";
connectAttr "pCubeShape1.iog" "checker1SG.dsm" -na;
connectAttr "checker1SG.msg" "materialInfo1.sg";
connectAttr "checker1Material.msg" "materialInfo1.m";
connectAttr "checker1.msg" "materialInfo1.t" -na;
connectAttr "checker1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "checker1Material.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "place2dTexture1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "checker1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "polyPlanarProj1.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyPlanarProj2.ip";
connectAttr "pCubeShape1.wm" "polyPlanarProj2.mp";
connectAttr "polyPlanarProj2.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyPlanarProj3.ip";
connectAttr "pCubeShape1.wm" "polyPlanarProj3.mp";
connectAttr "polyPlanarProj3.out" "polyTweakUV3.ip";
connectAttr "checker1SG.pa" ":renderPartition.st" -na;
connectAttr "checker1Material.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "checker1.msg" ":defaultTextureList1.tx" -na;
// End of checkpointB1.0002.ma
