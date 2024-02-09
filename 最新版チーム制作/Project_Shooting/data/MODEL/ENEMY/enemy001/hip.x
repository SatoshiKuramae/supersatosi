xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 97;
 0.00984;11.31128;-1.88651;,
 2.06607;11.37165;-4.80034;,
 0.00984;11.54457;-5.44566;,
 0.00984;11.31128;-1.88651;,
 3.33687;10.91894;-3.11078;,
 0.00984;11.31128;-1.88651;,
 4.09178;9.07267;4.09493;,
 0.00984;11.31128;-1.88651;,
 2.53261;8.51725;6.16782;,
 0.00984;11.31128;-1.88651;,
 0.00984;8.30510;6.95960;,
 0.00984;11.31128;-1.88651;,
 -2.51292;8.51725;6.16782;,
 0.00984;11.31128;-1.88651;,
 -4.07209;9.07267;4.09493;,
 0.00984;11.31128;-1.88651;,
 -3.31719;10.91894;-3.11078;,
 0.00984;11.31128;-1.88651;,
 -2.04638;11.37165;-4.80034;,
 0.00984;11.31128;-1.88651;,
 0.00984;11.54457;-5.44566;,
 3.80923;10.07855;-7.63071;,
 0.00984;10.39804;-8.82316;,
 6.15739;9.24206;-4.50890;,
 7.55226;6.43329;4.55176;,
 4.67131;5.40700;8.38195;,
 0.00984;5.01500;9.84493;,
 -4.65162;5.40700;8.38195;,
 -7.53257;6.43329;4.55176;,
 -6.13770;9.24206;-4.50890;,
 -3.78954;10.07855;-7.63071;,
 0.00984;10.39804;-8.82316;,
 4.97400;7.62884;-9.94679;,
 0.00984;8.04631;-11.50479;,
 8.04201;6.53593;-5.86794;,
 9.86450;2.72427;4.33575;,
 6.10035;1.38335;9.34007;,
 0.00984;0.87118;11.25157;,
 -6.08066;1.38335;9.34007;,
 -9.84481;2.72427;4.33575;,
 -8.02232;6.53593;-5.86794;,
 -4.95431;7.62884;-9.94679;,
 0.00984;8.04631;-11.50479;,
 4.21801;6.40795;-9.51665;,
 0.00984;6.76182;-10.83736;,
 6.81879;5.48144;-6.05892;,
 10.67644;-1.29423;4.20959;,
 6.60215;-2.74560;9.62624;,
 0.00984;-3.30001;11.69521;,
 -6.58246;-2.74560;9.62624;,
 -10.65675;-1.29423;4.20959;,
 -6.79910;5.48144;-6.05892;,
 -4.19832;6.40795;-9.51665;,
 0.00984;6.76182;-10.83736;,
 3.89767;3.25825;-9.90415;,
 0.00984;3.58518;-11.12432;,
 6.30048;2.40228;-6.70965;,
 9.86450;-5.37169;2.84391;,
 6.10035;-6.71261;7.84825;,
 0.00984;-7.22478;9.75976;,
 -6.08066;-6.71261;7.84825;,
 -9.84481;-5.37169;2.84391;,
 -6.28080;2.40228;-6.70965;,
 -3.87798;3.25825;-9.90415;,
 0.00984;3.58518;-11.12432;,
 2.98546;1.74840;-9.00887;,
 0.00984;1.99862;-9.94275;,
 4.82449;1.09326;-6.56390;,
 7.55226;-8.69183;1.17649;,
 4.67131;-9.71812;5.00667;,
 0.00984;-10.11014;6.46965;,
 -4.65162;-9.71812;5.00667;,
 -7.53257;-8.69183;1.17649;,
 -4.80481;1.09326;-6.56390;,
 -2.96577;1.74840;-9.00887;,
 0.00984;1.99862;-9.94275;,
 1.62024;0.47034;-7.40595;,
 0.00984;0.60576;-7.91136;,
 2.61551;0.11579;-6.08275;,
 4.09178;-10.74920;-0.53878;,
 2.53261;-11.30462;1.53407;,
 0.00984;-11.51677;2.32578;,
 -2.51292;-11.30462;1.53407;,
 -4.07209;-10.74920;-0.53878;,
 -2.59582;0.80821;-4.10172;,
 -1.60055;0.47034;-7.40595;,
 0.00984;0.60576;-7.91136;,
 0.00984;-11.98937;-1.84546;,
 0.00984;-11.98937;-1.84546;,
 0.00984;-11.98937;-1.84546;,
 0.00984;-11.98937;-1.84546;,
 0.00984;-11.98937;-1.84546;,
 0.00984;-11.98937;-1.84546;,
 0.00984;-11.98937;-1.84546;,
 0.00984;-11.98937;-1.84546;,
 0.00984;-11.98937;-1.84546;,
 0.00984;-11.98937;-1.84546;;
 
 80;
 3;0,1,2;,
 3;3,4,1;,
 3;5,6,4;,
 3;7,8,6;,
 3;9,10,8;,
 3;11,12,10;,
 3;13,14,12;,
 3;15,16,14;,
 3;17,18,16;,
 3;19,20,18;,
 4;2,1,21,22;,
 4;1,4,23,21;,
 4;4,6,24,23;,
 4;6,8,25,24;,
 4;8,10,26,25;,
 4;10,12,27,26;,
 4;12,14,28,27;,
 4;14,16,29,28;,
 4;16,18,30,29;,
 4;18,20,31,30;,
 4;22,21,32,33;,
 4;21,23,34,32;,
 4;23,24,35,34;,
 4;24,25,36,35;,
 4;25,26,37,36;,
 4;26,27,38,37;,
 4;27,28,39,38;,
 4;28,29,40,39;,
 4;29,30,41,40;,
 4;30,31,42,41;,
 4;33,32,43,44;,
 4;32,34,45,43;,
 4;34,35,46,45;,
 4;35,36,47,46;,
 4;36,37,48,47;,
 4;37,38,49,48;,
 4;38,39,50,49;,
 4;39,40,51,50;,
 4;40,41,52,51;,
 4;41,42,53,52;,
 4;44,43,54,55;,
 4;43,45,56,54;,
 4;45,46,57,56;,
 4;46,47,58,57;,
 4;47,48,59,58;,
 4;48,49,60,59;,
 4;49,50,61,60;,
 4;50,51,62,61;,
 4;51,52,63,62;,
 4;52,53,64,63;,
 4;55,54,65,66;,
 4;54,56,67,65;,
 4;56,57,68,67;,
 4;57,58,69,68;,
 4;58,59,70,69;,
 4;59,60,71,70;,
 4;60,61,72,71;,
 4;61,62,73,72;,
 4;62,63,74,73;,
 4;63,64,75,74;,
 4;66,65,76,77;,
 4;65,67,78,76;,
 4;67,68,79,78;,
 4;68,69,80,79;,
 4;69,70,81,80;,
 4;70,71,82,81;,
 4;71,72,83,82;,
 4;72,73,84,83;,
 4;73,74,85,84;,
 4;74,75,86,85;,
 3;77,76,87;,
 3;76,78,88;,
 3;78,79,89;,
 3;79,80,90;,
 3;80,81,91;,
 3;81,82,92;,
 3;82,83,93;,
 3;83,84,94;,
 3;84,85,95;,
 3;85,86,96;;
 
 MeshMaterialList {
  2;
  80;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;;
  Material {
   0.097270;0.097270;0.097270;1.000000;;
   11.000000;
   0.600000;0.600000;0.600000;;
   0.045210;0.045210;0.045210;;
  }
  Material {
   0.225920;0.000000;0.000000;1.000000;;
   41.000000;
   0.370000;0.370000;0.370000;;
   0.021180;0.000000;0.000000;;
  }
 }
 MeshNormals {
  86;
  -0.000000;0.976881;0.213784;,
  -0.000000;0.991626;-0.129144;,
  0.224178;0.972774;-0.058785;,
  0.358914;0.927706;0.102672;,
  0.338321;0.885856;0.317488;,
  0.191411;0.846376;0.497001;,
  -0.000000;0.832550;0.553950;,
  -0.191411;0.846376;0.497001;,
  -0.338321;0.885856;0.317488;,
  -0.358914;0.927706;0.102671;,
  -0.224178;0.972774;-0.058786;,
  -0.000000;0.866976;-0.498350;,
  0.414833;0.832091;-0.368154;,
  0.664083;0.744685;-0.066625;,
  0.676113;0.644169;0.357655;,
  0.414833;0.536538;0.734874;,
  -0.000000;0.501651;0.865070;,
  -0.414833;0.536538;0.734874;,
  -0.676114;0.644169;0.357655;,
  -0.664083;0.744684;-0.066626;,
  -0.414833;0.832091;-0.368154;,
  -0.000000;0.751838;-0.659348;,
  0.488725;0.710739;-0.505962;,
  0.908648;0.344037;-0.236636;,
  0.809051;0.376259;0.451514;,
  0.526550;0.246063;0.813756;,
  -0.000000;0.215390;0.976528;,
  -0.526550;0.246063;0.813756;,
  -0.809051;0.376259;0.451514;,
  -0.908648;0.344037;-0.236636;,
  -0.488725;0.710739;-0.505962;,
  -0.000000;-0.196324;-0.980539;,
  0.520368;-0.254088;-0.815265;,
  0.833809;-0.235850;-0.499137;,
  0.966433;-0.244257;-0.079657;,
  0.587441;-0.139178;0.797209;,
  -0.000000;-0.174555;0.984647;,
  -0.587441;-0.139177;0.797209;,
  -0.954014;-0.097703;0.283392;,
  -0.833809;-0.235849;-0.499136;,
  -0.520368;-0.254088;-0.815265;,
  -0.000000;-0.276873;-0.960907;,
  0.503440;-0.319210;-0.802903;,
  0.757436;-0.302930;-0.578381;,
  0.898531;-0.435740;-0.052652;,
  0.542748;-0.564153;0.622219;,
  -0.000000;-0.609794;0.792560;,
  -0.542748;-0.564153;0.622218;,
  -0.898531;-0.435740;-0.052651;,
  -0.757436;-0.302929;-0.578381;,
  -0.503440;-0.319209;-0.802903;,
  -0.000000;-0.721600;-0.692311;,
  0.283287;-0.745422;-0.603402;,
  0.459563;-0.622333;-0.633643;,
  0.543597;-0.672539;-0.502189;,
  0.414832;-0.832093;0.368153;,
  -0.000000;-0.866978;0.498347;,
  -0.414832;-0.832093;0.368152;,
  -0.585163;-0.777038;0.231939;,
  -0.374588;-0.688630;-0.620865;,
  -0.277497;-0.785399;-0.553302;,
  -0.000000;-0.653680;-0.756771;,
  0.352818;-0.656692;-0.666540;,
  0.446179;-0.543310;-0.711153;,
  0.383755;-0.675781;-0.629327;,
  0.269735;-0.954068;0.130372;,
  -0.000000;-0.975996;0.217789;,
  -0.269736;-0.954068;0.130371;,
  -0.384872;-0.921994;0.042446;,
  -0.457886;-0.577959;-0.675503;,
  -0.208920;-0.782783;-0.586177;,
  0.169733;-0.860691;-0.480002;,
  -0.000000;-0.461076;-0.887361;,
  0.417220;-0.520760;-0.744807;,
  0.579175;-0.565504;-0.587164;,
  0.902476;-0.269594;-0.335941;,
  0.773670;0.136900;0.618621;,
  -0.902476;-0.269594;-0.335941;,
  -0.579175;-0.565503;-0.587164;,
  -0.417220;-0.520760;-0.744807;,
  0.682810;-0.646466;0.340371;,
  -0.328941;-0.494304;-0.804650;,
  0.465079;-0.877819;0.114612;,
  -0.174640;-0.373150;-0.911186;,
  -0.719234;-0.260028;-0.644273;,
  -0.936813;-0.236231;-0.258023;;
  80;
  3;0,2,1;,
  3;0,3,2;,
  3;0,4,3;,
  3;0,5,4;,
  3;0,6,5;,
  3;0,7,6;,
  3;0,8,7;,
  3;0,9,8;,
  3;0,10,9;,
  3;0,1,10;,
  4;1,2,12,11;,
  4;2,3,13,12;,
  4;3,4,14,13;,
  4;4,5,15,14;,
  4;5,6,16,15;,
  4;6,7,17,16;,
  4;7,8,18,17;,
  4;8,9,19,18;,
  4;9,10,20,19;,
  4;10,1,11,20;,
  4;11,12,22,21;,
  4;12,13,23,22;,
  4;13,14,24,23;,
  4;14,15,25,24;,
  4;15,16,26,25;,
  4;16,17,27,26;,
  4;17,18,28,27;,
  4;18,19,29,28;,
  4;19,20,30,29;,
  4;20,11,21,30;,
  4;72,73,32,31;,
  4;73,74,33,32;,
  4;23,75,34,33;,
  4;24,25,35,76;,
  4;25,26,36,35;,
  4;26,27,37,36;,
  4;27,28,38,37;,
  4;77,29,39,77;,
  4;78,79,40,39;,
  4;79,72,31,40;,
  4;31,32,42,41;,
  4;32,33,43,42;,
  4;33,34,44,43;,
  4;34,35,45,44;,
  4;35,36,46,45;,
  4;36,37,47,46;,
  4;37,38,48,47;,
  4;38,39,49,48;,
  4;39,40,50,49;,
  4;40,31,41,50;,
  4;41,42,52,51;,
  4;42,43,53,52;,
  4;43,44,54,53;,
  4;44,45,55,80;,
  4;45,46,56,55;,
  4;46,47,57,56;,
  4;47,48,58,57;,
  4;48,49,59,81;,
  4;49,50,60,59;,
  4;50,41,51,60;,
  4;51,52,62,61;,
  4;52,53,63,62;,
  4;53,54,64,63;,
  4;54,55,65,82;,
  4;55,56,66,65;,
  4;56,57,67,66;,
  4;57,58,68,67;,
  4;81,59,69,83;,
  4;59,60,70,69;,
  4;60,51,61,70;,
  3;61,62,71;,
  3;62,63,71;,
  3;63,64,71;,
  3;64,65,71;,
  3;65,66,71;,
  3;66,67,71;,
  3;67,68,71;,
  3;83,69,84;,
  3;69,85,84;,
  3;70,61,71;;
 }
 MeshTextureCoords {
  97;
  0.050000;0.000000;,
  0.100000;0.125000;,
  0.000000;0.125000;,
  0.150000;0.000000;,
  0.200000;0.125000;,
  0.250000;0.000000;,
  0.300000;0.125000;,
  0.350000;0.000000;,
  0.400000;0.125000;,
  0.450000;0.000000;,
  0.500000;0.125000;,
  0.550000;0.000000;,
  0.600000;0.125000;,
  0.650000;0.000000;,
  0.700000;0.125000;,
  0.750000;0.000000;,
  0.800000;0.125000;,
  0.850000;0.000000;,
  0.900000;0.125000;,
  0.950000;0.000000;,
  1.000000;0.125000;,
  0.100000;0.250000;,
  0.000000;0.250000;,
  0.200000;0.250000;,
  0.300000;0.250000;,
  0.400000;0.250000;,
  0.500000;0.250000;,
  0.600000;0.250000;,
  0.700000;0.250000;,
  0.800000;0.250000;,
  0.900000;0.250000;,
  1.000000;0.250000;,
  0.100000;0.375000;,
  0.000000;0.375000;,
  0.200000;0.375000;,
  0.300000;0.375000;,
  0.400000;0.375000;,
  0.500000;0.375000;,
  0.600000;0.375000;,
  0.700000;0.375000;,
  0.800000;0.375000;,
  0.900000;0.375000;,
  1.000000;0.375000;,
  0.100000;0.500000;,
  0.000000;0.500000;,
  0.200000;0.500000;,
  0.300000;0.500000;,
  0.400000;0.500000;,
  0.500000;0.500000;,
  0.600000;0.500000;,
  0.700000;0.500000;,
  0.800000;0.500000;,
  0.900000;0.500000;,
  1.000000;0.500000;,
  0.100000;0.625000;,
  0.000000;0.625000;,
  0.200000;0.625000;,
  0.300000;0.625000;,
  0.400000;0.625000;,
  0.500000;0.625000;,
  0.600000;0.625000;,
  0.700000;0.625000;,
  0.800000;0.625000;,
  0.900000;0.625000;,
  1.000000;0.625000;,
  0.100000;0.750000;,
  0.000000;0.750000;,
  0.200000;0.750000;,
  0.300000;0.750000;,
  0.400000;0.750000;,
  0.500000;0.750000;,
  0.600000;0.750000;,
  0.700000;0.750000;,
  0.800000;0.750000;,
  0.900000;0.750000;,
  1.000000;0.750000;,
  0.100000;0.875000;,
  0.000000;0.875000;,
  0.200000;0.875000;,
  0.300000;0.875000;,
  0.400000;0.875000;,
  0.500000;0.875000;,
  0.600000;0.875000;,
  0.700000;0.875000;,
  0.800000;0.875000;,
  0.900000;0.875000;,
  1.000000;0.875000;,
  0.050000;1.000000;,
  0.150000;1.000000;,
  0.250000;1.000000;,
  0.350000;1.000000;,
  0.450000;1.000000;,
  0.550000;1.000000;,
  0.650000;1.000000;,
  0.750000;1.000000;,
  0.850000;1.000000;,
  0.950000;1.000000;;
 }
}
