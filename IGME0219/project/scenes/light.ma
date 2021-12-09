//Maya ASCII 2022 scene
//Name: light.ma
//Last modified: Thu, Dec 09, 2021 06:56:51 PM
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
fileInfo "UUID" "28CBF3E9-40A9-7D24-6B80-6C8AE5FB12C3";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "28F89EED-4A90-763B-8A3E-32B088758AA0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 8.6127103873669544 1.4795434026037837 2.6183394808412119 ;
	setAttr ".r" -type "double3" 3.26164727044437 66.199999999918148 -9.8519134970781627e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "C372562F-4972-9898-F2EE-31B1BA2D9364";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 9.5391127328899934;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 1.4561715742190058 0.45073430459718078 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "9EF83CD3-49B3-672F-E815-3290703D40FF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "118D5E08-4034-1E62-A772-6C9A074A62CA";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "865C2C95-4D92-8CF7-4C2D-D8873CA83898";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "944896F2-49BA-7537-D35E-B49A0D93BC57";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "53897795-4052-EAC1-5D0B-61BAB0DE5C7E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 2.3540634859531289 1.8024307036386027 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "51B5027D-4C42-F299-DC60-73A54BB16A56";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 4.8852599942072459;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Holder";
	rename -uid "76CC544B-4443-3D2D-E5C8-70AD2A8E7DAB";
	setAttr ".t" -type "double3" 0 1.0491415323642745 2.0288863073043051 ;
	setAttr ".s" -type "double3" 0.2512084328152806 1.0501077783690074 0.2512084328152806 ;
createNode mesh -n "HolderShape" -p "Holder";
	rename -uid "1D758F43-4AD5-C29B-5379-AFA5A8B40CCA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Cord";
	rename -uid "1C3247FA-4F4A-A6BC-BD2C-1EB27570F343";
	setAttr ".t" -type "double3" 0 2.3849769412428006 -1.3893584459023942 ;
	setAttr ".s" -type "double3" 0.020844981914193685 0.26261781796641986 0.020844981914193685 ;
createNode mesh -n "CordShape" -p "Cord";
	rename -uid "0B913FE4-4785-0B6C-536D-FBAF01D357F8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "light";
	rename -uid "443C9BAE-4D05-3B07-2986-5483CBA5994C";
	setAttr ".t" -type "double3" 0 1.9591174445552193 -1.3905029031965441 ;
	setAttr ".s" -type "double3" 0.2976811355035231 0.2976811355035231 0.2976811355035231 ;
createNode mesh -n "lightShape" -p "light";
	rename -uid "2A588CF0-44C6-557C-C698-0E88E26FB08D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.45000000298023224 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[100:107]" -type "float3"  -0.23973839 0.03418535 -2.5205116e-08 
		-0.18225338 0.03418535 0.17692068 -0.37618351 0.3856324 0.16826147 -0.43085486 0.3856324 
		-2.5205116e-08 0.13461477 0.03418535 -2.5205116e-08 0.077129722 0.03418535 -0.17692068 
		0.40234891 0.41912669 -0.16826147 0.45702025 0.41912669 -2.5205116e-08;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "DA64816A-41CB-552E-70F7-E9BE76BFFAFE";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "F850331E-4908-A608-115A-8589C9E2F05A";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "6B736E8E-45D3-B3B3-5587-D998CB1CA265";
createNode displayLayerManager -n "layerManager";
	rename -uid "E9B89F0B-4228-1FD6-B855-118362D11DCB";
createNode displayLayer -n "defaultLayer";
	rename -uid "FABBC9DD-4C83-AF3A-3152-90B7E45D9106";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "2682CFBD-47B2-DA32-54C0-7DBC8F274D95";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "361607ED-4798-76EA-25B8-11A5674F1CC7";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "ECE1360A-4C35-B2F7-1DFA-7EAF87A91047";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 332\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 332\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 332\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1119\n            -height 708\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 708\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 708\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "039CA609-49A5-CC5A-77EC-F2A7A1DC8FCB";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "399FFB09-4B10-E29D-64E9-41863B298D97";
	setAttr ".sa" 12;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "A940E4BB-4FBD-FE7D-9BBF-B4BEF9490C42";
	setAttr ".dc" -type "componentList" 1 "f[24:35]";
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "8D15F229-4409-67DA-E4AC-42BAB783B553";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[12:23]";
	setAttr ".ix" -type "matrix" 0.2512084328152806 0 0 0 0 1.0501077783690074 0 0 0 0 0.2512084328152806 0
		 0 1.0491415323642745 2.0288863073043051 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.0992494 2.0288863 ;
	setAttr ".rs" 33693;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.2512084328152806 2.0992493107332821 1.7776778744890245 ;
	setAttr ".cbx" -type "double3" 0.2512084328152806 2.0992493107332821 2.2800947401195857 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	rename -uid "48A5B25B-498D-C9B5-0A5F-3B85A5B418E4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[50]" "e[52]" "e[54]" "e[56]" "e[58]" "e[60]" "e[62]" "e[64]" "e[66]" "e[68]" "e[70:71]";
	setAttr ".ix" -type "matrix" 0.2512084328152806 0 0 0 0 1.0501077783690074 0 0 0 0 0.2512084328152806 0
		 0 1.0491415323642745 2.0288863073043051 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -7.4865945e-09 2.3044391 2.0095444 ;
	setAttr ".rs" 57771;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.25002327492769094 2.214560764029645 1.7761373429241551 ;
	setAttr ".cbx" -type "double3" 0.25002325995450159 2.3943172224051095 2.242951452908613 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "9D2E5368-4B92-2684-071D-2C8B637539F0";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk";
	setAttr ".tk[25]" -type "float3" 0.042538252 0.15433961 0.042146455 ;
	setAttr ".tk[26]" -type "float3" 0.07839635 0.12227798 0.032703932 ;
	setAttr ".tk[27]" -type "float3" 0.093248136 0.10980916 -0.0061325217 ;
	setAttr ".tk[28]" -type "float3" 0.083114207 0.12027401 -0.06395676 ;
	setAttr ".tk[29]" -type "float3" 0.050709821 0.15086852 -0.12527473 ;
	setAttr ".tk[30]" -type "float3" 0.0047178566 0.19339471 -0.17365615 ;
	setAttr ".tk[31]" -type "float3" -0.042538293 0.23645799 -0.19613753 ;
	setAttr ".tk[32]" -type "float3" -0.078396402 0.26851946 -0.18669486 ;
	setAttr ".tk[33]" -type "float3" -0.093248144 0.28098822 -0.14785843 ;
	setAttr ".tk[34]" -type "float3" -0.083114259 0.27052343 -0.090034239 ;
	setAttr ".tk[35]" -type "float3" -0.050709862 0.23992902 -0.028716359 ;
	setAttr ".tk[36]" -type "float3" -0.0047178627 0.19740273 0.019665159 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge3";
	rename -uid "76B67754-4212-0FE2-B908-C5B4378BF84F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[74]" "e[76]" "e[78]" "e[80]" "e[82]" "e[84]" "e[86]" "e[88]" "e[90]" "e[92]" "e[94:95]";
	setAttr ".ix" -type "matrix" 0.2512084328152806 0 0 0 0 1.0501077783690074 0 0 0 0 0.2512084328152806 0
		 0 1.0491415323642745 2.0288863073043051 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.4973189e-08 2.4253821 1.9469343 ;
	setAttr ".rs" 49833;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.24928389883499366 2.3030057776046622 1.7295113402130933 ;
	setAttr ".cbx" -type "double3" 0.24928386888861487 2.5477582948741615 2.1643574362789142 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "78145740-4AC9-F2F6-9F4B-1993E9EF0C63";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[37:48]" -type "float3"  0.0090893116 0.10233043 -0.19570731
		 0.018686431 0.089890309 -0.18159503 0.023276528 0.08422441 -0.18560715 0.021629706
		 0.086850926 -0.20666817 0.014187207 0.097066037 -0.23913507 0.0029432736 0.11213263
		 -0.27430847 -0.0090893218 0.12801364 -0.30276325 -0.018686442 0.14045376 -0.31687564
		 -0.023276538 0.14611962 -0.31286356 -0.021629713 0.14349318 -0.29180253 -0.014187199
		 0.13327801 -0.25933567 -0.0029432885 0.11821144 -0.22416213;
createNode polyExtrudeEdge -n "polyExtrudeEdge4";
	rename -uid "E0169E49-4901-F8B5-1EF8-0AA85C79FADC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[98]" "e[100]" "e[102]" "e[104]" "e[106]" "e[108]" "e[110]" "e[112]" "e[114]" "e[116]" "e[118:119]";
	setAttr ".ix" -type "matrix" 0.2512084328152806 0 0 0 0 1.0501077783690074 0 0 0 0 0.2512084328152806 0
		 0 1.0491415323642745 2.0288863073043051 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.4973189e-08 2.5787528 1.8284527 ;
	setAttr ".rs" 51802;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.24928389883499366 2.3868539608438848 1.6690047417301974 ;
	setAttr ".cbx" -type "double3" 0.24928386888861487 2.7706514261455557 1.9879005852556639 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "7E77B78F-45C6-88F7-6B70-5D8D55F1EBC0";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[49:60]" -type "float3"  0 0.12166099 -0.36970869 0
		 0.093746588 -0.27954927 0 0.07984747 -0.24086232 0 0.083687976 -0.26401427 0 0.10423898
		 -0.34280112 0 0.13599373 -0.45611307 0 0.17044391 -0.57358617 0 0.19835833 -0.66374576
		 0 0.21225736 -0.70243227 0 0.20841689 -0.67928052 0 0.18786579 -0.60049349 0 0.15611112
		 -0.48718175;
createNode polyExtrudeEdge -n "polyExtrudeEdge5";
	rename -uid "E3FB7C0F-459B-88AB-8B29-30A02194F079";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[122]" "e[124]" "e[126]" "e[128]" "e[130]" "e[132]" "e[134]" "e[136]" "e[138]" "e[140]" "e[142:143]";
	setAttr ".ix" -type "matrix" 0.2512084328152806 0 0 0 0 1.0501077783690074 0 0 0 0 0.2512084328152806 0
		 0 1.0491415323642745 2.0288863073043051 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.4973189e-08 2.6438184 1.6475112 ;
	setAttr ".rs" 55840;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.24928389883499366 2.4234828909812673 1.5304602458452021 ;
	setAttr ".cbx" -type "double3" 0.24928386888861487 2.8641539420325044 1.764562229017387 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "DE416467-4BAD-EFCB-EC28-6AA9DA0977B4";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[61:72]" -type "float3"  0 0.052625421 -0.64895177
		 0 0.040936433 -0.58166009 0 0.034880999 -0.5515126 0 0.036081638 -0.56658745 0 0.044216674
		 -0.62284541 0 0.057106189 -0.70521194 0 0.071296699 -0.79161721 0 0.082985662 -0.85890925
		 0 0.089041106 -0.88905609 0 0.087840505 -0.87398148 0 0.07970544 -0.81772387 0 0.06681592
		 -0.73535681;
createNode polyExtrudeEdge -n "polyExtrudeEdge6";
	rename -uid "D5845C97-4B53-D97B-D7BC-0EA665A0B4C9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[146]" "e[148]" "e[150]" "e[152]" "e[154]" "e[156]" "e[158]" "e[160]" "e[162]" "e[164]" "e[166:167]";
	setAttr ".ix" -type "matrix" 0.2512084328152806 0 0 0 0 1.0501077783690074 0 0 0 0 0.2512084328152806 0
		 0 1.0491415323642745 2.0288863073043051 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.4973189e-08 2.6639409 1.475886 ;
	setAttr ".rs" 45020;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.24928389883499366 2.4174995381433826 1.4347640469313874 ;
	setAttr ".cbx" -type "double3" 0.24928386888861487 2.9103823748378437 1.5170078832902805 ;
createNode polyTweak -n "polyTweak5";
	rename -uid "006E37C8-4325-8B34-F60E-96AC7C5E188F";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[73:84]" -type "float3"  0 0.011937721 -0.55552822
		 0 0.00063822477 -0.42993659 0 -0.0056977109 -0.37220594 0 -0.0053723999 -0.39780578
		 0 0.001527059 -0.49987721 0 0.01315175 -0.65106869 0 0.02638723 -0.81086951 0 0.037686676
		 -0.93646139 0 0.044022702 -0.99419075 0 0.043697357 -0.96859187 0 0.036797788 -0.86652118
		 0 0.025173161 -0.71532905;
createNode polyExtrudeEdge -n "polyExtrudeEdge7";
	rename -uid "D76F5F0B-4261-7F0F-5ACD-DDB4E6EAB7A0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[170]" "e[172]" "e[174]" "e[176]" "e[178]" "e[180]" "e[182]" "e[184]" "e[186]" "e[188]" "e[190:191]";
	setAttr ".ix" -type "matrix" 0.2512084328152806 0 0 0 0 1.0501077783690074 0 0 0 0 0.2512084328152806 0
		 0 1.0491415323642745 2.0288863073043051 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.4973189e-08 2.6639409 0.50430876 ;
	setAttr ".rs" 61889;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.24907936506775499 2.414572142990675 0.4866638501019942 ;
	setAttr ".cbx" -type "double3" 0.2490793351213762 2.9133098951731533 0.5219536211700162 ;
createNode polyTweak -n "polyTweak6";
	rename -uid "960A5750-4A7C-0059-1267-84A1A565515B";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[85:96]" -type "float3"  -0.00083793269 -0.00025008956
		 -3.80376291 -0.00063718524 -0.0017538607 -3.76020861 -0.00026572106 -0.0027876631
		 -3.74543285 0.0001769556 -0.0030745331 -3.76339531 0.00057222496 -0.0025375886 -3.80928278
		 0.00081418344 -0.0013207339 -3.87079954 0.00083794032 0.00025008171 -3.93146276 0.00063721853
		 0.001753812 -3.97501707 0.00026570229 0.0027876955 -3.98979282 -0.00017693825 0.0030745112
		 -3.97183084 -0.00057218655 0.0025375341 -3.92594337 -0.00081417139 0.0013207226 -3.86442614;
createNode polyExtrudeEdge -n "polyExtrudeEdge8";
	rename -uid "C173A6FC-4232-1C99-AE6B-F69AB1484753";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[194]" "e[196]" "e[198]" "e[200]" "e[202]" "e[204]" "e[206]" "e[208]" "e[210]" "e[212]" "e[214:215]";
	setAttr ".ix" -type "matrix" 0.2512084328152806 0 0 0 0 1.0501077783690074 0 0 0 0 0.2512084328152806 0
		 0 1.0491415323642745 2.0288863073043051 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.4973189e-08 2.6639411 0.31204382 ;
	setAttr ".rs" 53810;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.18469938216469547 2.4790270374953516 0.29895958839524006 ;
	setAttr ".cbx" -type "double3" 0.18469935221831665 2.8488552510336813 0.32512805183578175 ;
createNode polyTweak -n "polyTweak7";
	rename -uid "8B9FE872-400A-15FF-010B-2E85017A1AE9";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[97:108]" -type "float3"  -0.23697087 0.024581358 -0.77504361
		 -0.15416436 0.049629375 -0.76605976 -0.030049661 0.061379243 -0.75688881 0.10211681
		 0.056682594 -0.74998772 0.2069211 0.036797725 -0.74720573 0.25628114 0.0070530777
		 -0.74928838 0.23697087 -0.024581477 -0.75567752 0.15416434 -0.049629416 -0.76466137
		 0.03004965 -0.061379243 -0.77383363 -0.10211682 -0.056682784 -0.78073448 -0.20692113
		 -0.036797922 -0.78351516 -0.25628114 -0.0070532598 -0.78143382;
createNode polyExtrudeEdge -n "polyExtrudeEdge9";
	rename -uid "C284EF0F-470E-C218-5D0F-798BC7715431";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[218]" "e[220]" "e[222]" "e[224]" "e[226]" "e[228]" "e[230]" "e[232]" "e[234]" "e[236]" "e[238:239]";
	setAttr ".ix" -type "matrix" 0.2512084328152806 0 0 0 0 1.0501077783690074 0 0 0 0 0.2512084328152806 0
		 0 1.0491415323642745 2.0288863073043051 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.4973189e-08 2.6639414 0.31204382 ;
	setAttr ".rs" 54343;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.18469938216469547 2.4790272878605562 0.29895958839524006 ;
	setAttr ".cbx" -type "double3" 0.18469935221831665 2.8488555013988854 0.32512805183578175 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge10";
	rename -uid "956936EE-48D3-9813-0B86-1EB564B71C34";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[242]" "e[244]" "e[246]" "e[248]" "e[250]" "e[252]" "e[254]" "e[256]" "e[258]" "e[260]" "e[262:263]";
	setAttr ".ix" -type "matrix" 0.2512084328152806 0 0 0 0 1.0501077783690074 0 0 0 0 0.2512084328152806 0
		 0 1.0491415323642745 2.0288863073043051 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.4973189e-08 2.6639414 0.064950019 ;
	setAttr ".rs" 39940;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.092223654260551874 2.5716105878994684 0.05841685785517492 ;
	setAttr ".cbx" -type "double3" 0.092223624314173067 2.7562722013599732 0.071483181640920268 ;
createNode polyTweak -n "polyTweak8";
	rename -uid "980484DE-457A-2909-AEC8-0C8EAE393B01";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk[109:132]" -type "float3"  0 0 5.9604645e-08 0 0 5.9604645e-08
		 0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08
		 0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08
		 -0.34038606 0.035308987 -0.99753022 -0.22144242 0.071288079 -0.9846251 -0.043163493
		 0.088165499 -0.97145081 0.14668109 0.081419311 -0.96153879 0.2972227 0.05285668 -0.95754242
		 0.3681235 0.010131161 -0.9605341 0.34038606 -0.035308868 -0.96971273 0.22144237 -0.071287826
		 -0.98261738 0.043163452 -0.088165499 -0.99579191 -0.14668109 -0.081419162 -1.0057036877
		 -0.2972227 -0.052856557 -1.0096988678 -0.3681235 -0.010131161 -1.0067088604;
createNode polyExtrudeEdge -n "polyExtrudeEdge11";
	rename -uid "E654E083-4BFF-FD25-B065-B9B16311527F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[266]" "e[268]" "e[270]" "e[272]" "e[274]" "e[276]" "e[278]" "e[280]" "e[282]" "e[284]" "e[286:287]";
	setAttr ".ix" -type "matrix" 0.2512084328152806 0 0 0 0 1.0501077783690074 0 0 0 0 0.2512084328152806 0
		 0 1.0491415323642745 2.0288863073043051 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.4973189e-08 2.6639414 -0.70264602 ;
	setAttr ".rs" 36541;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.092223654260551874 2.5716105878994684 -0.70917914501632584 ;
	setAttr ".cbx" -type "double3" 0.092223624314173067 2.7562722013599732 -0.69611294101609555 ;
createNode polyTweak -n "polyTweak9";
	rename -uid "B415CF33-466C-3463-073A-289D42771EAA";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[133:144]" -type "float3"  0 0 -3.055614471 0 0 -3.055614471
		 0 0 -3.055614471 0 0 -3.055614471 0 0 -3.055614471 0 0 -3.055614471 0 0 -3.055614471
		 0 0 -3.055614471 0 0 -3.055614471 0 0 -3.055614471 0 0 -3.055614471 0 0 -3.055614471;
createNode polyExtrudeEdge -n "polyExtrudeEdge12";
	rename -uid "5D1DACC6-4546-E66E-25E6-ECBD188F16E9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[290]" "e[292]" "e[294]" "e[296]" "e[298]" "e[300]" "e[302]" "e[304]" "e[306]" "e[308]" "e[310:311]";
	setAttr ".ix" -type "matrix" 0.2512084328152806 0 0 0 0 1.0501077783690074 0 0 0 0 0.2512084328152806 0
		 0 1.0491415323642745 2.0288863073043051 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.4973189e-08 2.6639414 -0.83361042 ;
	setAttr ".rs" 52639;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.19100546066708932 2.4727138285006403 -0.84714115388718314 ;
	setAttr ".cbx" -type "double3" 0.1910054307207105 2.8551689607588013 -0.82007968943067411 ;
createNode polyTweak -n "polyTweak10";
	rename -uid "076A3607-4E74-C2F3-9853-C8A35A1D79E5";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[145:156]" -type "float3"  0.36359659 -0.03771637 -0.50647628
		 0.23654264 -0.076149508 -0.52026474 0.046106812 -0.094177738 -0.53433716 -0.15668347
		 -0.086970694 -0.54492432 -0.31748989 -0.056460544 -0.54919308 -0.39322644 -0.010821906
		 -0.54599589 -0.36359659 0.037716679 -0.53619164 -0.23654258 0.076149508 -0.52240705
		 -0.046106841 0.094177738 -0.50833571 0.15668342 0.086971492 -0.49774751 0.31748983
		 0.056461319 -0.49348158 0.39322644 0.010822026 -0.49667618;
createNode polyExtrudeEdge -n "polyExtrudeEdge13";
	rename -uid "3A0ADD5F-4B27-2BD4-D46D-C1A87165151A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[314]" "e[316]" "e[318]" "e[320]" "e[322]" "e[324]" "e[326]" "e[328]" "e[330]" "e[332]" "e[334:335]";
	setAttr ".ix" -type "matrix" 0.2512084328152806 0 0 0 0 1.0501077783690074 0 0 0 0 0.2512084328152806 0
		 0 1.0491415323642745 2.0288863073043051 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.4973189e-08 2.6639414 -1.0763098 ;
	setAttr ".rs" 36535;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.085821088525648084 2.5780204378630867 -1.0823893646545115 ;
	setAttr ".cbx" -type "double3" 0.085821058579269277 2.7498623513963554 -1.0702301765755293 ;
createNode polyTweak -n "polyTweak11";
	rename -uid "597DA855-44AE-FD9A-E290-E99CE3E82BF7";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[157:168]" -type "float3"  -0.38716361 0.040160984 -0.9819513
		 -0.25187436 0.081084974 -0.96726978 -0.049095243 0.10028177 -0.95228606 0.16683882
		 0.09260802 -0.94101155 0.33806834 0.060120072 -0.93646628 0.41871354 0.011523495
		 -0.9398697 0.38716361 -0.040161386 -0.95030993 0.2518743 -0.08108487 -0.96498668
		 0.049095243 -0.10028177 -0.97997159 -0.16683885 -0.092608541 -0.99124533 -0.33806834
		 -0.060120851 -0.99578881 -0.41871354 -0.011523628 -0.99238759;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "DA740A32-4C83-0934-C9A1-92A3D8538ECF";
	setAttr ".ics" -type "componentList" 1 "vtx[169:180]";
	setAttr ".ix" -type "matrix" 0.2512084328152806 0 0 0 0 1.0501077783690074 0 0 0 0 0.2512084328152806 0
		 0 1.0491415323642745 2.0288863073043051 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak12";
	rename -uid "D898EDB0-495B-1C34-239B-E3B773136A19";
	setAttr ".uopa" yes;
	setAttr -s 13 ".tk";
	setAttr ".tk[169]" -type "float3" -0.23920843 0.024813298 -1.2073503 ;
	setAttr ".tk[170]" -type "float3" -0.15562016 0.050098427 -1.1982794 ;
	setAttr ".tk[171]" -type "float3" -0.030333448 0.061958984 -1.1890213 ;
	setAttr ".tk[172]" -type "float3" 0.1030812 0.057217941 -1.1820555 ;
	setAttr ".tk[173]" -type "float3" 0.20887506 0.037145071 -1.1792467 ;
	setAttr ".tk[174]" -type "float3" 0.25870144 0.007119759 -1.1813502 ;
	setAttr ".tk[175]" -type "float3" 0.23920843 -0.024813458 -1.1878009 ;
	setAttr ".tk[176]" -type "float3" 0.15562011 -0.050098225 -1.1968683 ;
	setAttr ".tk[177]" -type "float3" 0.030333441 -0.061958984 -1.2061267 ;
	setAttr ".tk[178]" -type "float3" -0.1030812 -0.057218134 -1.2130924 ;
	setAttr ".tk[179]" -type "float3" -0.20887506 -0.037145611 -1.2159004 ;
	setAttr ".tk[180]" -type "float3" -0.25870144 -0.007119759 -1.2137977 ;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "9C0F7A4F-44D8-DBCB-A50A-F387E6DA5E77";
	setAttr ".ics" -type "componentList" 1 "vtx[169:180]";
	setAttr ".ix" -type "matrix" 0.2512084328152806 0 0 0 0 1.0501077783690074 0 0 0 0 0.2512084328152806 0
		 0 1.0491415323642745 2.0288863073043051 1;
	setAttr ".d" 0.001;
	setAttr ".am" yes;
createNode polyCylinder -n "polyCylinder2";
	rename -uid "124470B1-4B7C-F740-E378-289302EE1432";
	setAttr ".sa" 12;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polySphere -n "polySphere1";
	rename -uid "6F479CF0-47C5-BFC7-6E29-C499BE48841C";
	setAttr ".sa" 10;
	setAttr ".sh" 10;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "5DC82704-42DC-F9DC-446D-699C64969EE7";
	setAttr ".ics" -type "componentList" 2 "f[44]" "f[49]";
	setAttr ".ix" -type "matrix" 0.2976811355035231 0 0 0 0 0.2976811355035231 0 0 0 0 0.2976811355035231 0
		 0 1.9591174445552193 -1.3905029031965441 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.7743178e-08 2.0051117 -1.3905029 ;
	setAttr ".rs" 33065;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.29768117098987978 1.9591174445552193 -1.5654755352886534 ;
	setAttr ".cbx" -type "double3" 0.2976811355035231 2.0511059679022989 -1.2155302888476132 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "8FB2BE1F-4075-CB49-B56B-B4B68F644C7F";
	setAttr ".ics" -type "componentList" 2 "f[44]" "f[49]";
	setAttr ".ix" -type "matrix" 0.2976811355035231 0 0 0 0 0.2976811355035231 0 0 0 0 0.2976811355035231 0
		 0 1.9591174445552193 -1.3905029031965441 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.7743178e-08 2.042804 -1.3905028 ;
	setAttr ".rs" 52534;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.42377242909461593 1.9773276333276364 -1.6395900864585917 ;
	setAttr ".cbx" -type "double3" 0.42377239360825925 2.108280583289166 -1.1414155779890698 ;
createNode polyTweak -n "polyTweak13";
	rename -uid "383212DC-43B0-2739-C95C-069EE874C01C";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[92]" -type "float3" -0.42357835 0.061173473 -1.0098895e-07 ;
	setAttr ".tk[93]" -type "float3" -0.34268185 0.061173473 0.24897312 ;
	setAttr ".tk[94]" -type "float3" -0.32590991 0.19206643 0.23678745 ;
	setAttr ".tk[95]" -type "float3" -0.40284637 0.19206643 -1.0098895e-07 ;
	setAttr ".tk[96]" -type "float3" 0.42357835 0.061173473 -1.0098895e-07 ;
	setAttr ".tk[97]" -type "float3" 0.34268185 0.061173473 -0.24897312 ;
	setAttr ".tk[98]" -type "float3" 0.32590991 0.19206643 -0.23678754 ;
	setAttr ".tk[99]" -type "float3" 0.40284637 0.19206643 -1.0098895e-07 ;
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
connectAttr "polyMergeVert2.out" "HolderShape.i";
connectAttr "polyCylinder2.out" "CordShape.i";
connectAttr "polyExtrudeFace2.out" "lightShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCylinder1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyExtrudeEdge1.ip";
connectAttr "HolderShape.wm" "polyExtrudeEdge1.mp";
connectAttr "polyTweak1.out" "polyExtrudeEdge2.ip";
connectAttr "HolderShape.wm" "polyExtrudeEdge2.mp";
connectAttr "polyExtrudeEdge1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeEdge3.ip";
connectAttr "HolderShape.wm" "polyExtrudeEdge3.mp";
connectAttr "polyExtrudeEdge2.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeEdge4.ip";
connectAttr "HolderShape.wm" "polyExtrudeEdge4.mp";
connectAttr "polyExtrudeEdge3.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeEdge5.ip";
connectAttr "HolderShape.wm" "polyExtrudeEdge5.mp";
connectAttr "polyExtrudeEdge4.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyExtrudeEdge6.ip";
connectAttr "HolderShape.wm" "polyExtrudeEdge6.mp";
connectAttr "polyExtrudeEdge5.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyExtrudeEdge7.ip";
connectAttr "HolderShape.wm" "polyExtrudeEdge7.mp";
connectAttr "polyExtrudeEdge6.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyExtrudeEdge8.ip";
connectAttr "HolderShape.wm" "polyExtrudeEdge8.mp";
connectAttr "polyExtrudeEdge7.out" "polyTweak7.ip";
connectAttr "polyExtrudeEdge8.out" "polyExtrudeEdge9.ip";
connectAttr "HolderShape.wm" "polyExtrudeEdge9.mp";
connectAttr "polyTweak8.out" "polyExtrudeEdge10.ip";
connectAttr "HolderShape.wm" "polyExtrudeEdge10.mp";
connectAttr "polyExtrudeEdge9.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyExtrudeEdge11.ip";
connectAttr "HolderShape.wm" "polyExtrudeEdge11.mp";
connectAttr "polyExtrudeEdge10.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polyExtrudeEdge12.ip";
connectAttr "HolderShape.wm" "polyExtrudeEdge12.mp";
connectAttr "polyExtrudeEdge11.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polyExtrudeEdge13.ip";
connectAttr "HolderShape.wm" "polyExtrudeEdge13.mp";
connectAttr "polyExtrudeEdge12.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polyMergeVert1.ip";
connectAttr "HolderShape.wm" "polyMergeVert1.mp";
connectAttr "polyExtrudeEdge13.out" "polyTweak12.ip";
connectAttr "polyMergeVert1.out" "polyMergeVert2.ip";
connectAttr "HolderShape.wm" "polyMergeVert2.mp";
connectAttr "polySphere1.out" "polyExtrudeFace1.ip";
connectAttr "lightShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak13.out" "polyExtrudeFace2.ip";
connectAttr "lightShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak13.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "HolderShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "CordShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "lightShape.iog" ":initialShadingGroup.dsm" -na;
// End of light.ma
