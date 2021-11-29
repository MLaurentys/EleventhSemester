//Maya ASCII 2022 scene
//Name: plate.ma
//Last modified: Mon, Nov 29, 2021 01:17:37 PM
//Codeset: 1252
requires maya "2022";
requires "stereoCamera" "10.0";
requires "mtoa" "4.2.1";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202102181415-29bfc1879c";
fileInfo "osv" "Windows 10 Enterprise v2009 (Build: 19043)";
fileInfo "UUID" "DC7320F0-4C6F-3F3B-CF48-D99F71A63B33";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "23F24D00-0000-7078-61A1-7E2900000291";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.45445991777984862 -7.3244990332095954 0.92756521973539829 ;
	setAttr ".r" -type "double3" -282.93835272959035 342.99999999999409 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "23F24D00-0000-7078-61A1-7E2900000292";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 6.6829628607384688;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "23F24D00-0000-7078-61A1-7E2900000293";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "23F24D00-0000-7078-61A1-7E2900000294";
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
	rename -uid "23F24D00-0000-7078-61A1-7E2900000295";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "23F24D00-0000-7078-61A1-7E2900000296";
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
	rename -uid "23F24D00-0000-7078-61A1-7E2900000297";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "23F24D00-0000-7078-61A1-7E2900000298";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 4.0834119120464161;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pCylinder1";
	rename -uid "23F24D00-0000-7078-61A1-818D00000325";
	setAttr ".t" -type "double3" 0 0.39212197990987369 0 ;
	setAttr ".s" -type "double3" 1 0.015326724511626212 1 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "23F24D00-0000-7078-61A1-818D00000324";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49882173538208008 0.50179875828325748 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 164 ".pt";
	setAttr ".pt[0]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[1]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[2]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[3]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[4]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[5]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[6]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[7]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[8]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[9]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[10]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[11]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[12]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[13]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[14]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[15]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[16]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[17]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[18]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[19]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[20]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[21]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[22]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[23]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[24]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[25]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[26]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[27]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[28]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[29]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[30]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[31]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[32]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[33]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[34]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[35]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[36]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[37]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[38]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[39]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[40]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[41]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[42]" -type "float3" 5.9604645e-08 -3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[43]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[44]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[45]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[46]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[47]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[48]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[49]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[50]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[51]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[52]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[53]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[54]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[55]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[56]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[57]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[58]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[59]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[60]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[61]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[62]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[63]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[64]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[65]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[66]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[67]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[68]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[69]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[70]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[71]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[72]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[73]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[74]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[75]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[76]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[77]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[78]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[79]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[80]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[81]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[82]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[83]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[84]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[85]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[86]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[87]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[88]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[89]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[90]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[91]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[92]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[93]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[94]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[95]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[96]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[97]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[98]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[99]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[100]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[101]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[102]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[103]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[104]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[105]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[106]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[107]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[108]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[109]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[110]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[111]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[112]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[113]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[114]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[115]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[116]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[117]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[118]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[119]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[120]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[121]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[122]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[123]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[124]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[125]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[126]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[127]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[128]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[129]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[130]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[131]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[132]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[133]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[134]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[135]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[136]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[137]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[138]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[139]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[140]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[141]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[142]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[143]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[144]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[145]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[146]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[147]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[148]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[149]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[150]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[151]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[152]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[153]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[154]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[155]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[156]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[157]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[158]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[159]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".pt[160]" -type "float3" 5.9604645e-08 3.8146973e-06 -5.9604645e-08 ;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "5F66ABFF-4BB9-24E9-C452-6C9A7EA725D0";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "647F69EE-457E-B836-B57E-4390D3104641";
createNode displayLayer -n "defaultLayer";
	rename -uid "23F24D00-0000-7078-61A1-7E290000029B";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "E207A84F-43A0-8313-BBB1-2E8C6C71B721";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "23F24D00-0000-7078-61A1-7E290000029D";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "BA717F09-406B-68DC-4167-D19A76664C17";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "2D35D83F-4814-1FFA-C8C2-C8A4760C511F";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "23F24D00-0000-7078-61A1-801D00000301";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -330.95236780151544 -323.80951094248991 ;
	setAttr ".tgi[0].vh" -type "double2" 317.85713022663526 338.09522466054096 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "23F24D00-0000-7078-61A1-806300000303";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 708\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 708\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "23F24D00-0000-7078-61A1-806300000304";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "23F24D00-0000-7078-61A1-818D00000323";
	setAttr ".sa" 32;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "23F24D00-0000-7078-61A1-81B90000033D";
	setAttr ".ics" -type "componentList" 1 "f[0:95]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.015326724511626212 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.2782555e-07 0 3.2782555e-07 ;
	setAttr ".rs" 161306185;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.99999934434890747 -0.015326724511626212 -0.99999904632568359 ;
	setAttr ".cbx" -type "double3" 1 0.015326724511626212 0.99999970197677612 ;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "23F24D00-0000-7078-61A1-81E80000037E";
	setAttr ".dc" -type "componentList" 1 "f[128:159]";
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "23F24D00-0000-7078-61A1-82380000040D";
	setAttr ".ics" -type "componentList" 1 "f[32:63]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.015326724511626212 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.2782555e-07 -0.015326637 3.2782555e-07 ;
	setAttr ".rs" 157028173;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.99999934434890747 -0.015326695278219169 -0.99999904632568359 ;
	setAttr ".cbx" -type "double3" 1 -0.015326578344590999 0.99999970197677612 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "23F24D00-0000-7078-61A1-825C00000434";
	setAttr ".ics" -type "componentList" 1 "f[32:63]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.015326724511626212 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.5762787e-07 0.043380536 4.1723251e-07 ;
	setAttr ".rs" 910287786;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.1268423795700073 0.043380475879974449 -1.1268420219421387 ;
	setAttr ".cbx" -type "double3" 1.1268430948257446 0.043380592813602618 1.1268428564071655 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "23F24D00-0000-7078-61A1-825C00000435";
	setAttr ".uopa" yes;
	setAttr -s 98 ".tk[65:162]" -type "float3"  0 1.9073486e-06 0 -3.7252903e-09
		 9.5367432e-06 -4.6566129e-10 -3.7252903e-09 7.9981983e-06 0 -3.7252903e-09 7.2605908e-06
		 0 -3.7252903e-09 9.5367432e-06 -4.6566129e-10 -5.5879354e-09 7.9981983e-06 0 -5.5879354e-09
		 9.5367432e-06 0 -3.7252903e-09 7.9981983e-06 3.7252903e-09 -3.7252903e-09 9.5367432e-06
		 3.7252903e-09 1.8626451e-09 7.9981983e-06 5.5879354e-09 1.8626451e-09 9.5367432e-06
		 5.5879354e-09 2.7939677e-09 7.9981983e-06 0 2.7939677e-09 9.5367432e-06 0 -4.6566129e-10
		 7.9981983e-06 3.7252903e-09 -4.6566129e-10 9.5367432e-06 3.7252903e-09 -4.4408921e-16
		 7.9981983e-06 -3.7252903e-09 -4.4408921e-16 9.5367432e-06 -3.7252903e-09 0 7.9981983e-06
		 3.7252903e-09 0 9.5367432e-06 3.7252903e-09 1.8626451e-09 7.9981983e-06 3.7252903e-09
		 1.8626451e-09 9.5367432e-06 3.7252903e-09 -1.8626451e-09 7.9981983e-06 3.7252903e-09
		 -1.8626451e-09 9.5367432e-06 3.7252903e-09 -3.7252903e-09 7.9981983e-06 3.7252903e-09
		 -3.7252903e-09 9.5367432e-06 3.7252903e-09 -3.7252903e-09 7.9981983e-06 1.8626451e-09
		 -3.7252903e-09 9.5367432e-06 1.8626451e-09 3.7252903e-09 7.9981983e-06 0 3.7252903e-09
		 9.5367432e-06 0 -3.7252903e-09 7.9981983e-06 -9.3132257e-10 -3.7252903e-09 9.5367432e-06
		 -9.3132257e-10 0 7.9981983e-06 -3.5527137e-15 0 9.5367432e-06 -3.5527137e-15 0 7.9981983e-06
		 4.6566129e-10 0 9.5367432e-06 4.6566129e-10 -7.4505806e-09 7.9981983e-06 -9.3132257e-10
		 -7.4505806e-09 9.5367432e-06 -9.3132257e-10 5.5879354e-09 7.9981983e-06 0 5.5879354e-09
		 9.5367432e-06 0 1.8626451e-09 7.9981983e-06 -1.8626451e-09 1.8626451e-09 9.5367432e-06
		 -1.8626451e-09 -1.8626451e-09 7.9981983e-06 -5.5879354e-09 -1.8626451e-09 9.5367432e-06
		 -5.5879354e-09 0 7.9981983e-06 0 0 9.5367432e-06 0 9.3132257e-10 7.9981983e-06 -3.7252903e-09
		 9.3132257e-10 9.5367432e-06 -3.7252903e-09 1.7763568e-15 7.9981983e-06 3.7252903e-09
		 1.7763568e-15 9.5367432e-06 3.7252903e-09 0 7.9981983e-06 0 0 9.5367432e-06 0 0 7.9981983e-06
		 -3.7252903e-09 0 9.5367432e-06 -3.7252903e-09 3.7252903e-09 7.9981983e-06 0 3.7252903e-09
		 9.5367432e-06 0 3.7252903e-09 7.9981983e-06 3.7252903e-09 3.7252903e-09 9.5367432e-06
		 3.7252903e-09 1.8626451e-09 7.9981983e-06 -1.8626451e-09 1.8626451e-09 9.5367432e-06
		 -1.8626451e-09 -3.7252903e-09 7.9981983e-06 -2.7939677e-09 -3.7252903e-09 9.5367432e-06
		 -2.7939677e-09 3.7252903e-09 7.9981983e-06 4.6566129e-10 3.7252903e-09 9.5367432e-06
		 4.6566129e-10 0 7.9981983e-06 -1.7763568e-15 0 7.2605908e-06 -1.7763568e-15 0.12440568
		 3.83038902 -0.024745749 0.11718749 3.83038807 -0.048540644 -4.1582386e-08 3.83038139
		 1.802227e-08 0.105466 3.83038139 -0.070470124 0.08969146 3.83038139 -0.089691401
		 0.070470192 3.83038139 -0.10546595 0.048540715 3.83038139 -0.11718763 0.024745837
		 3.83038139 -0.12440564 1.5120873e-08 3.83038139 -0.12684299 -0.024745813 3.83038139
		 -0.12440565 -0.048540708 3.83038139 -0.11718766 -0.070470192 3.83038139 -0.10546604
		 -0.089691468 3.83038139 -0.089691505 -0.10546608 3.83038139 -0.070470177 -0.11718771
		 3.83038139 -0.048540715 -0.12440572 3.83038139 -0.024745855 -0.12684307 3.83038139
		 -2.3560172e-08 -0.12440573 3.83038139 0.024745837 -0.11718778 3.83038139 0.048540719
		 -0.10546611 3.83038139 0.070470221 -0.089691572 3.83038139 0.08969152 -0.070470236
		 3.83038139 0.10546607 -0.048540775 3.83038139 0.11718775 -0.024745911 3.83038139
		 0.12440576 -6.2373601e-08 3.83038139 0.12684311 0.024745801 3.83038139 0.12440577
		 0.048540704 3.83038139 0.11718777 0.070470184 3.83038139 0.10546614 0.089691468 3.83038139
		 0.089691602 0.10546608 3.83038139 0.070470259 0.11718771 3.83038139 0.048540771 0.12440572
		 3.83038139 0.02474587 0.12684307 3.83038139 1.802227e-08;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "23F24D00-0000-7078-61A1-826700000459";
	setAttr ".ics" -type "componentList" 1 "f[32:63]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.015326724511626212 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.5762787e-07 0.11187229 4.1723251e-07 ;
	setAttr ".rs" 774852949;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.2836664915084839 0.11187222915911324 -1.2836661338806152 ;
	setAttr ".cbx" -type "double3" 1.2836672067642212 0.11187234609274141 1.2836669683456421 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "23F24D00-0000-7078-61A1-82670000045A";
	setAttr ".uopa" yes;
	setAttr -s 33 ".tk[162:194]" -type "float3"  0.15381065 4.46877956 -0.03059482
		 0.14488642 4.46877956 -0.060013965 -5.5558626e-08 4.46877956 -5.5558626e-08 0.13039434
		 4.46877956 -0.087126777 0.11089125 4.46877956 -0.11089125 0.087126784 4.46877956
		 -0.13039435 0.060013976 4.46877956 -0.14488661 0.030594848 4.46877956 -0.15381069
		 1.4547258e-08 4.46877956 -0.15682414 -0.03059482 4.46877956 -0.15381069 -0.060013976
		 4.46877956 -0.14488663 -0.087126784 4.46877956 -0.13039444 -0.11089126 4.46877956
		 -0.11089137 -0.13039443 4.46877956 -0.087126829 -0.14488663 4.46877956 -0.060014039
		 -0.15381071 4.46877956 -0.030594947 -0.15682416 4.46877956 -1.0696962e-07 -0.15381071
		 4.46877956 0.030594781 -0.1448867 4.46877956 0.060013909 -0.13039446 4.46877956 0.087126754
		 -0.11089138 4.46877956 0.11089124 -0.087126829 4.46877956 0.13039435 -0.060014039
		 4.46877956 0.14488661 -0.030594947 4.46877956 0.15381069 -8.1264055e-08 4.46877956
		 0.15682414 0.030594811 4.46877956 0.15381069 0.060013965 4.46877956 0.14488663 0.087126777
		 4.46877956 0.13039443 0.11089126 4.46877956 0.11089135 0.13039443 4.46877956 0.087126784
		 0.14488663 4.46877956 0.060013976 0.15381071 4.46877956 0.030594818 0.15682416 4.46877956
		 -5.5558626e-08;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "23F24D00-0000-7078-61A1-82800000047E";
	setAttr ".ics" -type "componentList" 1 "f[32:63]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.015326724511626212 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.5762787e-07 0.16405648 4.7683716e-07 ;
	setAttr ".rs" 2131317682;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.5719461441040039 0.16405641865352769 -1.5719456672668457 ;
	setAttr ".cbx" -type "double3" 1.5719468593597412 0.16405653558715586 1.5719466209411621 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "23F24D00-0000-7078-61A1-82800000047F";
	setAttr ".uopa" yes;
	setAttr -s 33 ".tk[194:226]" -type "float3"  0.28274012 3.4047842 -0.056240503
		 0.26633534 3.4047842 -0.11031978 -1.0212982e-07 3.4047842 -1.0212982e-07 0.23969553
		 3.4047842 -0.16015951 0.20384422 3.4047842 -0.20384423 0.16015953 3.4047842 -0.23969556
		 0.11031981 3.4047842 -0.26633561 0.056240544 3.4047842 -0.28274029 2.674129e-08 3.4047842
		 -0.28827959 -0.056240503 3.4047842 -0.28274029 -0.1103198 3.4047842 -0.26633573 -0.16015953
		 3.4047842 -0.23969571 -0.20384428 3.4047842 -0.20384444 -0.23969568 3.4047842 -0.16015962
		 -0.2663357 3.4047842 -0.11031991 -0.28274032 3.4047842 -0.056240715 -0.28827965 3.4047842
		 -1.9663531e-07 -0.28274035 3.4047842 0.056240391 -0.26633584 3.4047842 0.11031967
		 -0.23969576 3.4047842 0.16015945 -0.20384447 3.4047842 0.20384419 -0.16015963 3.4047842
		 0.23969556 -0.11031991 3.4047842 0.26633561 -0.056240711 3.4047842 0.28274029 -1.4938252e-07
		 3.4047842 0.28827959 0.056240436 3.4047842 0.28274029 0.11031977 3.4047842 0.2663357
		 0.16015953 3.4047842 0.23969567 0.20384428 3.4047842 0.20384434 0.23969568 3.4047842
		 0.16015953 0.2663357 3.4047842 0.1103198 0.28274032 3.4047842 0.056240488 0.28827965
		 3.4047842 -1.0212982e-07;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "23F24D00-0000-7078-61A1-8289000004A3";
	setAttr ".ics" -type "componentList" 1 "f[32:63]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.015326724511626212 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.5762787e-07 0.17710252 4.7683716e-07 ;
	setAttr ".rs" 1266751589;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.5880898237228394 0.17710246968130716 -1.5880893468856812 ;
	setAttr ".cbx" -type "double3" 1.5880905389785767 0.17710258661493533 1.5880903005599976 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "23F24D00-0000-7078-61A1-8289000004A4";
	setAttr ".uopa" yes;
	setAttr -s 33 ".tk[226:258]" -type "float3"  0.015833445 0.85119587 -0.0031494678
		 0.01491478 0.85119587 -0.0061779059 -5.7192668e-09 0.85119587 -6.3313985e-09 0.013422947
		 0.85119587 -0.0089689326 0.011415279 0.85119587 -0.01141528 0.0089689307 0.85119587
		 -0.013422951 0.0061779073 0.85119587 -0.014914791 0.0031494703 0.85119587 -0.015833456
		 1.4975128e-09 0.85119587 -0.016143654 -0.0031494678 0.85119587 -0.01583346 -0.0061779069
		 0.85119587 -0.014914798 -0.0089689316 0.85119587 -0.013422962 -0.011415282 0.85119587
		 -0.011415293 -0.013422957 0.85119587 -0.0089689419 -0.014914796 0.85119587 -0.0061779171
		 -0.015833464 0.85119587 -0.0031494815 -0.016143657 0.85119587 -1.1623705e-08 -0.015833464
		 0.85119587 0.0031494601 -0.014914802 0.85119587 0.0061778994 -0.013422964 0.85119587
		 0.0089689251 -0.011415293 0.85119587 0.011415275 -0.0089689419 0.85119587 0.013422949
		 -0.0061779171 0.85119587 0.014914789 -0.0031494801 0.85119587 0.015833452 -8.3654195e-09
		 0.85119587 0.016143654 0.0031494647 0.85119587 0.015833456 0.0061779041 0.85119587
		 0.014914793 0.0089689326 0.85119587 0.013422957 0.011415282 0.85119587 0.011415285
		 0.013422957 0.85119587 0.0089689335 0.014914796 0.85119587 0.0061779069 0.015833464
		 0.85119587 0.0031494661 0.016143657 0.85119587 -6.3313985e-09;
createNode polyTweak -n "polyTweak5";
	rename -uid "23F24D00-0000-7078-61A1-82A0000004BD";
	setAttr ".uopa" yes;
	setAttr -s 33 ".tk[258:290]" -type "float3"  -0.024881126 0.85119587 0.0049491636
		 -0.023437507 0.85119587 0.0097081373 8.9874188e-09 0.85119587 9.94934e-09 -0.021093205
		 0.85119587 0.014094034 -0.017938294 0.85119587 0.017938295 -0.014094035 0.85119587
		 0.02109321 -0.00970814 0.85119587 0.023437528 -0.0049491674 0.85119587 0.024881143
		 -2.3532347e-09 0.85119587 0.025368599 0.0049491636 0.85119587 0.024881151 0.00970814
		 0.85119587 0.023437537 0.014094036 0.85119587 0.021093225 0.017938299 0.85119587
		 0.017938314 0.021093218 0.85119587 0.014094051 0.023437535 0.85119587 0.0097081568
		 0.024881151 0.85119587 0.0049491851 0.025368605 0.85119587 1.8265823e-08 0.024881156
		 0.85119587 -0.0049491511 0.023437543 0.85119587 -0.009708127 0.021093229 0.85119587
		 -0.014094026 0.01793832 0.85119587 -0.01793829 0.014094051 0.85119587 -0.021093206
		 0.0097081549 0.85119587 -0.023437526 0.0049491827 0.85119587 -0.024881141 1.314566e-08
		 0.85119587 -0.025368599 -0.0049491576 0.85119587 -0.024881143 -0.0097081345 0.85119587
		 -0.023437532 -0.014094034 0.85119587 -0.021093218 -0.017938299 0.85119587 -0.017938305
		 -0.021093218 0.85119587 -0.014094038 -0.023437535 0.85119587 -0.0097081382 -0.024881151
		 0.85119587 -0.0049491613 -0.025368605 0.85119587 9.94934e-09;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "23F24D00-0000-7078-61A1-82A0000004BE";
	setAttr ".dc" -type "componentList" 1 "f[32:63]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "23F24D00-0000-7078-61A1-82D80000050A";
	setAttr ".dc" -type "componentList" 2 "f[16]" "f[64:127]";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "23F24D00-0000-7078-61A1-82DD00000516";
	setAttr ".dc" -type "componentList" 1 "f[0:30]";
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "23F24D00-0000-7078-61A1-8405000005F5";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.015326724511626212 0 0 0 0 1 0 0 0.40249712287851375 0 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak6";
	rename -uid "23F24D00-0000-7078-61A1-8405000005F6";
	setAttr ".uopa" yes;
	setAttr -s 33 ".tk";
	setAttr ".tk[2]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[3]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[5]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[7]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[9]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[11]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[13]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[15]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[17]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[19]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[21]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[23]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[25]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[27]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[29]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[31]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[33]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[35]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[37]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[39]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[41]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[43]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[45]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[47]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[49]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[51]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[53]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[55]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[57]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[59]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[61]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[63]" -type "float3" 0 -1.6496828 0 ;
	setAttr ".tk[64]" -type "float3" 0 -1.6496828 0 ;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "23F24D00-0000-7078-61A1-84200000060C";
	setAttr ".ics" -type "componentList" 3 "vtx[45]" "vtx[47]" "vtx[64]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.015326724511626212 0 0 0 0 1 0 0 0.40249712287851375 0 1;
	setAttr ".d" 0.015;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "23F24D00-0000-7078-61A1-844E0000062A";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.015326724511626212 0 0 0 0 1 0 0 0.40249712287851375 0 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak7";
	rename -uid "23F24D00-0000-7078-61A1-844E0000062B";
	setAttr ".uopa" yes;
	setAttr -s 33 ".tk";
	setAttr ".tk[2]" -type "float3" -0.001211535 4.6796567e-10 -0.01297656 ;
	setAttr ".tk[3]" -type "float3" 0.0013433472 -2.3398279e-09 -0.012963577 ;
	setAttr ".tk[5]" -type "float3" -0.0037198586 4.6796567e-10 -0.012490869 ;
	setAttr ".tk[7]" -type "float3" -0.0060852296 4.6796567e-10 -0.011525149 ;
	setAttr ".tk[9]" -type "float3" -0.0082167499 4.6796567e-10 -0.010116531 ;
	setAttr ".tk[11]" -type "float3" -0.010032505 4.6796567e-10 -0.0083191367 ;
	setAttr ".tk[13]" -type "float3" -0.011462718 4.6796567e-10 -0.006202043 ;
	setAttr ".tk[15]" -type "float3" -0.012452426 4.6796567e-10 -0.0038466072 ;
	setAttr ".tk[17]" -type "float3" -0.012963589 4.6796567e-10 -0.0013433484 ;
	setAttr ".tk[19]" -type "float3" -0.012976575 4.6796567e-10 0.0012115337 ;
	setAttr ".tk[21]" -type "float3" -0.012490881 4.6796567e-10 0.0037198598 ;
	setAttr ".tk[23]" -type "float3" -0.011525163 4.6796567e-10 0.0060852314 ;
	setAttr ".tk[25]" -type "float3" -0.010116538 4.6796567e-10 0.0082167527 ;
	setAttr ".tk[27]" -type "float3" -0.0083191451 4.6796567e-10 0.010032508 ;
	setAttr ".tk[29]" -type "float3" -0.0062020491 4.6796567e-10 0.01146272 ;
	setAttr ".tk[31]" -type "float3" -0.0038466146 4.6796567e-10 0.012452425 ;
	setAttr ".tk[33]" -type "float3" -0.0013433556 4.6796567e-10 0.012963593 ;
	setAttr ".tk[35]" -type "float3" 0.0012115292 4.6796567e-10 0.012976578 ;
	setAttr ".tk[37]" -type "float3" 0.0037198539 4.6796567e-10 0.012490881 ;
	setAttr ".tk[39]" -type "float3" 0.0060852258 4.6796567e-10 0.011525163 ;
	setAttr ".tk[41]" -type "float3" 0.0082167489 4.6796567e-10 0.01011654 ;
	setAttr ".tk[43]" -type "float3" 0.0100325 4.6796567e-10 0.0083191441 ;
	setAttr ".tk[45]" -type "float3" 0.011462716 4.79177e-07 0.0062020486 ;
	setAttr ".tk[47]" -type "float3" 0.012452425 4.79177e-07 0.0038466123 ;
	setAttr ".tk[49]" -type "float3" 0.012963588 4.6796567e-10 0.001343352 ;
	setAttr ".tk[51]" -type "float3" 0.012976572 4.6796567e-10 -0.0012115312 ;
	setAttr ".tk[53]" -type "float3" 0.012490877 4.6796567e-10 -0.0037198591 ;
	setAttr ".tk[55]" -type "float3" 0.011525159 4.6796567e-10 -0.0060852324 ;
	setAttr ".tk[57]" -type "float3" 0.010116534 4.6796567e-10 -0.0082167527 ;
	setAttr ".tk[59]" -type "float3" 0.0083191358 4.6796567e-10 -0.010032508 ;
	setAttr ".tk[61]" -type "float3" 0.0062020416 4.6796567e-10 -0.011462724 ;
	setAttr ".tk[63]" -type "float3" 0.0038466032 4.6796567e-10 -0.012452432 ;
	setAttr ".tk[64]" -type "float3" -4.9712892e-09 4.7636917e-07 3.1885758e-09 ;
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "23F24D00-0000-7078-61A1-847000000661";
	setAttr ".ics" -type "componentList" 1 "vtx[0:224]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.015326724511626212 0 0 0 0 1 0 0 0.40249712287851375 0 1;
	setAttr ".d" 0.015;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert5";
	rename -uid "23F24D00-0000-7078-61A1-84B200000684";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.015326724511626212 0 0 0 0 1 0 0 0.40249712287851375 0 1;
	setAttr ".d" 0.015;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak8";
	rename -uid "23F24D00-0000-7078-61A1-84B200000685";
	setAttr ".uopa" yes;
	setAttr -s 33 ".tk";
	setAttr ".tk[2]" -type "float3" 0.0038583134 0 0.0091214338 ;
	setAttr ".tk[3]" -type "float3" 0.0020046735 0 0.0096988883 ;
	setAttr ".tk[5]" -type "float3" 0.0055636819 0 0.0081934482 ;
	setAttr ".tk[7]" -type "float3" 0.0070552416 0 0.0069505963 ;
	setAttr ".tk[9]" -type "float3" 0.0082756709 0 0.0054406323 ;
	setAttr ".tk[11]" -type "float3" 0.0091780722 0 0.0037215892 ;
	setAttr ".tk[13]" -type "float3" 0.0097277677 0 0.0018595275 ;
	setAttr ".tk[15]" -type "float3" 0.0099036274 0 -7.399507e-05 ;
	setAttr ".tk[17]" -type "float3" 0.0096988957 0 -0.0020046742 ;
	setAttr ".tk[19]" -type "float3" 0.0091214431 0 -0.0038583153 ;
	setAttr ".tk[21]" -type "float3" 0.0081934575 0 -0.0055636847 ;
	setAttr ".tk[23]" -type "float3" 0.0069506019 0 -0.0070552439 ;
	setAttr ".tk[25]" -type "float3" 0.0054406393 0 -0.0082756747 ;
	setAttr ".tk[27]" -type "float3" 0.0037215962 0 -0.0091780759 ;
	setAttr ".tk[29]" -type "float3" 0.0018595334 0 -0.0097277677 ;
	setAttr ".tk[31]" -type "float3" -7.3989766e-05 0 -0.0099036312 ;
	setAttr ".tk[33]" -type "float3" -0.0020046702 0 -0.0096989004 ;
	setAttr ".tk[35]" -type "float3" -0.003858312 0 -0.0091214469 ;
	setAttr ".tk[37]" -type "float3" -0.0055636819 0 -0.0081934603 ;
	setAttr ".tk[39]" -type "float3" -0.0070552402 0 -0.0069506047 ;
	setAttr ".tk[41]" -type "float3" -0.0082756709 0 -0.0054406403 ;
	setAttr ".tk[43]" -type "float3" -0.0091780722 0 -0.0037215962 ;
	setAttr ".tk[45]" -type "float3" -0.0097277677 0 -0.0018595331 ;
	setAttr ".tk[47]" -type "float3" -0.0099036274 9.5367432e-07 7.3990785e-05 ;
	setAttr ".tk[49]" -type "float3" -0.0096988967 9.5367432e-07 0.0020046711 ;
	setAttr ".tk[51]" -type "float3" -0.0091214413 -4.7683716e-07 0.0038583134 ;
	setAttr ".tk[53]" -type "float3" -0.0081934556 0 0.0055636833 ;
	setAttr ".tk[55]" -type "float3" -0.0069506005 0 0.0070552435 ;
	setAttr ".tk[57]" -type "float3" -0.0054406342 0 0.0082756747 ;
	setAttr ".tk[59]" -type "float3" -0.0037215892 0 0.0091780759 ;
	setAttr ".tk[61]" -type "float3" -0.0018595259 0 0.0097277677 ;
	setAttr ".tk[63]" -type "float3" 7.3998948e-05 0 0.0099036312 ;
	setAttr ".tk[64]" -type "float3" 2.9262122e-09 9.5367432e-07 -3.5627226e-09 ;
createNode deleteComponent -n "deleteComponent5";
	rename -uid "23F24D00-0000-7078-61A1-852600000703";
	setAttr ".dc" -type "componentList" 1 "f[160:191]";
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "3552D1DC-4EE0-5620-3167-ED92E0B2B145";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 31 "e[290]" "e[292]" "e[294]" "e[296]" "e[298]" "e[300]" "e[302]" "e[304]" "e[306]" "e[308]" "e[310]" "e[312]" "e[314]" "e[316]" "e[318]" "e[320]" "e[322]" "e[324]" "e[326]" "e[328]" "e[330]" "e[332]" "e[334]" "e[336]" "e[338]" "e[340]" "e[342]" "e[344]" "e[346]" "e[348]" "e[350:351]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.015326724511626212 0 0 0 0 1 0 0 0.40249712287851375 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.5762787e-07 0.57959968 4.7683716e-07 ;
	setAttr ".rs" 43883;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.5880898237228394 0.57959959255982096 -1.5880893468856812 ;
	setAttr ".cbx" -type "double3" 1.5880905389785767 0.57959970949344908 1.5880903005599976 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	rename -uid "C9E199E2-4544-EA11-5187-D2AD0C4F40C0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 31 "e[354]" "e[356]" "e[358]" "e[360]" "e[362]" "e[364]" "e[366]" "e[368]" "e[370]" "e[372]" "e[374]" "e[376]" "e[378]" "e[380]" "e[382]" "e[384]" "e[386]" "e[388]" "e[390]" "e[392]" "e[394]" "e[396]" "e[398]" "e[400]" "e[402]" "e[404]" "e[406]" "e[408]" "e[410]" "e[412]" "e[414:415]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.015326724511626212 0 0 0 0 1 0 0 0.40249712287851375 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.5762787e-07 0.54353189 4.7683716e-07 ;
	setAttr ".rs" 44208;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.2936438322067261 0.54353182421818191 -1.2936433553695679 ;
	setAttr ".cbx" -type "double3" 1.2936445474624634 0.54353194115181003 1.2936443090438843 ;
createNode polyTweak -n "polyTweak9";
	rename -uid "C2AD1AEB-42CB-B24F-4595-73AC3959F30B";
	setAttr ".uopa" yes;
	setAttr -s 66 ".tk";
	setAttr ".tk[2]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".tk[3]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".tk[5]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".tk[7]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".tk[9]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".tk[11]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".tk[13]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".tk[15]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".tk[17]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".tk[19]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".tk[21]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".tk[23]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".tk[25]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".tk[27]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".tk[29]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".tk[31]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".tk[33]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".tk[35]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".tk[37]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".tk[39]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".tk[41]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".tk[43]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".tk[44]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".tk[45]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".tk[47]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".tk[49]" -type "float3" 0 -4.7683716e-06 0 ;
	setAttr ".tk[51]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".tk[53]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".tk[55]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".tk[57]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".tk[59]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".tk[61]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".tk[63]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".tk[64]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".tk[193]" -type "float3" -0.28878793 -2.35326 0.057443537 ;
	setAttr ".tk[194]" -type "float3" -0.27203211 -2.35326 0.11267944 ;
	setAttr ".tk[195]" -type "float3" -0.24482277 -2.35326 0.16358538 ;
	setAttr ".tk[196]" -type "float3" -0.20820436 -2.35326 0.20820436 ;
	setAttr ".tk[197]" -type "float3" -0.16358539 -2.35326 0.24482295 ;
	setAttr ".tk[198]" -type "float3" -0.11267947 -2.35326 0.27203274 ;
	setAttr ".tk[199]" -type "float3" -0.057443593 -2.35326 0.28878841 ;
	setAttr ".tk[200]" -type "float3" -2.7313284e-08 -2.35326 0.29444596 ;
	setAttr ".tk[201]" -type "float3" 0.057443537 -2.35326 0.28878844 ;
	setAttr ".tk[202]" -type "float3" 0.11267946 -2.35326 0.2720328 ;
	setAttr ".tk[203]" -type "float3" 0.16358541 -2.35326 0.24482304 ;
	setAttr ".tk[204]" -type "float3" 0.20820448 -2.35326 0.20820466 ;
	setAttr ".tk[205]" -type "float3" 0.24482298 -2.35326 0.16358566 ;
	setAttr ".tk[206]" -type "float3" 0.2720328 -2.35326 0.11267982 ;
	setAttr ".tk[207]" -type "float3" 0.28878844 -2.35326 0.057443716 ;
	setAttr ".tk[208]" -type "float3" 0.29444599 -2.35326 2.120062e-07 ;
	setAttr ".tk[209]" -type "float3" 0.28878847 -2.35326 -0.057443298 ;
	setAttr ".tk[210]" -type "float3" 0.27203292 -2.35326 -0.11267933 ;
	setAttr ".tk[211]" -type "float3" 0.24482304 -2.35326 -0.16358531 ;
	setAttr ".tk[212]" -type "float3" 0.20820467 -2.35326 -0.20820434 ;
	setAttr ".tk[213]" -type "float3" 0.16358566 -2.35326 -0.2448228 ;
	setAttr ".tk[214]" -type "float3" 0.11267981 -2.35326 -0.27203274 ;
	setAttr ".tk[215]" -type "float3" 0.057443663 -2.35326 -0.28878841 ;
	setAttr ".tk[216]" -type "float3" 1.5257778e-07 -2.35326 -0.29444596 ;
	setAttr ".tk[217]" -type "float3" -0.057443373 -2.35326 -0.28878841 ;
	setAttr ".tk[218]" -type "float3" -0.11267944 -2.35326 -0.2720328 ;
	setAttr ".tk[219]" -type "float3" -0.16358538 -2.35326 -0.24482298 ;
	setAttr ".tk[220]" -type "float3" -0.20820448 -2.35326 -0.20820458 ;
	setAttr ".tk[221]" -type "float3" -0.24482298 -2.35326 -0.16358541 ;
	setAttr ".tk[222]" -type "float3" -0.2720328 -2.35326 -0.11267944 ;
	setAttr ".tk[223]" -type "float3" -0.28878844 -2.35326 -0.057443529 ;
	setAttr ".tk[224]" -type "float3" -0.29444599 -2.35326 1.1547903e-07 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge3";
	rename -uid "2AB179FB-428E-80F0-E0C0-8889E3F0055E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 31 "e[418]" "e[420]" "e[422]" "e[424]" "e[426]" "e[428]" "e[430]" "e[432]" "e[434]" "e[436]" "e[438]" "e[440]" "e[442]" "e[444]" "e[446]" "e[448]" "e[450]" "e[452]" "e[454]" "e[456]" "e[458]" "e[460]" "e[462]" "e[464]" "e[466]" "e[468]" "e[470]" "e[472]" "e[474]" "e[476]" "e[478:479]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.015326724511626212 0 0 0 0 1 0 0 0.40249712287851375 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.5762787e-07 0.46766809 4.7683716e-07 ;
	setAttr ".rs" 46911;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.1191724538803101 0.4676680707428732 -1.1191718578338623 ;
	setAttr ".cbx" -type "double3" 1.1191731691360474 0.4676681145929838 1.1191728115081787 ;
createNode polyTweak -n "polyTweak10";
	rename -uid "67F5340E-431B-D4F4-5E85-7FA3385EF835";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk[225:256]" -type "float3"  -0.17111856 -4.94977045 0.034037635
		 -0.16119024 -4.94977045 0.066767149 -0.14506747 -4.9497695 0.096931018 -0.12336949
		 -4.9497695 0.12336961 -0.096931018 -4.9497695 0.14506747 -0.066767216 -4.9497695
		 0.16119027 -0.034037646 -4.9497695 0.17111909 -1.6184249e-08 -4.9497695 0.17447151
		 0.034037635 -4.9497695 0.17111906 0.066767193 -4.9497695 0.16119033 0.096931018 -4.9497695
		 0.14506751 0.12336973 -4.9497695 0.12336984 0.1450675 -4.9497695 0.096931092 0.1611903
		 -4.9497695 0.066767298 0.17111902 -4.9497695 0.03403775 0.17447142 -4.9497695 1.2562215e-07
		 0.17111908 -4.9497695 -0.034037527 0.16119049 -4.9497695 -0.066767119 0.14506754
		 -4.9497695 -0.096930817 0.12336984 -4.9497695 -0.12336945 0.096931092 -4.9497695
		 -0.14506747 0.066767298 -4.9497695 -0.16119024 0.034037735 -4.9497695 -0.17111903
		 9.0408712e-08 -4.9497695 -0.17447151 -0.034037597 -4.9497695 -0.17111909 -0.066767141
		 -4.9497695 -0.1611903 -0.096931018 -4.9497695 -0.1450675 -0.12336973 -4.9497695 -0.12336979
		 -0.1450675 -4.9497695 -0.096931018 -0.1611903 -4.9497695 -0.066767164 -0.17111902
		 -4.9497695 -0.034037609 -0.17447142 -4.9497695 6.8426196e-08;
createNode polyExtrudeEdge -n "polyExtrudeEdge4";
	rename -uid "FBCF74AA-4D34-F306-A5ED-BA88EBB99C30";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 31 "e[482]" "e[484]" "e[486]" "e[488]" "e[490]" "e[492]" "e[494]" "e[496]" "e[498]" "e[500]" "e[502]" "e[504]" "e[506]" "e[508]" "e[510]" "e[512]" "e[514]" "e[516]" "e[518]" "e[520]" "e[522]" "e[524]" "e[526]" "e[528]" "e[530]" "e[532]" "e[534]" "e[536]" "e[538]" "e[540]" "e[542:543]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.015326724511626212 0 0 0 0 1 0 0 0.40249712287851375 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.5762787e-07 0.4272086 4.7683716e-07 ;
	setAttr ".rs" 42509;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.9643101692199707 0.4272085749695545 -0.96430957317352295 ;
	setAttr ".cbx" -type "double3" 0.96431088447570801 0.42720863343636856 0.96431052684783936 ;
createNode polyTweak -n "polyTweak11";
	rename -uid "82B4A1F8-4BCC-685B-7FAB-92A734E50E4F";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk[257:288]" -type "float3"  -0.15188661 -2.63980007 0.030212104
		 -0.14307404 -2.63980007 0.059263278 -0.12876327 -2.63980007 0.086036883 -0.10950415
		 -2.63980007 0.10950415 -0.086036891 -2.63980007 0.12876327 -0.059263289 -2.63980007
		 0.14307414 -0.030212155 -2.63980007 0.15188666 -1.4365298e-08 -2.63980007 0.15486227
		 0.030212104 -2.63980007 0.15188667 0.059263289 -2.63980007 0.1430742 0.086036891
		 -2.63980007 0.12876335 0.10950415 -2.63980007 0.10950433 0.12876332 -2.63980007 0.08603695
		 0.14307417 -2.63980007 0.059263334 0.15188669 -2.63980007 0.030212268 0.15486231
		 -2.63980007 1.1150345e-07 0.1518867 -2.63980007 -0.030212063 0.1430742 -2.63980007
		 -0.059263155 0.12876336 -2.63980007 -0.086036868 0.10950433 -2.63980007 -0.10950414
		 0.08603695 -2.63980007 -0.12876327 0.05926333 -2.63980007 -0.14307414 0.030212253
		 -2.63980007 -0.15188666 8.0247574e-08 -2.63980007 -0.15486227 -0.030212086 -2.63980007
		 -0.15188666 -0.059263218 -2.63980007 -0.14307415 -0.086036883 -2.63980007 -0.12876332
		 -0.10950415 -2.63980007 -0.10950416 -0.12876332 -2.63980007 -0.086036891 -0.14307417
		 -2.63980007 -0.059263285 -0.15188669 -2.63980007 -0.030212088 -0.15486231 -2.63980007
		 6.073563e-08;
createNode polyNormal -n "polyNormal1";
	rename -uid "F3C8DC33-4F26-16EC-D8FA-BC8B7E6E474F";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
createNode polyTweak -n "polyTweak12";
	rename -uid "0B4AB632-4FDB-E9AF-4986-11AC34DA5595";
	setAttr ".uopa" yes;
	setAttr -s 65 ".tk";
	setAttr ".tk[64]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".tk[161]" -type "float3" 0 1.4680216 0 ;
	setAttr ".tk[162]" -type "float3" 0 1.4680216 0 ;
	setAttr ".tk[163]" -type "float3" 0 1.4680216 0 ;
	setAttr ".tk[164]" -type "float3" 0 1.4680216 0 ;
	setAttr ".tk[165]" -type "float3" 0 1.4680216 0 ;
	setAttr ".tk[166]" -type "float3" 0 1.4680216 0 ;
	setAttr ".tk[167]" -type "float3" 0 1.4680216 0 ;
	setAttr ".tk[168]" -type "float3" 0 1.4680216 0 ;
	setAttr ".tk[169]" -type "float3" 0 1.4680216 0 ;
	setAttr ".tk[170]" -type "float3" 0 1.4680216 0 ;
	setAttr ".tk[171]" -type "float3" 0 1.4680216 0 ;
	setAttr ".tk[172]" -type "float3" 0 1.4680216 0 ;
	setAttr ".tk[173]" -type "float3" 0 1.4680216 0 ;
	setAttr ".tk[174]" -type "float3" 0 1.4680216 0 ;
	setAttr ".tk[175]" -type "float3" 0 1.4680216 0 ;
	setAttr ".tk[176]" -type "float3" 0 1.4680216 0 ;
	setAttr ".tk[177]" -type "float3" 0 1.4680216 0 ;
	setAttr ".tk[178]" -type "float3" 0 1.4680216 0 ;
	setAttr ".tk[179]" -type "float3" 0 1.4680216 0 ;
	setAttr ".tk[180]" -type "float3" 0 1.4680216 0 ;
	setAttr ".tk[181]" -type "float3" 0 1.4680216 0 ;
	setAttr ".tk[182]" -type "float3" 0 1.4680216 0 ;
	setAttr ".tk[183]" -type "float3" 0 1.4680216 0 ;
	setAttr ".tk[184]" -type "float3" 0 1.4680216 0 ;
	setAttr ".tk[185]" -type "float3" 0 1.4680216 0 ;
	setAttr ".tk[186]" -type "float3" 0 1.4680216 0 ;
	setAttr ".tk[187]" -type "float3" 0 1.4680216 0 ;
	setAttr ".tk[188]" -type "float3" 0 1.4680216 0 ;
	setAttr ".tk[189]" -type "float3" 0 1.4680216 0 ;
	setAttr ".tk[190]" -type "float3" 0 1.4680216 0 ;
	setAttr ".tk[191]" -type "float3" 0 1.4680216 0 ;
	setAttr ".tk[192]" -type "float3" 0 1.4680216 0 ;
	setAttr ".tk[289]" -type "float3" -0.94414729 7.6293945e-06 0.18780251 ;
	setAttr ".tk[290]" -type "float3" -0.88936728 7.6293945e-06 0.36838821 ;
	setAttr ".tk[291]" -type "float3" -0.80040944 7.6293945e-06 0.53481674 ;
	setAttr ".tk[292]" -type "float3" -0.68069255 7.6293945e-06 0.68069255 ;
	setAttr ".tk[293]" -type "float3" -0.5348168 7.6293945e-06 0.80040956 ;
	setAttr ".tk[294]" -type "float3" -0.3683883 7.6293945e-06 0.88936788 ;
	setAttr ".tk[295]" -type "float3" -0.18780266 7.6293945e-06 0.94414747 ;
	setAttr ".tk[296]" -type "float3" -8.9296648e-08 7.6293945e-06 0.96264482 ;
	setAttr ".tk[297]" -type "float3" 0.18780251 7.6293945e-06 0.94414765 ;
	setAttr ".tk[298]" -type "float3" 0.3683883 7.6293945e-06 0.88936841 ;
	setAttr ".tk[299]" -type "float3" 0.5348168 7.6293945e-06 0.80041021 ;
	setAttr ".tk[300]" -type "float3" 0.68069255 7.6293945e-06 0.68069315 ;
	setAttr ".tk[301]" -type "float3" 0.80040991 7.6293945e-06 0.5348174 ;
	setAttr ".tk[302]" -type "float3" 0.88936812 7.6293945e-06 0.36838883 ;
	setAttr ".tk[303]" -type "float3" 0.94414788 7.6293945e-06 0.18780339 ;
	setAttr ".tk[304]" -type "float3" 0.96264529 7.6293945e-06 6.9312068e-07 ;
	setAttr ".tk[305]" -type "float3" 0.944148 7.6293945e-06 -0.18780212 ;
	setAttr ".tk[306]" -type "float3" 0.88936853 7.6293945e-06 -0.36838782 ;
	setAttr ".tk[307]" -type "float3" 0.80041051 7.6293945e-06 -0.5348165 ;
	setAttr ".tk[308]" -type "float3" 0.68069327 7.6293945e-06 -0.68069243 ;
	setAttr ".tk[309]" -type "float3" 0.5348174 7.6293945e-06 -0.80040944 ;
	setAttr ".tk[310]" -type "float3" 0.3683888 7.6293945e-06 -0.88936776 ;
	setAttr ".tk[311]" -type "float3" 0.1878033 7.6293945e-06 -0.94414735 ;
	setAttr ".tk[312]" -type "float3" 4.9882931e-07 7.6293945e-06 -0.96264482 ;
	setAttr ".tk[313]" -type "float3" -0.18780236 7.6293945e-06 -0.94414747 ;
	setAttr ".tk[314]" -type "float3" -0.36838818 7.6293945e-06 -0.889368 ;
	setAttr ".tk[315]" -type "float3" -0.53481674 7.6293945e-06 -0.80040991 ;
	setAttr ".tk[316]" -type "float3" -0.68069255 7.6293945e-06 -0.68069267 ;
	setAttr ".tk[317]" -type "float3" -0.80040991 7.6293945e-06 -0.5348168 ;
	setAttr ".tk[318]" -type "float3" -0.88936812 7.6293945e-06 -0.36838827 ;
	setAttr ".tk[319]" -type "float3" -0.94414788 7.6293945e-06 -0.1878024 ;
	setAttr ".tk[320]" -type "float3" -0.96264529 7.6293945e-06 3.7754077e-07 ;
createNode polyPlanarProj -n "polyPlanarProj1";
	rename -uid "EB7B6382-4BB8-083F-153A-25A1E22CAE0B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:127]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.015326724511626212 0 0 0 0 1 0 0 0.39212197990987369 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -6.2248392396213603e-07 0.46648687124252319 6.5588199049670948e-07 ;
	setAttr ".ro" -type "double3" 90.000002145693145 -67.354561508976033 -1.9930522897086007e-06 ;
	setAttr ".ps" -type "double2" 3.1438824641773992 3.1438812215639773 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj2";
	rename -uid "68FD95C0-43C8-4764-86AB-5A82F638AA15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:127]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.015326724511626212 0 0 0 0 1 0 0 0.39212197990987369 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 3.5762786865234375e-07 0.46648690104484558 7.152557373046875e-07 ;
	setAttr ".ps" -type "double2" 3.1438930034637451 0.17938333749771118 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj3";
	rename -uid "1B9CBFF1-457A-48A9-CEFB-1B89FF79A2C7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:127]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.015326724511626212 0 0 0 0 1 0 0 0.39212197990987369 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 3.5762786865234375e-07 0.46648690104484558 7.152557373046875e-07 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 3.1438930034637451 3.1438922882080078 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj4";
	rename -uid "51D9DAA8-40E3-FA13-0901-5D90542B5651";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:127]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.015326724511626212 0 0 0 0 1 0 0 0.39212197990987369 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 3.5762786865234375e-07 0.46648724377155304 7.152557373046875e-07 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 3.1438930034637451 3.1438922882080078 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak13";
	rename -uid "74D93B6C-4874-876D-F335-F5A80F0DA5A2";
	setAttr ".uopa" yes;
	setAttr -s 162 ".tk";
	setAttr ".tk[0]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[1]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[2]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[3]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[4]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[5]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[6]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[7]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[8]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[9]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[10]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[11]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[12]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[13]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[14]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[15]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[16]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[17]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[18]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[19]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[20]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[21]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[22]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[23]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[24]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[25]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[26]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[27]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[28]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[29]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[30]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[31]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[32]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[33]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[34]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[35]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[36]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[37]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[38]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[39]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[40]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[41]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[42]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[43]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[44]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[45]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[46]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[47]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[48]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[49]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[50]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[51]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[52]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[53]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[54]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[55]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[56]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[57]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[58]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[59]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[60]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[61]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[62]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[63]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[64]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[65]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[66]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[67]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[68]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[69]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[70]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[71]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[72]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[73]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[74]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[75]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[76]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[77]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[78]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[79]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[80]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[81]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[82]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[83]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[84]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[85]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[86]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[87]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[88]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[89]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[90]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[91]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[92]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[93]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[94]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[95]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[96]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[97]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[98]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[99]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[100]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[101]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[102]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[103]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[104]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[105]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[106]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[107]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[108]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[109]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[110]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[111]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[112]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[113]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[114]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[115]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[116]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[117]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[118]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[119]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[120]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[121]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[122]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[123]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[124]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[125]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[126]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[127]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[128]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[129]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[130]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[131]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[132]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[133]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[134]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[135]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[136]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[137]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[138]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[139]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[140]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[141]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[142]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[143]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[144]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[145]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[146]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[147]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[148]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[149]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[150]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[151]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[152]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[153]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[154]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[155]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[156]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[157]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[158]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[159]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
	setAttr ".tk[160]" -type "float3" 0 2.2888184e-05 2.3841858e-07 ;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "57138559-4B23-7B27-5EE8-1993B3D71BA4";
	setAttr ".uopa" yes;
	setAttr -s 161 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[1]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[2]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[3]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[4]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[5]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[6]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[7]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[8]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[9]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[10]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[11]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[12]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[13]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[14]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[15]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[16]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[17]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[18]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[19]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[20]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[21]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[22]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[23]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[24]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[25]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[26]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[27]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[28]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[29]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[30]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[31]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[32]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[33]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[34]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[35]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[36]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[37]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[38]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[39]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[40]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[41]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[42]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[43]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[44]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[45]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[46]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[47]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[48]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[49]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[50]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[51]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[52]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[53]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[54]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[55]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[56]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[57]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[58]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[59]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[60]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[61]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[62]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[63]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[64]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[65]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[66]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[67]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[68]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[69]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[70]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[71]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[72]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[73]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[74]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[75]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[76]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[77]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[78]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[79]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[80]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[81]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[82]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[83]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[84]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[85]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[86]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[87]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[88]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[89]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[90]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[91]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[92]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[93]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[94]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[95]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[96]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[97]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[98]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[99]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[100]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[101]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[102]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[103]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[104]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[105]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[106]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[107]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[108]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[109]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[110]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[111]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[112]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[113]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[114]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[115]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[116]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[117]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[118]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[119]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[120]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[121]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[122]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[123]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[124]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[125]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[126]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[127]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[128]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[705]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[706]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[707]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[708]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[709]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[710]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[711]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[712]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[713]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[714]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[715]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[716]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[717]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[718]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[719]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[720]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[721]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[722]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[723]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[724]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[725]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[726]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[727]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[728]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[729]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[730]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[731]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[732]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[733]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[734]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[735]" -type "float2" -1.0190322 0 ;
	setAttr ".uvtk[736]" -type "float2" -1.0190322 0 ;
createNode polyCylProj -n "polyCylProj1";
	rename -uid "018C3463-4C8F-1CE7-2405-9EB19D866240";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[128:159]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.015326724511626212 0 0 0 0 1 0 0 0.39212197990987369 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 3.5762786865234375e-07 0.57395157217979431 4.76837158203125e-07 ;
	setAttr ".ps" -type "double2" 180 0.035545885562896729 ;
	setAttr ".r" 3.176180362701416;
createNode polyCylProj -n "polyCylProj2";
	rename -uid "E82E4E73-4EE9-89E5-CE2B-4788541CA3A1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[128:159]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.015326724511626212 0 0 0 0 1 0 0 0.39212197990987369 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 3.5762786865234375e-07 0.57395157217979431 4.76837158203125e-07 ;
	setAttr ".ps" -type "double2" 180 0.035545885562896729 ;
	setAttr ".r" 3.176180362701416;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "D89E9273-480B-57B4-44B4-578629E75099";
	setAttr ".uopa" yes;
	setAttr -s 67 ".uvtk";
	setAttr ".uvtk[129]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[130]" -type "float2" 0.9980644 0.51021504 ;
	setAttr ".uvtk[131]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[132]" -type "float2" 0.9980644 0.51021504 ;
	setAttr ".uvtk[133]" -type "float2" 0.99806464 0.51021504 ;
	setAttr ".uvtk[134]" -type "float2" 0.9980644 0.51021504 ;
	setAttr ".uvtk[135]" -type "float2" 0.99806464 0.51021504 ;
	setAttr ".uvtk[136]" -type "float2" 0.99806464 0.51021504 ;
	setAttr ".uvtk[137]" -type "float2" 0.9980644 0.51021504 ;
	setAttr ".uvtk[138]" -type "float2" 0.99806464 0.51021504 ;
	setAttr ".uvtk[139]" -type "float2" 0.99806464 0.51021504 ;
	setAttr ".uvtk[140]" -type "float2" 0.99806464 0.51021504 ;
	setAttr ".uvtk[141]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[142]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[143]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[144]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[145]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[146]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[147]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[148]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[149]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[150]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[151]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[152]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[153]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[154]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[155]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[156]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[157]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[158]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[159]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[160]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[161]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[162]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[163]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[164]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[165]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[166]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[167]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[168]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[169]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[170]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[171]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[172]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[173]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[174]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[175]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[176]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[177]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[178]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[179]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[180]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[181]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[182]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[183]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[184]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[185]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[186]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[187]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[188]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[189]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[190]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[191]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[192]" -type "float2" 0.99806452 0.51021504 ;
	setAttr ".uvtk[737]" -type "float2" 0.99806464 0.51021504 ;
	setAttr ".uvtk[738]" -type "float2" 0.99806464 0.51021504 ;
createNode polyPlanarProj -n "polyPlanarProj5";
	rename -uid "E3E4944A-44F2-273A-81BD-1D8C2358E228";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[160:287]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.015326724511626212 0 0 0 0 1 0 0 0.39212197990987369 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 3.5762786865234375e-07 0.50427897274494171 4.76837158203125e-07 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 3.176180362701416 3.1761796474456787 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyUVRectangle -n "polyUVRectangle1";
	rename -uid "96928205-46EC-3859-DF64-AAA80752C43C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[0:160]";
createNode polyPlanarProj -n "polyPlanarProj6";
	rename -uid "333D7EE3-43A6-484A-8C2B-D188491D168F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:127]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.015326724511626212 0 0 0 0 1 0 0 0.39212197990987369 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 3.5762786865234375e-07 0.46648724377155304 7.152557373046875e-07 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 3.1438930034637451 3.1438922882080078 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj7";
	rename -uid "562B8146-4CB1-1C46-1AE1-A490DEE9DB7E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:127]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.015326724511626212 0 0 0 0 1 0 0 0.39212197990987369 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 3.5762786865234375e-07 0.46648724377155304 7.152557373046875e-07 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 3.1438930034637451 3.1438922882080078 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj8";
	rename -uid "3F88370E-44C7-DD15-3498-3B9ED93289C8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:127]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.015326724511626212 0 0 0 0 1 0 0 0.39212197990987369 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 3.5762786865234375e-07 0.46648718416690826 7.152557373046875e-07 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 3.1438930034637451 3.1438922882080078 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj9";
	rename -uid "67F6B6E0-4F2C-C076-8CB3-3EBB6E74DE45";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:127]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.015326724511626212 0 0 0 0 1 0 0 0.39212197990987369 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 3.5762786865234375e-07 0.46648724377155304 7.152557373046875e-07 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 3.1438930034637451 3.1438922882080078 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "D8001C4C-4078-C88D-7EF1-7A96F9AFA770";
	setAttr ".uopa" yes;
	setAttr -s 161 ".uvtk";
	setAttr ".uvtk[193]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[194]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[195]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[196]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[197]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[198]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[199]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[200]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[201]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[202]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[203]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[204]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[205]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[206]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[207]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[208]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[209]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[210]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[211]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[212]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[213]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[214]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[215]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[216]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[217]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[218]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[219]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[220]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[221]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[222]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[223]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[224]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[225]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[226]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[227]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[228]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[229]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[230]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[231]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[232]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[233]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[234]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[235]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[236]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[237]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[238]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[239]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[240]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[241]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[242]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[243]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[244]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[245]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[246]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[247]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[248]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[249]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[250]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[251]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[252]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[253]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[254]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[255]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[256]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[257]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[258]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[259]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[260]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[261]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[262]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[263]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[264]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[265]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[266]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[267]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[268]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[269]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[270]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[271]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[272]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[273]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[274]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[275]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[276]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[277]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[278]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[279]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[280]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[281]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[282]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[283]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[284]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[285]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[286]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[287]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[288]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[289]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[290]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[291]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[292]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[293]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[294]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[295]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[296]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[297]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[298]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[299]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[300]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[301]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[302]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[303]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[304]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[305]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[306]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[307]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[308]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[309]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[310]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[311]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[312]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[313]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[314]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[315]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[316]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[317]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[318]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[319]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[320]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[321]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[322]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[323]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[324]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[325]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[326]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[327]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[328]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[329]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[330]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[331]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[332]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[333]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[334]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[335]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[336]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[337]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[338]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[339]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[340]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[341]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[342]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[343]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[344]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[345]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[346]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[347]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[348]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[349]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[350]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[351]" -type "float2" -1.0914896 0 ;
	setAttr ".uvtk[352]" -type "float2" -1.0914896 0 ;
createNode polyUVRectangle -n "polyUVRectangle2";
	rename -uid "4BE6C789-49AF-4E0A-E3F8-70970A6B297D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[0:160]";
createNode polyMapCut -n "polyMapCut1";
	rename -uid "FB146053-406A-6646-9B82-5FBAC0814B51";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 32 "e[0:63]" "e[226]" "e[228]" "e[230]" "e[232]" "e[234]" "e[236]" "e[238]" "e[240]" "e[242]" "e[244]" "e[246]" "e[248]" "e[250]" "e[252]" "e[254]" "e[256]" "e[258]" "e[260]" "e[262]" "e[264]" "e[266]" "e[268]" "e[270]" "e[272]" "e[274]" "e[276]" "e[278]" "e[280]" "e[282]" "e[284]" "e[286:287]";
createNode polyMergeUV -n "polyMergeUV1";
	rename -uid "AF6BB808-4669-4CEA-FC6B-CF858F8E21C7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "map[0:128]" "map[355:386]";
	setAttr ".d" 0.0099999997764825821;
createNode polyMergeUV -n "polyMergeUV2";
	rename -uid "65ED5804-4325-D95C-2995-78B9AD8C3CED";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "map[0:128]" "map[355:386]";
	setAttr ".d" 0.0099999997764825821;
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "11E5704F-4475-0099-3B73-7F93627E848F";
	setAttr ".uopa" yes;
	setAttr -s 387 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" -0.024078906 0.19470298 0.12006384
		 0.22375536 -0.015641451 0.16714036 -0.0019888878 0.14175344 0.016354084 0.11951781
		 0.03868258 0.10128771 0.064138532 0.087764204 0.091743648 0.079466701 0.12043703
		 0.076714218 0.14911622 0.079612553 0.17667884 0.088049889 0.20206583 0.10170247 0.22430149
		 0.12004555 0.2425313 0.14237398 0.25605488 0.16782999 0.26435232 0.19543511 0.26710492
		 0.2241286 0.26420671 0.25280768 0.25576919 0.28037047 0.2421166 0.30575746 0.2237736
		 0.32799298 0.2014451 0.34622282 0.17598915 0.35974646 0.14838403 0.3680439 0.1196906
		 0.37079644 0.091011405 0.36789823 0.063448727 0.35946083 0.038061738 0.34580815 0.015826166
		 0.32746506 -0.0024037361 0.3051365 -0.015927255 0.27968061 -0.024224758 0.25207543
		 -0.026977301 0.22338212 -0.012478352 0.16885459 -0.029290438 0.1618908 -0.038489759
		 0.19221708 -0.020642161 0.19576722 0.0007789731 0.14405179 -0.014351487 0.13394195
		 0.018620431 0.12231196 0.0057530403 0.10944451 0.040360212 0.10447051 0.030250311
		 0.089339972 0.065163016 0.091213107 0.058199227 0.074400902 0.092075586 0.083049238
		 0.088525474 0.06520164 0.12006378 0.080292523 0.12006378 0.062095314 0.14805198 0.083049119
		 0.15160209 0.065201521 0.17496455 0.091212988 0.18192834 0.074400902 0.19976735 0.10447039
		 0.20987725 0.089339972 0.22150722 0.12231184 0.23437461 0.10944439 0.23934865 0.14405179
		 0.25447911 0.13394177 0.25260609 0.16885453 0.26941806 0.16189075 0.2607699 0.1957671
		 0.27861756 0.19221702 0.2635265 0.22375524 0.28172377 0.22375524 0.26076996 0.25174344
		 0.2786175 0.25529355 0.25260615 0.27865595 0.26941818 0.28561991 0.23934877 0.30345893
		 0.25447923 0.31356871 0.22150731 0.32519865 0.2343747 0.3380661 0.19976753 0.34304017
		 0.20987731 0.35817063 0.17496467 0.35629761 0.18192852 0.37310964 0.1480521 0.36446142
		 0.15160215 0.38230902 0.12006384 0.36721826 0.12006384 0.38541543 0.092075646 0.36446154
		 0.088525593 0.38230908 0.065163016 0.35629767 0.058199227 0.37310976 0.040360212
		 0.34304035 0.030250311 0.35817081 0.018620431 0.32519877 0.0057529211 0.33806634
		 0.0007789135 0.30345899 -0.014351547 0.31356877 -0.012478471 0.27865607 -0.029290557
		 0.28561991 -0.02064234 0.25174361 -0.038489938 0.25529367 -0.023398936 0.22375536
		 -0.041596174 0.22375536 -0.050076127 0.15328094 -0.060555816 0.1878278 -0.033058167
		 0.12144256 -0.010155797 0.093535662 0.017750978 0.070633173 0.049589396 0.053615093
		 0.084136248 0.043135669 0.12006378 0.039596882 0.15599126 0.043135669 0.19053817
		 0.053615093 0.22237667 0.070633054 0.25028336 0.093535662 0.27318588 0.12144233 0.29020393
		 0.15328088 0.30068362 0.18782768 0.30422223 0.22375512 0.30068368 0.25968271 0.29020405
		 0.29422963 0.27318597 0.32606822 0.25028354 0.35397494 0.22237679 0.37687755 0.19053823
		 0.39389563 0.15599144 0.4043752 0.1200639 0.40791374 0.084136367 0.40437531 0.049589515
		 0.39389569 0.017750978 0.37687743 -0.010155797 0.35397506 -0.033058286 0.32606834
		 -0.050076365 0.29422975 -0.060556173 0.25968283 -0.064094722 0.22375536 -1.30554056
		 -0.40686005 -1.12844944 -1.40542936 -1.066010952 -1.3893733 -1.24310136 -0.39080411
		 -1.36798096 -0.42290753 -1.19088852 -1.42148161 -1.43041945 -0.43896326 -1.25332713
		 -1.43753743 -1.49285769 -0.45501897 -1.3157661 -1.45359337 -1.55529714 -0.47107497
		 -1.37820506 -1.46964908 -1.6177361 -0.48713073 -1.44064331 -1.4857049 0.31786463
		 0.01059923 0.49495685 -0.98797506 0.25542608 -0.0054567084 0.43251827 -1.0040308237
		 0.19298735 -0.021512475 0.37007967 -1.020086765 0.13054875 -0.03756823 0.30764088
		 -1.036142349 0.068110101 -0.05362406 0.24520227 -1.05219841 0.0056713577 -0.069679894
		 0.18276331 -1.068254113 -0.056767441 -0.085735716 0.12032482 -1.084309816 -0.11920613
		 -0.10179151 0.057886004 -1.10036552 -0.18164489 -0.1178473 -0.004552586 -1.11642134
		 -0.24408379 -0.13390306 -0.066991113 -1.13247716 -0.30652186 -0.14995888 -0.12943023
		 -1.14853311 -0.36896095 -0.1660147 -0.19186872 -1.16458881 -0.43139943 -0.18207043
		 -0.25430742 -1.18064451 -0.49383843 -0.19812632 -0.31674621 -1.19670045 -0.5562771
		 -0.21418205 -0.37918505 -1.21275628 -0.618716 -0.23023793 -0.44162354 -1.2288121
		 -0.68115461 -0.24629368 -0.50406229 -1.2448678 -0.74359339 -0.26234949 -0.56650102
		 -1.26092362 -0.80603194 -0.27840528 -0.62893993 -1.27697933 -0.86847067 -0.2944611
		 -0.69137877 -1.29303527 -0.93090957 -0.31051689 -0.75381732 -1.30909097 -0.99334842
		 -0.32657266 -0.81625605 -1.32514679 -1.055786848 -0.34262851 -0.87869465 -1.34120262
		 -1.11822581 -0.35868433 -0.94113374 -1.35725844 -1.18066478 -0.37474015 -1.0035722256
		 -1.37331426 0.66383207 -0.30388722 0.70214319 -0.28801826 0.69177568 -0.25384101
		 0.65110469 -0.26193097 0.68449998 -0.34255442 0.71897912 -0.31951615 0.71231437 -0.3764464
		 0.74163651 -0.34712431 0.7462064 -0.4042609 0.76924467 -0.3697817 0.78487349 -0.42492899
		 0.80074263 -0.38661775 0.82682979 -0.43765625 0.83491969 -0.39698523 0.87046289 -0.44195387
		 0.87046289 -0.40048605 0.91409588 -0.43765631 0.90600598 -0.39698535 0.9560523 -0.42492905
		 0.94018316 -0.38661775 0.99471939 -0.40426102 0.97168112 -0.36978176 1.028611422
		 -0.37644657 0.99928927 -0.34712443 1.056425929 -0.3425546 1.021946669 -0.31951627
		 1.077094078 -0.3038874 1.038782716 -0.28801838 1.089821339 -0.26193115 1.049150229
		 -0.25384119 1.094118834 -0.21829812 1.052651048 -0.21829806 1.089821339 -0.17466496
		 1.049150348 -0.18275489 1.077094078 -0.13270865 1.038782835 -0.14857762 1.056426048
		 -0.094041482 1.021946788 -0.11707972 1.028611541 -0.060149442 0.99928951 -0.089471593
		 0.99471951 -0.032334935 0.97168124 -0.066814139 0.95605242 -0.011666817 0.9401834
		 -0.049978089 0.91409612 0.0010604151 0.9060061 -0.039610576 0.87046301 0.0053579994
		 0.87046301 -0.036109786 0.82682991 0.0010604747 0.83491993 -0.039610516 0.7848736
		 -0.011666787 0.80074263 -0.049978059 0.7462064 -0.032334816 0.76924467 -0.06681408
		 0.71231437 -0.060149323 0.74163651 -0.089471474 0.68449986 -0.094041362;
	setAttr ".uvtk[250:386]" 0.718979 -0.11707963 0.66383183 -0.13270853 0.70214307
		 -0.14857753 0.65110445 -0.17466487 0.69177544 -0.18275483 0.64680696 -0.218298 0.68827474
		 -0.218298 0.7248441 -0.27861521 0.71587479 -0.24904738 0.73940945 -0.30586502 0.75901103
		 -0.32974973 0.7828958 -0.34935132 0.81014562 -0.36391672 0.83971334 -0.37288603 0.87046289
		 -0.37591466 0.90121233 -0.37288603 0.93078017 -0.36391684 0.95802999 -0.34935144
		 0.98191476 -0.32974985 1.0015163422 -0.30586514 1.01608181 -0.27861533 1.025051117
		 -0.24904756 1.028079629 -0.21829806 1.025051117 -0.1875485 1.01608181 -0.15798067
		 1.0015164614 -0.13073082 0.98191476 -0.10684608 0.9580301 -0.087244466 0.93078029
		 -0.072679058 0.90121245 -0.06370981 0.87046289 -0.060681175 0.83971345 -0.06370981
		 0.81014562 -0.072679028 0.7828958 -0.087244406 0.75901103 -0.10684605 0.73940933
		 -0.13073076 0.72484398 -0.15798061 0.71587467 -0.18754844 0.71284616 -0.218298 0.74499369
		 -0.27026901 0.73726559 -0.24479249 0.75754356 -0.29374823 0.7744329 -0.31432793 0.79501259
		 -0.3312172 0.81849182 -0.34376714 0.84396839 -0.3514953 0.87046289 -0.35410485 0.89695752
		 -0.3514953 0.92243397 -0.34376726 0.9459132 -0.33121732 0.96649289 -0.31432799 0.98338223
		 -0.29374829 0.9959321 -0.27026907 1.0036603212 -0.24479261 1.0062699318 -0.21829806
		 1.0036603212 -0.19180335 0.99593222 -0.1663269 0.98338223 -0.14284764 0.96649301
		 -0.12226792 0.94591331 -0.10537864 0.92243409 -0.092828646 0.89695764 -0.085100546
		 0.87046289 -0.082490996 0.84396839 -0.085100487 0.81849182 -0.092828646 0.79501259
		 -0.10537855 0.7744329 -0.12226789 0.75754356 -0.14284761 0.74499357 -0.16632684 0.73726547
		 -0.19180332 0.73465586 -0.218298 0.87024617 -0.21838771 0.87023282 -0.21834372 0.87026787
		 -0.21842824 0.87029707 -0.21846376 0.8703326 -0.21849291 0.87037313 -0.21851461 0.87041712
		 -0.21852796 0.87046289 -0.21853249 0.87050867 -0.21852796 0.87055266 -0.21851461
		 0.87059319 -0.21849291 0.87062871 -0.21846376 0.87065792 -0.21842824 0.87067962 -0.21838771
		 0.87069297 -0.21834372 0.8706975 -0.21829788 0.87069297 -0.21825217 0.87067962 -0.21820818
		 0.87065792 -0.21816765 0.87062871 -0.21813206 0.87059319 -0.21810292 0.87055266 -0.21808122
		 0.87050867 -0.21806787 0.87046289 -0.2180634 0.87041712 -0.21806787 0.87037313 -0.21808122
		 0.8703326 -0.21810292 0.87029707 -0.21813206 0.87026787 -0.21816765 0.87024617 -0.21820818
		 0.87023282 -0.21825217 0.87022829 -0.21829788 -1.68017423 -0.50318646 -1.50308228
		 -1.50176072 -0.088285446 0.13745421 -0.10111845 0.17975941 -0.067445517 0.098465562
		 -0.039399803 0.064291716 -0.005226016 0.036246028 0.033762634 0.015406035 0.076067805
		 0.0025726855 0.12006378 -0.0017604604 0.1640597 0.0025727451 0.20636493 0.015405916
		 0.24535364 0.036245968 0.27952743 0.064291477 0.30757332 0.098465323 0.32841325 0.13745409
		 0.34124634 0.17975923 0.34557956 0.22375512 0.3412464 0.26775128 0.32841334 0.31005645
		 0.30757335 0.3490451 0.2795276 0.38321894 0.24535373 0.4112649 0.20636505 0.43210474
		 0.16405988 0.44493786 0.1200639 0.4492712 0.076067984 0.44493797 0.033762693 0.43210486
		 -0.005226016 0.4112649 -0.039399862 0.38321912 -0.067445695 0.34904516 -0.088285565
		 0.31005657 -0.1011188 0.26775128 -0.105452 0.22375524;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
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
	setAttr ".wsn" -type "string" "ACEScg";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polyTweakUV4.out" "pCylinderShape1.i";
connectAttr "polyTweakUV4.uvtk[0]" "pCylinderShape1.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCylinder1.out" "polyExtrudeFace1.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyExtrudeFace2.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace3.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace4.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace5.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace6.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak4.ip";
connectAttr "polyExtrudeFace6.out" "polyTweak5.ip";
connectAttr "polyTweak5.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "polyTweak6.out" "polyMergeVert1.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert1.mp";
connectAttr "deleteComponent4.og" "polyTweak6.ip";
connectAttr "polyMergeVert1.out" "polyMergeVert2.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert2.mp";
connectAttr "polyTweak7.out" "polyMergeVert3.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert2.out" "polyTweak7.ip";
connectAttr "polyMergeVert3.out" "polyMergeVert4.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert4.mp";
connectAttr "polyTweak8.out" "polyMergeVert5.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert5.mp";
connectAttr "polyMergeVert4.out" "polyTweak8.ip";
connectAttr "polyMergeVert5.out" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "polyExtrudeEdge1.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge1.mp";
connectAttr "polyTweak9.out" "polyExtrudeEdge2.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge2.mp";
connectAttr "polyExtrudeEdge1.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polyExtrudeEdge3.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge3.mp";
connectAttr "polyExtrudeEdge2.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polyExtrudeEdge4.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge4.mp";
connectAttr "polyExtrudeEdge3.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polyNormal1.ip";
connectAttr "polyExtrudeEdge4.out" "polyTweak12.ip";
connectAttr "polyNormal1.out" "polyPlanarProj1.ip";
connectAttr "pCylinderShape1.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyPlanarProj2.ip";
connectAttr "pCylinderShape1.wm" "polyPlanarProj2.mp";
connectAttr "polyPlanarProj2.out" "polyPlanarProj3.ip";
connectAttr "pCylinderShape1.wm" "polyPlanarProj3.mp";
connectAttr "polyTweak13.out" "polyPlanarProj4.ip";
connectAttr "pCylinderShape1.wm" "polyPlanarProj4.mp";
connectAttr "polyPlanarProj3.out" "polyTweak13.ip";
connectAttr "polyPlanarProj4.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyCylProj1.ip";
connectAttr "pCylinderShape1.wm" "polyCylProj1.mp";
connectAttr "polyCylProj1.out" "polyCylProj2.ip";
connectAttr "pCylinderShape1.wm" "polyCylProj2.mp";
connectAttr "polyCylProj2.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyPlanarProj5.ip";
connectAttr "pCylinderShape1.wm" "polyPlanarProj5.mp";
connectAttr "polyPlanarProj5.out" "polyUVRectangle1.ip";
connectAttr "polyUVRectangle1.out" "polyPlanarProj6.ip";
connectAttr "pCylinderShape1.wm" "polyPlanarProj6.mp";
connectAttr "polyPlanarProj6.out" "polyPlanarProj7.ip";
connectAttr "pCylinderShape1.wm" "polyPlanarProj7.mp";
connectAttr "polyPlanarProj7.out" "polyPlanarProj8.ip";
connectAttr "pCylinderShape1.wm" "polyPlanarProj8.mp";
connectAttr "polyPlanarProj8.out" "polyPlanarProj9.ip";
connectAttr "pCylinderShape1.wm" "polyPlanarProj9.mp";
connectAttr "polyPlanarProj9.out" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polyUVRectangle2.ip";
connectAttr "polyUVRectangle2.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyMergeUV1.ip";
connectAttr "polyMergeUV1.out" "polyMergeUV2.ip";
connectAttr "polyMergeUV2.out" "polyTweakUV4.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
// End of plate.ma
