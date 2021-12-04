//Maya ASCII 2022 scene
//Name: clock_check_1.ma
//Last modified: Mon, Nov 29, 2021 05:49:59 PM
//Codeset: 1252
requires maya "2022";
requires "stereoCamera" "10.0";
requires "mtoa" "4.2.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202102181415-29bfc1879c";
fileInfo "osv" "Windows 10 Enterprise v2009 (Build: 19043)";
fileInfo "UUID" "58923624-44CC-2CF6-392F-2EAAE96700C8";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "716505CA-4F43-937B-6022-F0877729A408";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.61038468654133915 0.66161691738912209 4.9016046081238045 ;
	setAttr ".r" -type "double3" -10.538352727926821 -374.99999999996754 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "AF7FA3EA-4220-BD29-0361-C8BBFCF87EC1";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 5.0928599053689254;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "4D13B833-4A85-5151-0312-7D9117393141";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "C8804B4B-4AFC-CB9A-AF3F-FA9B0E722782";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 3.893664121050588;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "14B52A8E-46A6-C7D8-4044-72AB547F8448";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.44495894811225745 0.35120979290931459 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "AAB32C5A-4517-266F-E0A1-70A7ACF03DD4";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 3.6947601730496875;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "7BC04D4B-404C-57CE-7543-FB93A90FE5A7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "30F7C31A-49BE-B19E-34BC-38A135FE1976";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 2.7705416946932884;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "imagePlane1";
	rename -uid "8615DD91-4CD3-AEE7-8054-B39784F28799";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.04003929270041634 0 0 ;
createNode imagePlane -n "imagePlaneShape1" -p "imagePlane1";
	rename -uid "0BF5BAED-491B-3C04-4AF8-67A5B58C727F";
	setAttr -k off ".v";
	setAttr ".fc" 101;
	setAttr ".imn" -type "string" "Z:/igme219/laurM_Proj/project/sourceimages/clock4.jpg";
	setAttr ".cov" -type "short2" 1000 1000 ;
	setAttr ".dlc" no;
	setAttr ".w" 2.25;
	setAttr ".h" 2.25;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "clock";
	rename -uid "93511C35-4BDF-E933-91B3-D8AAFD4C24BD";
	setAttr ".t" -type "double3" 0 -1.0840491722365893 0 ;
	setAttr ".s" -type "double3" 0.66162768789169724 -0.048968969921792865 0.49211976241363886 ;
createNode mesh -n "clockShape" -p "clock";
	rename -uid "3E67BDB2-40BA-46A3-0371-6DBD8654C89E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pendulum_arm";
	rename -uid "BB57AD39-46EB-1ACC-E314-51A3EB94CB03";
	setAttr ".t" -type "double3" 0.6160694193603854 0.13048179248371217 5.7245874707234634e-17 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.013274545489781119 0.37489747260047646 0.013274545489781119 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsSurface -n "pendulum_armShape" -p "pendulum_arm";
	rename -uid "4F7F9322-4E42-B6D9-FB02-D0A035A95E39";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "pendulum_weight" -p "pendulum_arm";
	rename -uid "68BE8E42-475E-9BA0-8922-6AB672743662";
	setAttr ".t" -type "double3" 0.022381858520972742 -1.0171903314269475 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 3.4727783259214231 0.19446986840033467 3.4727783259214231 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsSurface -n "pendulum_weightShape" -p "pendulum_weight";
	rename -uid "342AD2F6-49CD-1C53-D12B-F4917AA5B061";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode nurbsSurface -n "pendulum_weightShapeOrig" -p "pendulum_weight";
	rename -uid "D4030C98-4E80-7113-6098-C7B28FD5FD68";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode nurbsSurface -n "pendulum_armShapeOrig" -p "pendulum_arm";
	rename -uid "3A8F3B00-4721-F35B-DBC3-98AC5DC560BC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode joint -n "joint1";
	rename -uid "FCC8348F-4A35-4BB0-4D9A-91A744493418";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.014012903071776273 0.51779583348147928 -0.0022462109052627799 ;
	setAttr ".r" -type "double3" -1.5451369990919816e-08 3.8180474175360576e-06 2.9395576291333456e-08 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -80.908856164000213 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.15800544158294749 0 0.98743824132457914 0 0 1 0 0
		 -0.98743824132457914 0 0.15800544158294749 0 0.61465320153080105 0.50460858288560595 -0.0022462109052627799 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint2" -p "joint1";
	rename -uid "7B4E6C10-4EA9-A03B-2211-898B6C2F1EFA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.003055892849689228 -0.75511382293549678 -0.0058137063142700502 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 80.908856164000213 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.6208767251684868 -0.25050524004989083 -0.00014730267750910154 1;
	setAttr ".radi" 0.5;
createNode ikEffector -n "effector1" -p "joint1";
	rename -uid "855D42BC-4BE8-36B5-A71B-C0AA49BD1B16";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikHandle -n "ikHandle1";
	rename -uid "EC9F025D-4AFC-EC4E-2A5F-39B25F090072";
	setAttr ".t" -type "double3" 0.020236426849327992 -0.2373179894540175 -0.00014730309222915194 ;
	setAttr ".pv" -type "double3" -0.72940492609382035 -0.0056872100591465694 0.11671616797947255 ;
	setAttr ".roc" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "C25C7C10-4344-4A4A-5574-98A6A87EAC5A";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "A21343F7-4024-4F4B-F2D7-718F496D53CE";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "683D0E1F-4029-7CAD-296E-B8B3AFA4BA55";
createNode displayLayerManager -n "layerManager";
	rename -uid "1C34F720-4FFC-FD5E-F6FE-A195E5F1A0AD";
createNode displayLayer -n "defaultLayer";
	rename -uid "5B384A81-46CC-AC3F-B7DC-B6AB5B878EB4";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "3447C029-4F08-D50D-360C-978469ABB011";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "2E24C218-4B04-FC4B-60F5-87B2B4179275";
	setAttr ".g" yes;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "0B96C6C3-4748-1B7F-6A5A-D780EF39ECC7";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -766.66663620207169 -85.714282308306167 ;
	setAttr ".tgi[0].vh" -type "double2" 776.19044534743921 85.714282308306167 ;
	setAttr -s 2 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -101.42857360839844;
	setAttr ".tgi[0].ni[0].y" -31.428571701049805;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" -101.42857360839844;
	setAttr ".tgi[0].ni[1].y" 98.571426391601562;
	setAttr ".tgi[0].ni[1].nvs" 18304;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "A342F7B1-4210-3681-69A0-2795D6DDC651";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 332\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 332\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 332\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1319\n            -height 708\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n"
		+ "                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n"
		+ "\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 708\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 708\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "F99F02B0-44A7-A8FA-D375-46B6BBB5E107";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyCube -n "polyCube1";
	rename -uid "CB8E0939-476C-66A9-DB11-63820EE01E21";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "911C006A-41CA-F829-228C-C0A2A999D0CD";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -1.0595647 0 ;
	setAttr ".rs" 42032;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.33081384394584862 -1.0595646872756928 -0.24605988120681943 ;
	setAttr ".cbx" -type "double3" 0.33081384394584862 -1.0595646872756928 0.24605988120681943 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "6EAEA2D0-4823-2DBF-B5C3-3A8CBAE67DE1";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -1.0204716 0 ;
	setAttr ".rs" 33132;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.3057222021427235 -1.0204715780371374 -0.22739667676616226 ;
	setAttr ".cbx" -type "double3" 0.3057222021427235 -1.0204715780371374 0.22739667676616226 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "0997C939-4860-CCEC-AA0A-4599D9D62A00";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0.037924107 -0.79832405 0.037924092
		 -0.037924107 -0.79832405 0.037924092 -0.037924107 -0.79832405 -0.037924092 0.037924107
		 -0.79832405 -0.037924092;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "FD55D53F-42C3-1658-2D54-F8BBB0F8BC72";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -1.0041828 0 ;
	setAttr ".rs" 44359;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.27958256614366761 -1.0041827591708481 -0.20795397251896622 ;
	setAttr ".cbx" -type "double3" 0.27958256614366761 -1.0041827591708481 0.20795397251896622 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "4BB55352-4D52-9EF3-50F1-9B99C1B07F3D";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[12:15]" -type "float3"  0.039508067 -0.33263502 0.039508056
		 -0.039508067 -0.33263502 0.039508056 -0.039508067 -0.33263502 -0.039508056 0.039508067
		 -0.33263502 -0.039508056;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "4DFE82EB-4FB7-EFE7-BEBC-14AE735DA11A";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.96671849 0 ;
	setAttr ".rs" 41827;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.27958258586170925 -0.9667184973773405 -0.20795395785265441 ;
	setAttr ".cbx" -type "double3" 0.27958258586170925 -0.9667184973773405 0.20795395785265441 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "78FCC3C9-45E3-3A14-A3E5-7F991BD12FA2";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[16:19]" -type "float3"  0 -0.76506054 0 0 -0.76506054
		 0 0 -0.76506054 0 0 -0.76506054 0;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "5EA2ACEF-4D07-15A0-F6CF-05967D09B58E";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.96671849 0 ;
	setAttr ".rs" 43253;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.26651277772120213 -0.9667184973773405 -0.19823259839590049 ;
	setAttr ".cbx" -type "double3" 0.26651277772120213 -0.9667184973773405 0.19823259839590049 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "E0B69AC0-4107-0F75-F5F2-F6A4DA3D57AD";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[20:23]" -type "float3"  0.019754035 0 0.01975403 -0.019754035
		 0 0.01975403 -0.019754035 0 -0.01975403 0.019754035 0 -0.01975403;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "1C38E35E-4C5E-29C3-4B61-B793E68B803B";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.51063251 0 ;
	setAttr ".rs" 61617;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.26651277772120213 -0.51063252648044466 -0.19823258372958866 ;
	setAttr ".cbx" -type "double3" 0.26651277772120213 -0.51063252648044466 0.19823258372958866 ;
createNode polyTweak -n "polyTweak5";
	rename -uid "72ABB998-4596-399F-11D1-19BBD7AEB9EB";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[24:27]" -type "float3"  0 -9.31377506 0 0 -9.31377506
		 0 0 -9.31377506 0 0 -9.31377506 0;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "6C33004C-4E35-4248-B11D-B580ECC785AA";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.51063251 0 ;
	setAttr ".rs" 60596;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.28481052883595376 -0.51063252648044466 -0.21184245176989583 ;
	setAttr ".cbx" -type "double3" 0.28481052883595376 -0.51063252648044466 0.21184245176989583 ;
createNode polyTweak -n "polyTweak6";
	rename -uid "294706CD-4160-954C-E3EF-8586E64A38EA";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[28:31]" -type "float3"  -0.027655648 0 -0.027655637
		 0.027655648 0 -0.027655637 0.027655648 0 0.027655637 -0.027655648 0 0.027655637;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "6BB2F132-4B61-7154-99B0-0C886BC12C34";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.47642609 0 ;
	setAttr ".rs" 38599;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.27435470204158968 -0.47642608216571125 -0.20406536127123032 ;
	setAttr ".cbx" -type "double3" 0.27435470204158968 -0.47642608216571125 0.20406536127123032 ;
createNode polyTweak -n "polyTweak7";
	rename -uid "A6976959-4184-B5AE-BE22-EDA912534547";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[32:35]" -type "float3"  0.015803231 -0.69853354 0.01580322
		 -0.015803231 -0.69853354 0.01580322 -0.015803231 -0.69853354 -0.01580322 0.015803231
		 -0.69853354 -0.01580322;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "A0D1193E-4412-4E45-3FDB-B581DF86E05D";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.47642609 0 ;
	setAttr ".rs" 42866;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.26651281715728542 -0.47642608216571125 -0.19823253973065322 ;
	setAttr ".cbx" -type "double3" 0.26651281715728542 -0.47642608216571125 0.19823253973065322 ;
createNode polyTweak -n "polyTweak8";
	rename -uid "5E802232-41EF-CA65-44F9-7586F4C04E78";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[36:39]" -type "float3"  0.011852423 0 0.011852414
		 -0.011852423 0 0.011852414 -0.011852423 0 -0.011852414 0.011852423 0 -0.011852414;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "E3CE14CC-4163-4D81-443E-D0AD497BC6FC";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.46176615 0 ;
	setAttr ".rs" 35576;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.26651281715728542 -0.46176615744491878 -0.19823252506434141 ;
	setAttr ".cbx" -type "double3" 0.26651281715728542 -0.46176615744491878 0.19823252506434141 ;
createNode polyTweak -n "polyTweak9";
	rename -uid "7BCC7C45-49B7-D8FE-4B22-E6A9A2B137B6";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[40:43]" -type "float3"  0 -0.29937151 0 0 -0.29937151
		 0 0 -0.29937151 0 0 -0.29937151 0;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "9A9BCEF9-498A-0D26-8D5D-3ABE9D828E94";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.46176615 0 ;
	setAttr ".rs" 48339;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.24560110441443236 -0.46176615744491878 -0.18267835873332222 ;
	setAttr ".cbx" -type "double3" 0.24560110441443236 -0.46176615744491878 0.18267835873332222 ;
createNode polyTweak -n "polyTweak10";
	rename -uid "9EA745C7-46E4-991A-327C-8D818551B7CF";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[44:47]" -type "float3"  0.031606462 0 0.031606436
		 -0.031606462 0 0.031606436 -0.031606462 0 -0.031606436 0.031606462 0 -0.031606436;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	rename -uid "41EEC19D-4D87-6748-6EF1-8EBF4ADE3F59";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.44710624 0 ;
	setAttr ".rs" 52290;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.24560112413247401 -0.44710623272412631 -0.18267834406701039 ;
	setAttr ".cbx" -type "double3" 0.24560112413247401 -0.44710623272412631 0.18267834406701039 ;
createNode polyTweak -n "polyTweak11";
	rename -uid "BB8D7950-40C2-5117-49DC-57861CEEB0D8";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[48:51]" -type "float3"  0 -0.29937151 0 0 -0.29937151
		 0 0 -0.29937151 0 0 -0.29937151 0;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	rename -uid "C1970513-44D3-FC8F-AF2D-3FAFC13505C8";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.4145287 0 ;
	setAttr ".rs" 55633;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.21292659392218535 -0.41452870006755782 -0.1583749747577492 ;
	setAttr ".cbx" -type "double3" 0.21292659392218535 -0.41452870006755782 0.1583749747577492 ;
createNode polyTweak -n "polyTweak12";
	rename -uid "207218CD-4EA3-FDC4-8FB8-E3B3AD7D448C";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[52:55]" -type "float3"  0.049385101 -0.66527003 0.049385052
		 -0.049385101 -0.66527003 0.049385052 -0.049385101 -0.66527003 -0.049385052 0.049385101
		 -0.66527003 -0.049385052;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	rename -uid "7D61565A-4DB6-1AD7-B2EF-AFB9CCE15749";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.35593125 0 ;
	setAttr ".rs" 49564;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.21292659392218535 0.35593124319774239 -0.1583749747577492 ;
	setAttr ".cbx" -type "double3" 0.21292659392218535 0.35593124319774239 0.1583749747577492 ;
createNode polyTweak -n "polyTweak13";
	rename -uid "E69EFCDF-475C-D09C-5131-F5A892E11448";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[56:59]" -type "float3"  0 -15.7336359 0 0 -15.7336359
		 0 0 -15.7336359 0 0 -15.7336359 0;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	rename -uid "12E1024C-4BDC-2BC6-D3C7-6A8912EF97E0";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.37059107 0 ;
	setAttr ".rs" 59911;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.24821510547861708 0.37059107451763706 -0.18462259835878703 ;
	setAttr ".cbx" -type "double3" 0.24821510547861708 0.37059107451763706 0.18462259835878703 ;
createNode polyTweak -n "polyTweak14";
	rename -uid "86860435-40A0-4024-609E-AEBB240DC072";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[60:63]" -type "float3"  -0.053335898 -0.29937151 -0.053335853
		 0.053335898 -0.29937151 -0.053335853 0.053335898 -0.29937151 0.053335853 -0.053335898
		 -0.29937151 0.053335853;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	rename -uid "9CF531F5-4350-407C-2827-F2B00CE16688";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.38525099 0 ;
	setAttr ".rs" 35209;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.2612849333371659 0.38525099923842943 -0.19434392848291732 ;
	setAttr ".cbx" -type "double3" 0.2612849333371659 0.38525099923842943 0.19434392848291732 ;
createNode polyTweak -n "polyTweak15";
	rename -uid "1245DE28-4AB5-C062-A983-F4AFC776E461";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[64:67]" -type "float3"  -0.019754041 -0.29937148 -0.019754019
		 0.019754041 -0.29937148 -0.019754019 0.019754041 -0.29937148 0.019754019 -0.019754041
		 -0.29937148 0.019754019;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	rename -uid "0EE686AE-4286-70B8-0AEA-4C851438FC03";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.39828202 0 ;
	setAttr ".rs" 44966;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.26128495305520755 0.39828201230105686 -0.19434391381660551 ;
	setAttr ".cbx" -type "double3" 0.26128495305520755 0.39828201230105686 0.19434391381660551 ;
createNode polyTweak -n "polyTweak16";
	rename -uid "BAC60A88-491B-8D64-7AED-A0836184699C";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[68:71]" -type "float3"  0 -0.26610801 0 0 -0.26610801
		 0 0 -0.26610801 0 0 -0.26610801 0;
createNode polyExtrudeFace -n "polyExtrudeFace18";
	rename -uid "D5B1FF47-4D43-44A7-A60E-5584F805557B";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.39828193 0 ;
	setAttr ".rs" 56650;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.27566175186878622 0.39828191890015896 -0.20503737108662412 ;
	setAttr ".cbx" -type "double3" 0.27566175186878622 0.39828191890015896 0.20503737108662412 ;
createNode polyTweak -n "polyTweak17";
	rename -uid "6781DC5E-4664-505F-5F74-6DBF78EE084B";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[72:75]" -type "float3"  -0.021729447 0 -0.021729419
		 0.021729447 0 -0.021729419 0.021729447 0 0.021729419 -0.021729447 0 0.021729419;
createNode polyExtrudeFace -n "polyExtrudeFace19";
	rename -uid "ED7575B0-4DB1-F413-0558-4EA11A35E7D3";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.42108622 0 ;
	setAttr ".rs" 60222;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.28350365647113213 0.42108621510998145 -0.21087016329457758 ;
	setAttr ".cbx" -type "double3" 0.28350365647113213 0.42108621510998145 0.21087016329457758 ;
createNode polyTweak -n "polyTweak18";
	rename -uid "FD6AB8E0-451B-14F2-5C5C-6FAD675AE3E7";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[76:79]" -type "float3"  -0.011852426 -0.465689 -0.011852408
		 0.011852426 -0.465689 -0.011852408 0.011852426 -0.465689 0.011852408 -0.011852426
		 -0.465689 0.011852408;
createNode polyExtrudeFace -n "polyExtrudeFace20";
	rename -uid "B95C23F4-4DF5-3EF2-2C0A-F7883BE81A89";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.42108622 0 ;
	setAttr ".rs" 34671;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.26128495305520755 0.42108621510998145 -0.19434386981767007 ;
	setAttr ".cbx" -type "double3" 0.26128495305520755 0.42108621510998145 0.19434386981767007 ;
createNode polyTweak -n "polyTweak19";
	rename -uid "3118445C-4C9A-A0F5-2209-32884A299586";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[80:83]" -type "float3"  0.033581875 0 0.033581831
		 -0.033581875 0 0.033581831 -0.033581875 0 -0.033581831 0.033581875 0 -0.033581831;
createNode polyExtrudeFace -n "polyExtrudeFace21";
	rename -uid "D2146799-4025-C2AB-8EF1-3E94CCECD90A";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.82179052 0 ;
	setAttr ".rs" 56940;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.26128495305520755 0.82179054394228213 -0.19434385515135824 ;
	setAttr ".cbx" -type "double3" 0.26128495305520755 0.82179054394228213 0.19434385515135824 ;
createNode polyTweak -n "polyTweak20";
	rename -uid "3D3FE2BB-41F4-1A44-C159-159AC2E49C4A";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[84:87]" -type "float3"  0 -8.18282318 0 0 -8.18282318
		 0 0 -8.18282318 0 0 -8.18282318 0;
createNode polyExtrudeFace -n "polyExtrudeFace22";
	rename -uid "FCDD92E3-44A6-FF5D-DD93-64B9255EEEEB";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.82179052 0 ;
	setAttr ".rs" 40784;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.33386410668165406 0.82179054394228213 -0.19434385515135824 ;
	setAttr ".cbx" -type "double3" 0.33386410668165406 0.82179054394228213 0.19434385515135824 ;
createNode polyTweak -n "polyTweak21";
	rename -uid "EB1D870E-4B21-1971-5017-FC9731906E76";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[88:91]" -type "float3"  -0.10969788 -1.6689301e-06
		 -4.4703484e-08 0.10969788 -1.6689301e-06 -4.4703484e-08 0.10969788 -1.6689301e-06
		 4.4703484e-08 -0.10969788 -1.6689301e-06 4.4703484e-08;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "34B22DCB-481A-0211-02B5-2584CCA71AC4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 45 "e[0:3]" "e[14]" "e[18]" "e[22]" "e[26]" "e[30]" "e[34]" "e[38]" "e[42]" "e[46]" "e[50]" "e[54]" "e[58]" "e[62]" "e[66]" "e[70]" "e[74]" "e[78]" "e[82]" "e[86]" "e[90]" "e[94]" "e[98]" "e[102]" "e[106]" "e[110]" "e[114]" "e[118]" "e[122]" "e[126]" "e[130]" "e[134]" "e[138]" "e[142]" "e[146]" "e[150]" "e[154]" "e[158]" "e[162]" "e[166]" "e[170]" "e[174]" "e[178]" "e[182]" "e[186]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".wt" 0.50656133890151978;
	setAttr ".dr" no;
	setAttr ".re" 106;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak22";
	rename -uid "236D77C8-4EB7-0316-1A1F-0F8258D2BE42";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[54]" -type "float3" 0 0 2.0861626e-07 ;
	setAttr ".tk[55]" -type "float3" 0 0 2.0861626e-07 ;
	setAttr ".tk[58]" -type "float3" 0 0 2.0861626e-07 ;
	setAttr ".tk[59]" -type "float3" 0 0 2.0861626e-07 ;
	setAttr ".tk[88]" -type "float3" 0 -0.78686112 0.18192405 ;
	setAttr ".tk[89]" -type "float3" 0 -0.78686112 0.18192405 ;
	setAttr ".tk[90]" -type "float3" 0 -0.78686112 -0.18192405 ;
	setAttr ".tk[91]" -type "float3" 0 -0.78686112 -0.18192405 ;
	setAttr ".tk[92]" -type "float3" 0 -5.5521388 0.18192405 ;
	setAttr ".tk[93]" -type "float3" 0 -5.5521388 0.18192405 ;
	setAttr ".tk[94]" -type "float3" 0 -5.5521388 -0.18192405 ;
	setAttr ".tk[95]" -type "float3" 0 -5.5521388 -0.18192405 ;
createNode polySplit -n "polySplit1";
	rename -uid "5D466470-4A3B-0C79-B8C5-C2B3BD9A53BB";
	setAttr -s 5 ".e[0:4]"  1 0.799986 0.2 0.80000001 0;
	setAttr -s 5 ".d[0:4]"  -2147483540 -2147483535 -2147483365 -2147483537 -2147483536;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "736FD567-4234-718B-22C5-3C95594F84D4";
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "A0FDFB6E-4C4F-1494-82AD-64BD685003EF";
	setAttr ".ics" -type "componentList" 48 "e[190]" "e[192]" "e[194]" "e[196]" "e[198]" "e[200]" "e[202]" "e[204]" "e[206]" "e[208]" "e[210]" "e[212]" "e[214]" "e[216]" "e[218]" "e[220]" "e[222]" "e[224]" "e[226]" "e[228]" "e[230]" "e[232]" "e[234]" "e[236]" "e[238]" "e[240]" "e[242]" "e[244]" "e[246]" "e[248]" "e[250]" "e[252]" "e[254]" "e[256]" "e[258]" "e[260]" "e[262]" "e[264]" "e[266]" "e[268]" "e[270]" "e[272]" "e[274]" "e[276]" "e[278]" "e[280]" "e[282:283]" "e[285]";
	setAttr ".cv" yes;
createNode polyExtrudeFace -n "polyExtrudeFace23";
	rename -uid "D213AC8B-4F97-3F6A-2143-8A965321E441";
	setAttr ".ics" -type "componentList" 1 "f[56]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.10634475 0.15837508 ;
	setAttr ".rs" 55591;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.21292659392218535 -0.41452870006755782 0.15837507742193188 ;
	setAttr ".cbx" -type "double3" 0.21292659392218535 0.20183918916405386 0.15837507742193188 ;
createNode polyTweak -n "polyTweak23";
	rename -uid "205538E3-40F8-990C-E948-5CA2DC4E9F4F";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[98:101]" -type "float3"  0.078718193 -1.2121321 0 -0.078718193
		 -1.2121321 0 0.078718193 0.31900012 0 -0.078718193 0.31902701 0;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "4A6E46A4-4ACD-DD22-057D-9AA27CA55A48";
	setAttr ".dc" -type "componentList" 1 "f[56]";
createNode polyCloseBorder -n "polyCloseBorder1";
	rename -uid "7B5D8C57-46EF-FC9F-25C0-DA9F52FAC638";
	setAttr ".ics" -type "componentList" 7 "e[81:82]" "e[84]" "e[86:89]" "e[91]" "e[168]" "e[187:190]" "e[192]";
createNode polyCloseBorder -n "polyCloseBorder2";
	rename -uid "974F50A7-48B6-3CD8-94B5-0E932F4D2A77";
	setAttr ".ics" -type "componentList" 7 "e[81:82]" "e[84]" "e[86:89]" "e[91]" "e[168]" "e[187:190]" "e[192]";
createNode polyCloseBorder -n "polyCloseBorder3";
	rename -uid "960266F9-400D-D433-2B3B-D383035EFAC3";
	setAttr ".ics" -type "componentList" 4 "e[84]" "e[86]" "e[168]" "e[187]";
createNode polyCloseBorder -n "polyCloseBorder4";
	rename -uid "97237C19-4897-4C72-0D09-A5A83A7BABCE";
	setAttr ".ics" -type "componentList" 2 "e[84]" "e[86]";
createNode polyCloseBorder -n "polyCloseBorder5";
	rename -uid "020D7917-4640-8ADE-F8F1-F09FF37937E8";
	setAttr ".ics" -type "componentList" 4 "e[123:131]" "e[133]" "e[175]" "e[180]";
createNode polyCloseBorder -n "polyCloseBorder6";
	rename -uid "550215FB-4A75-435C-00FF-5F8C6D128231";
	setAttr ".ics" -type "componentList" 4 "e[126]" "e[128]" "e[175]" "e[180]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "3CDDFDB7-4DC3-2E3A-F9CC-E4A0A5BBB82B";
	setAttr ".dc" -type "componentList" 4 "f[3]" "f[85]" "f[87]" "f[89:92]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "E450F084-4A13-C9AE-8BB2-3FB56DFF4B4F";
	setAttr ".dc" -type "componentList" 1 "f[85]";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "D31F769C-4534-977D-DD35-9DA3F01F4C75";
	setAttr ".dc" -type "componentList" 1 "f[84]";
createNode polyCloseBorder -n "polyCloseBorder7";
	rename -uid "DEE37F47-4B7E-2F1A-C969-C99C2C600D87";
	setAttr ".ics" -type "componentList" 4 "e[120]" "e[122]" "e[162]" "e[165]";
createNode makeNurbCylinder -n "makeNurbCylinder1";
	rename -uid "CACB40BE-4995-0BE0-BCB8-179BEC6C18A9";
	setAttr ".ax" -type "double3" 0 1 0 ;
createNode makeNurbSphere -n "makeNurbSphere1";
	rename -uid "DDFD3F9A-4B06-5211-4F35-D4B6B8584487";
	setAttr ".ax" -type "double3" 0 1 0 ;
createNode skinCluster -n "skinCluster1";
	rename -uid "00410E05-40AA-2514-E6E9-AA963D9A4453";
	setAttr -s 32 ".wl";
	setAttr ".wl[0:7].w"
		2 0 0.38281873394089261 1 0.61718126605910739
		2 0 0.3495328338544883 1 0.6504671661455117
		2 0 0.38947484148349426 1 0.61052515851650568
		2 0 0.42974076592006144 1 0.5702592340799385
		2 0 0.44709573168093286 1 0.55290426831906714
		2 0 0.45111264066739681 1 0.54888735933260313
		2 0 0.4451260331382606 1 0.5548739668617394
		2 0 0.42527715326660159 1 0.57472284673339846;
	setAttr ".wl[11:18].w"
		2 0 5.2455043184173533e-06 1 0.99999475449568154
		2 0 4.8825670491616959e-06 1 0.99999511743295089
		2 0 8.0317310355412749e-06 1 0.99999196826896453
		2 0 1.4403506790880163e-05 1 0.99998559649320917
		2 0 2.050912338230993e-05 1 0.99997949087661764
		2 0 2.122772036962768e-05 1 0.99997877227963039
		2 0 1.5892122750949833e-05 1 0.99998410787724901
		2 0 9.1647061626319779e-06 1 0.99999083529383737;
	setAttr ".wl[22:29].w"
		2 0 4.5962990361280093e-07 1 0.99999954037009642
		2 0 6.1275626914970964e-07 1 0.99999938724373083
		2 0 8.6544754445355205e-07 1 0.99999913455245559
		2 0 1.0690891813717834e-06 1 0.9999989309108186
		2 0 1.0672092025271298e-06 1 0.99999893279079743
		2 0 8.6156247390253104e-07 1 0.99999913843752619
		2 0 6.0972051754303161e-07 1 0.99999939027948248
		2 0 4.5859924197836704e-07 1 0.99999954140075797;
	setAttr ".wl[33:40].w"
		2 0 1.3092039392254901e-07 1 0.99999986907960614
		2 0 2.162096951954891e-07 1 0.99999978379030485
		2 0 2.7600387670285573e-07 1 0.99999972399612325
		2 0 2.5764372955783154e-07 1 0.99999974235627043
		2 0 1.7817284859305707e-07 1 0.99999982182715141
		2 0 1.0175968271569335e-07 1 0.99999989824031732
		2 0 6.6889409086526797e-08 1 0.99999993311059099
		2 0 7.6373419774943591e-08 1 0.9999999236265803;
	setAttr -s 2 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.6208767251684868 0.25050524004989083 0.00014730267750910154 1;
	setAttr ".pm[1]" -type "matrix" 0.15800544158294749 0 -0.98743824132457914 0 0 1 0 0
		 0.98743824132457914 0 0.15800544158294749 0 -0.09490055598230987 -0.50460858288560595 0.60728698989007079 1;
	setAttr ".gm" -type "matrix" 0.013274545489781119 0 0 0 0 0.37489747260047646 0 0
		 0 0 0.013274545489781119 0 0.6160694193603854 0.13048179248371217 5.7245874707234634e-17 1;
	setAttr -s 2 ".ma";
	setAttr -s 2 ".dpf[0:1]"  4 4;
	setAttr -s 2 ".lw";
	setAttr -s 2 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 2 ".ifcl";
	setAttr -s 2 ".ifcl";
createNode dagPose -n "bindPose1";
	rename -uid "534CAE2F-46D2-88A3-720C-0E89498B657C";
	setAttr -s 2 ".wm";
	setAttr -s 2 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.61465320153080105 0.50460858288560595
		 -0.0022462109052627799 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -0.64884303125526921 0 0.76092228301678333 1
		 1 1 no;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.0030558928496892401
		 -0.75511382293549678 -0.0058137063142700285 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.64884303125526921 0 0.76092228301678333 1 1 1 no;
	setAttr -s 2 ".m";
	setAttr -s 2 ".p";
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster2";
	rename -uid "BDBA38E6-469E-FDB5-FACE-C291800791E2";
	setAttr -s 56 ".wl";
	setAttr ".wl[0:7].w"
		2 0 0.5 1 0.5
		2 0 0.5 1 0.5
		2 0 0.5 1 0.5
		2 0 0.5 1 0.5
		2 0 0.5 1 0.5
		2 0 0.5 1 0.5
		2 0 0.5 1 0.5
		2 0 0.5 1 0.5;
	setAttr ".wl[11:18].w"
		2 0 0.5 1 0.5
		2 0 0.5 1 0.5
		2 0 0.5 1 0.5
		2 0 0.5 1 0.5
		2 0 0.5 1 0.5
		2 0 0.5 1 0.5
		2 0 0.5 1 0.5
		2 0 0.5 1 0.5;
	setAttr ".wl[22:29].w"
		2 0 0.5 1 0.5
		2 0 0.5 1 0.5
		2 0 0.5 1 0.5
		2 0 0.5 1 0.5
		2 0 0.5 1 0.5
		2 0 0.5 1 0.5
		2 0 0.5 1 0.5
		2 0 0.5 1 0.5;
	setAttr ".wl[33:40].w"
		2 0 0.5 1 0.5
		2 0 0.5 1 0.5
		2 0 0.5 1 0.5
		2 0 0.5 1 0.5
		2 0 0.5 1 0.5
		2 0 0.49999707430909568 1 0.50000292569090432
		2 0 0.49999790205515521 1 0.50000209794484474
		2 0 0.5 1 0.5;
	setAttr ".wl[44:51].w"
		2 0 0.083247306151801898 1 0.91675269384819813
		2 0 0.077858549345761363 1 0.92214145065423869
		2 0 0.086518779582144364 1 0.91348122041785573
		2 0 0.1036196829326817 1 0.89638031706731836
		2 0 0.11850123816035502 1 0.88149876183964504
		2 0 0.12309558494265645 1 0.87690441505734362
		2 0 0.11532009229806864 1 0.88467990770193128
		2 0 0.09903088222452501 1 0.90096911777547495;
	setAttr ".wl[55:62].w"
		2 0 0.00039534517782228827 1 0.99960465482217775
		2 0 0.00024368834463305876 1 0.99975631165536694
		2 0 0.00049527605053184532 1 0.99950472394946821
		2 0 0.0012670563282038206 1 0.99873294367179621
		2 0 0.0022630915104580951 1 0.99773690848954188
		2 0 0.0026512944144964691 1 0.99734870558550348
		2 0 0.0020520547469591974 1 0.99794794525304087
		2 0 0.0010441085795403161 1 0.99895589142045971;
	setAttr ".wl[66:73].w"
		2 0 8.5230476492237064e-06 1 0.9999914769523508
		2 0 8.5230476492237064e-06 1 0.9999914769523508
		2 0 8.5230476492237064e-06 1 0.9999914769523508
		2 0 8.5230476492237064e-06 1 0.9999914769523508
		2 0 8.5230476492237064e-06 1 0.9999914769523508
		2 0 8.5230476492237064e-06 1 0.9999914769523508
		2 0 8.5230476492237064e-06 1 0.9999914769523508
		2 0 8.5230476492237064e-06 1 0.9999914769523508;
	setAttr -s 2 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.6208767251684868 0.25050524004989083 0.00014730267750910154 1;
	setAttr ".pm[1]" -type "matrix" 0.15800544158294749 0 -0.98743824132457914 0 0 1 0 0
		 0.98743824132457914 0 0.15800544158294749 0 -0.09490055598230987 -0.50460858288560595 0.60728698989007079 1;
	setAttr ".gm" -type "matrix" 0.046099553863369849 0 0 0 0 0.072906262160232729 0 0
		 0 0 0.046099553863369849 0 0.61636652835946792 -0.25086029192189147 5.7245874707234634e-17 1;
	setAttr -s 2 ".ma";
	setAttr -s 2 ".dpf[0:1]"  4 4;
	setAttr -s 2 ".lw";
	setAttr -s 2 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 2 ".ifcl";
	setAttr -s 2 ".ifcl";
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "D3FC0AD3-4864-D190-1677-DAA7FC4ACDC2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[126]" "e[128]" "e[163:164]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.82179052 0 ;
	setAttr ".rs" 63965;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.26128495305520755 0.82179054394228213 -0.19434381115242283 ;
	setAttr ".cbx" -type "double3" 0.26128495305520755 0.82179054394228213 0.19434381115242283 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	rename -uid "775C5A14-49B4-8693-BC18-1F889A3EC2FF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[187]" "e[190:192]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.90782136 0 ;
	setAttr ".rs" 44580;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.14001863209211796 0.90782136372683575 -0.10414593483841075 ;
	setAttr ".cbx" -type "double3" 0.14001863209211796 0.90782136372683575 0.10414593483841075 ;
createNode polyTweak -n "polyTweak24";
	rename -uid "948C6791-4818-A65D-43EF-BBA3A7F612E3";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[56]" -type "float3" 0 9.5367432e-07 0 ;
	setAttr ".tk[57]" -type "float3" 2.9802322e-08 0 0 ;
	setAttr ".tk[58]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".tk[59]" -type "float3" -2.9802322e-08 1.0658141e-14 0 ;
	setAttr ".tk[94]" -type "float3" -0.18328483 -1.7568434 0.18328437 ;
	setAttr ".tk[95]" -type "float3" -0.18328483 -1.7568434 -0.18328437 ;
	setAttr ".tk[96]" -type "float3" 0.18328483 -1.7568434 0.18328437 ;
	setAttr ".tk[97]" -type "float3" 0.18328483 -1.7568434 -0.18328437 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge3";
	rename -uid "C65B8BE4-41A2-925E-6D78-E2A57D44EA44";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[195]" "e[198:200]";
	setAttr ".ix" -type "matrix" 0.66162768789169724 0 0 0 0 -0.048968969921792865 0 0
		 0 0 0.49211976241363886 0 0 -1.0840491722365893 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.93131226 0 ;
	setAttr ".rs" 49083;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.14001864195113878 0.93131224993661066 -0.10414592750525484 ;
	setAttr ".cbx" -type "double3" 0.14001864195113878 0.93131224993661066 0.10414592750525484 ;
createNode polyTweak -n "polyTweak25";
	rename -uid "E61D3B07-4B26-4868-BA12-93B234F321EC";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[98:101]" -type "float3"  0 -0.47970986 0 0 -0.47970986
		 0 0 -0.47970986 0 0 -0.47970986 0;
createNode polyCloseBorder -n "polyCloseBorder8";
	rename -uid "F31EDB50-4170-57B8-6DC5-30B307721645";
	setAttr ".ics" -type "componentList" 2 "e[203]" "e[206:208]";
createNode polyTweak -n "polyTweak26";
	rename -uid "4EB2DF65-4455-0294-2B34-64BBFF2C667A";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[102:105]" -type "float3"  0.040244535 -0.47694388 -0.040244475
		 0.040244535 -0.47694388 0.040244475 -0.040244535 -0.47694388 -0.040244475 -0.040244535
		 -0.47694388 0.040244475;
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
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 3 ".dsm";
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
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".wsn" -type "string" "ACEScg";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape1.ws";
connectAttr ":perspShape.msg" "imagePlaneShape1.ltc";
connectAttr "polyCloseBorder8.out" "clockShape.i";
connectAttr "skinCluster1.og[0]" "pendulum_armShape.cr";
connectAttr "skinCluster2.og[0]" "pendulum_weightShape.cr";
connectAttr "makeNurbSphere1.os" "pendulum_weightShapeOrig.cr";
connectAttr "makeNurbCylinder1.os" "pendulum_armShapeOrig.cr";
connectAttr "joint1.s" "joint2.is";
connectAttr "joint2.tx" "effector1.tx";
connectAttr "joint2.ty" "effector1.ty";
connectAttr "joint2.tz" "effector1.tz";
connectAttr "joint2.opm" "effector1.opm";
connectAttr "joint1.msg" "ikHandle1.hsj";
connectAttr "effector1.hp" "ikHandle1.hee";
connectAttr "ikRPsolver.msg" "ikHandle1.hsv";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "imagePlaneShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "imagePlane1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "polyCube1.out" "polyExtrudeFace1.ip";
connectAttr "clockShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace2.ip";
connectAttr "clockShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace3.ip";
connectAttr "clockShape.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace4.ip";
connectAttr "clockShape.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace5.ip";
connectAttr "clockShape.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyExtrudeFace6.ip";
connectAttr "clockShape.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyExtrudeFace7.ip";
connectAttr "clockShape.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyExtrudeFace8.ip";
connectAttr "clockShape.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyExtrudeFace9.ip";
connectAttr "clockShape.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyExtrudeFace10.ip";
connectAttr "clockShape.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polyExtrudeFace11.ip";
connectAttr "clockShape.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace10.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polyExtrudeFace12.ip";
connectAttr "clockShape.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace11.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polyExtrudeFace13.ip";
connectAttr "clockShape.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace12.out" "polyTweak12.ip";
connectAttr "polyTweak13.out" "polyExtrudeFace14.ip";
connectAttr "clockShape.wm" "polyExtrudeFace14.mp";
connectAttr "polyExtrudeFace13.out" "polyTweak13.ip";
connectAttr "polyTweak14.out" "polyExtrudeFace15.ip";
connectAttr "clockShape.wm" "polyExtrudeFace15.mp";
connectAttr "polyExtrudeFace14.out" "polyTweak14.ip";
connectAttr "polyTweak15.out" "polyExtrudeFace16.ip";
connectAttr "clockShape.wm" "polyExtrudeFace16.mp";
connectAttr "polyExtrudeFace15.out" "polyTweak15.ip";
connectAttr "polyTweak16.out" "polyExtrudeFace17.ip";
connectAttr "clockShape.wm" "polyExtrudeFace17.mp";
connectAttr "polyExtrudeFace16.out" "polyTweak16.ip";
connectAttr "polyTweak17.out" "polyExtrudeFace18.ip";
connectAttr "clockShape.wm" "polyExtrudeFace18.mp";
connectAttr "polyExtrudeFace17.out" "polyTweak17.ip";
connectAttr "polyTweak18.out" "polyExtrudeFace19.ip";
connectAttr "clockShape.wm" "polyExtrudeFace19.mp";
connectAttr "polyExtrudeFace18.out" "polyTweak18.ip";
connectAttr "polyTweak19.out" "polyExtrudeFace20.ip";
connectAttr "clockShape.wm" "polyExtrudeFace20.mp";
connectAttr "polyExtrudeFace19.out" "polyTweak19.ip";
connectAttr "polyTweak20.out" "polyExtrudeFace21.ip";
connectAttr "clockShape.wm" "polyExtrudeFace21.mp";
connectAttr "polyExtrudeFace20.out" "polyTweak20.ip";
connectAttr "polyTweak21.out" "polyExtrudeFace22.ip";
connectAttr "clockShape.wm" "polyExtrudeFace22.mp";
connectAttr "polyExtrudeFace21.out" "polyTweak21.ip";
connectAttr "polyTweak22.out" "polySplitRing1.ip";
connectAttr "clockShape.wm" "polySplitRing1.mp";
connectAttr "polyExtrudeFace22.out" "polyTweak22.ip";
connectAttr "polySplitRing1.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polyDelEdge1.ip";
connectAttr "polyDelEdge1.out" "polyExtrudeFace23.ip";
connectAttr "clockShape.wm" "polyExtrudeFace23.mp";
connectAttr "polyExtrudeFace23.out" "polyTweak23.ip";
connectAttr "polyTweak23.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyCloseBorder1.ip";
connectAttr "polyCloseBorder1.out" "polyCloseBorder2.ip";
connectAttr "polyCloseBorder2.out" "polyCloseBorder3.ip";
connectAttr "polyCloseBorder3.out" "polyCloseBorder4.ip";
connectAttr "polyCloseBorder4.out" "polyCloseBorder5.ip";
connectAttr "polyCloseBorder5.out" "polyCloseBorder6.ip";
connectAttr "polyCloseBorder6.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "polyCloseBorder7.ip";
connectAttr "pendulum_armShapeOrig.ws" "skinCluster1.ip[0].ig";
connectAttr "pendulum_armShapeOrig.l" "skinCluster1.orggeom[0]";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "joint2.wm" "skinCluster1.ma[0]";
connectAttr "joint1.wm" "skinCluster1.ma[1]";
connectAttr "joint2.liw" "skinCluster1.lw[0]";
connectAttr "joint1.liw" "skinCluster1.lw[1]";
connectAttr "joint2.obcc" "skinCluster1.ifcl[0]";
connectAttr "joint1.obcc" "skinCluster1.ifcl[1]";
connectAttr "joint1.msg" "bindPose1.m[0]";
connectAttr "joint2.msg" "bindPose1.m[1]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "joint1.bps" "bindPose1.wm[0]";
connectAttr "joint2.bps" "bindPose1.wm[1]";
connectAttr "pendulum_weightShapeOrig.ws" "skinCluster2.ip[0].ig";
connectAttr "pendulum_weightShapeOrig.l" "skinCluster2.orggeom[0]";
connectAttr "joint2.wm" "skinCluster2.ma[0]";
connectAttr "joint1.wm" "skinCluster2.ma[1]";
connectAttr "joint2.liw" "skinCluster2.lw[0]";
connectAttr "joint1.liw" "skinCluster2.lw[1]";
connectAttr "joint2.obcc" "skinCluster2.ifcl[0]";
connectAttr "joint1.obcc" "skinCluster2.ifcl[1]";
connectAttr "bindPose1.msg" "skinCluster2.bp";
connectAttr "polyCloseBorder7.out" "polyExtrudeEdge1.ip";
connectAttr "clockShape.wm" "polyExtrudeEdge1.mp";
connectAttr "polyTweak24.out" "polyExtrudeEdge2.ip";
connectAttr "clockShape.wm" "polyExtrudeEdge2.mp";
connectAttr "polyExtrudeEdge1.out" "polyTweak24.ip";
connectAttr "polyTweak25.out" "polyExtrudeEdge3.ip";
connectAttr "clockShape.wm" "polyExtrudeEdge3.mp";
connectAttr "polyExtrudeEdge2.out" "polyTweak25.ip";
connectAttr "polyTweak26.out" "polyCloseBorder8.ip";
connectAttr "polyExtrudeEdge3.out" "polyTweak26.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "clockShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pendulum_armShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pendulum_weightShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of clock_check_1.ma
