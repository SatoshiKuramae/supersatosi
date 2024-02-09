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
 194;
 0.00000;2.77222;10.45133;,
 0.99768;2.40641;7.18877;,
 0.00000;2.50378;6.79430;,
 0.00000;2.77222;10.45133;,
 1.61428;2.15149;8.22155;,
 0.00000;2.77222;10.45133;,
 1.61428;2.39303;10.43133;,
 0.00000;2.77222;10.45133;,
 0.99768;2.13813;11.46409;,
 0.00000;2.77222;10.45133;,
 0.00000;2.04077;11.85857;,
 0.00000;2.77222;10.45133;,
 -0.99767;2.13813;11.46409;,
 0.00000;2.77222;10.45133;,
 -1.61427;2.39303;10.43133;,
 0.00000;2.77222;10.45133;,
 -1.61427;2.15149;8.22155;,
 0.00000;2.77222;10.45133;,
 -0.99767;2.40641;7.18877;,
 0.00000;2.77222;10.45133;,
 0.00000;2.50378;6.79430;,
 1.84347;1.88863;5.37869;,
 0.00000;2.06855;4.64978;,
 2.98280;1.41763;7.28701;,
 2.98280;1.39203;10.57898;,
 1.84347;0.92104;12.48730;,
 0.00000;0.74111;13.21618;,
 -1.84346;0.92104;12.48730;,
 -2.98279;1.39203;10.57898;,
 -2.98279;1.41763;7.28701;,
 -1.84346;1.88863;5.37869;,
 0.00000;2.06855;4.64978;,
 2.40862;0.82408;3.84329;,
 0.00000;1.05916;2.89093;,
 3.89721;0.20868;6.33661;,
 3.89721;0.00461;10.35171;,
 2.40862;-0.61081;12.84503;,
 0.00000;-0.84587;13.79739;,
 -2.40861;-0.61081;12.84503;,
 -3.89720;0.00461;10.35171;,
 -3.89720;0.20868;6.33661;,
 -2.40861;0.82408;3.84329;,
 0.00000;1.05916;2.89093;,
 2.60706;-0.21502;3.00237;,
 0.00000;0.03940;1.97153;,
 4.21832;-0.88115;5.70111;,
 4.21832;-1.70450;9.03693;,
 2.60706;-2.37065;11.73569;,
 0.00000;-2.62506;12.76652;,
 -2.60705;-2.37065;11.73569;,
 -4.21831;-1.70450;9.03693;,
 -4.21831;-0.88115;5.70111;,
 -2.60705;-0.21502;3.00237;,
 0.00000;0.03940;1.97153;,
 2.40862;-1.28932;2.88469;,
 0.00000;-1.05427;1.93234;,
 3.89721;-1.90474;5.37802;,
 3.89721;-2.66543;8.45991;,
 2.40862;-3.28084;10.95322;,
 0.00000;-3.51591;11.90559;,
 -2.40861;-3.28084;10.95322;,
 -3.89720;-2.66543;8.45991;,
 -3.89720;-1.90474;5.37802;,
 -2.40861;-1.28932;2.88469;,
 0.00000;-1.05427;1.93234;,
 1.84347;-2.36414;3.44974;,
 0.00000;-2.18422;2.72083;,
 2.98280;-2.83516;5.35804;,
 2.98280;-3.41737;7.71683;,
 1.84347;-3.88837;9.62510;,
 0.00000;-4.06829;10.35403;,
 -1.84346;-3.88837;9.62510;,
 -2.98279;-3.41737;7.71683;,
 -2.98279;-2.83516;5.35804;,
 -1.84346;-2.36414;3.44974;,
 0.00000;-2.18422;2.72083;,
 0.99768;-3.27587;4.61144;,
 0.00000;-3.17850;4.21697;,
 1.61428;-3.53079;5.64420;,
 1.61428;-3.84586;6.92076;,
 0.99768;-4.10080;7.95353;,
 0.00000;-4.19814;8.34802;,
 -0.99767;-4.10080;7.95353;,
 -1.61427;-3.84586;6.92076;,
 -1.61427;-3.53079;5.64420;,
 -0.99767;-3.27587;4.61144;,
 0.00000;-3.17850;4.21697;,
 0.00000;-3.88570;6.19297;,
 0.00000;-3.88570;6.19297;,
 0.00000;-3.88570;6.19297;,
 0.00000;-3.88570;6.19297;,
 0.00000;-3.88570;6.19297;,
 0.00000;-3.88570;6.19297;,
 0.00000;-3.88570;6.19297;,
 0.00000;-3.88570;6.19297;,
 0.00000;-3.88570;6.19297;,
 0.00000;-3.88570;6.19297;,
 -0.02296;8.05525;-2.31496;,
 2.04354;7.57123;-5.42276;,
 -0.02296;7.62865;-6.00460;,
 -0.02296;8.05525;-2.31496;,
 3.32070;7.79948;-3.84290;,
 -0.02296;8.05525;-2.31496;,
 2.75726;6.03556;2.80839;,
 -0.02296;8.05525;-2.31496;,
 1.69530;5.84766;4.06557;,
 -0.02296;8.05525;-2.31496;,
 -0.02296;5.77591;4.54578;,
 -0.02296;8.05525;-2.31496;,
 -1.69529;5.84766;4.06557;,
 -0.02296;8.05525;-2.31496;,
 -2.75725;6.03556;2.80839;,
 -0.02296;8.05525;-2.31496;,
 -3.32069;7.79948;-3.84290;,
 -0.02296;8.05525;-2.31496;,
 -2.04353;7.57123;-5.42276;,
 -0.02296;8.05525;-2.31496;,
 -0.02296;7.62865;-6.00460;,
 3.79542;5.98871;-7.77954;,
 -0.02296;4.67943;-12.88189;,
 6.15532;5.57118;-4.98581;,
 5.11419;4.29937;3.22232;,
 3.15197;3.27031;10.10812;,
 -0.02296;3.86890;8.55088;,
 -3.15196;3.27031;10.10812;,
 -5.11418;4.29937;3.22232;,
 -6.15531;5.57118;-4.98581;,
 -3.79542;5.98871;-7.77954;,
 -0.02296;4.67943;-12.88189;,
 4.96601;4.22013;-9.61157;,
 -0.02296;1.78560;-13.92933;,
 7.34046;3.65254;-5.81369;,
 6.68907;1.78259;3.29614;,
 4.12530;1.07625;8.02254;,
 -0.02296;1.41110;5.78191;,
 -4.12529;1.07625;8.02254;,
 -6.68906;1.78259;3.29614;,
 -7.34045;3.65254;-5.81369;,
 -4.96600;4.22013;-9.61157;,
 -0.02296;1.78560;-13.92933;,
 3.23830;-0.12206;-11.31266;,
 -0.02296;-0.99902;-13.05387;,
 5.43509;-0.86632;-9.41446;,
 7.24209;-1.13169;3.01860;,
 4.46709;-1.67685;6.66644;,
 -0.02296;-1.55485;5.84997;,
 -4.46708;-1.67685;6.66644;,
 -7.24208;-1.13169;3.01860;,
 -5.43508;-0.86632;-9.41446;,
 -3.23830;-0.12206;-11.31266;,
 -0.02296;-0.99902;-13.05387;,
 4.79763;-1.46509;-6.36003;,
 -0.02296;-2.11272;-9.04804;,
 6.02910;-2.63261;-5.88715;,
 6.68907;-3.99975;2.43197;,
 4.12530;-4.55927;6.17563;,
 -0.02296;-4.37126;4.91773;,
 -4.12529;-4.55927;6.17563;,
 -6.68906;-3.99975;2.43197;,
 -6.02910;-2.63261;-5.88715;,
 -4.79762;-1.46509;-6.36003;,
 -0.02296;-2.11272;-9.04804;,
 3.79542;-3.63002;-5.26685;,
 -0.02296;-5.50148;-6.63750;,
 4.08683;-5.28292;-2.65774;,
 5.11419;-6.38503;1.62553;,
 3.15197;-5.54742;4.75120;,
 -0.02296;-5.42466;3.92989;,
 -3.15196;-5.54742;4.75120;,
 -5.11418;-6.38503;1.62553;,
 -4.08683;-5.28292;-2.65774;,
 -3.79542;-3.63002;-5.26685;,
 -0.02296;-5.50148;-6.63750;,
 2.04354;-5.87530;-3.48213;,
 -0.02296;-7.05128;-4.24831;,
 3.32070;-5.12085;-1.82365;,
 2.75726;-4.93862;1.16829;,
 1.69530;-5.45022;2.14568;,
 -0.02296;-8.14269;2.46562;,
 -0.03932;-8.14634;2.43656;,
 -2.75725;-4.93862;1.16829;,
 -3.89141;-5.73887;-2.36075;,
 -2.04353;-5.87530;-3.48213;,
 -0.02296;-7.05128;-4.24831;,
 -0.02296;-8.03566;-0.08889;,
 -0.02296;-8.03566;-0.08889;,
 -0.02296;-8.03566;-0.08889;,
 -0.02296;-8.03566;-0.08889;,
 -0.02296;-8.03566;-0.08889;,
 -0.02296;-8.03566;-0.08889;,
 -0.02296;-8.03566;-0.08889;,
 -0.02296;-8.03566;-0.08889;,
 -0.02296;-8.03566;-0.08889;,
 -0.02296;-8.03566;-0.08889;;
 
 160;
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
 3;85,86,96;,
 3;97,98,99;,
 3;100,101,98;,
 3;102,103,101;,
 3;104,105,103;,
 3;106,107,105;,
 3;108,109,107;,
 3;110,111,109;,
 3;112,113,111;,
 3;114,115,113;,
 3;116,117,115;,
 4;99,98,118,119;,
 4;98,101,120,118;,
 4;101,103,121,120;,
 4;103,105,122,121;,
 4;105,107,123,122;,
 4;107,109,124,123;,
 4;109,111,125,124;,
 4;111,113,126,125;,
 4;113,115,127,126;,
 4;115,117,128,127;,
 4;119,118,129,130;,
 4;118,120,131,129;,
 4;120,121,132,131;,
 4;121,122,133,132;,
 4;122,123,134,133;,
 4;123,124,135,134;,
 4;124,125,136,135;,
 4;125,126,137,136;,
 4;126,127,138,137;,
 4;127,128,139,138;,
 4;130,129,140,141;,
 4;129,131,142,140;,
 4;131,132,143,142;,
 4;132,133,144,143;,
 4;133,134,145,144;,
 4;134,135,146,145;,
 4;135,136,147,146;,
 4;136,137,148,147;,
 4;137,138,149,148;,
 4;138,139,150,149;,
 4;141,140,151,152;,
 4;140,142,153,151;,
 4;142,143,154,153;,
 4;143,144,155,154;,
 4;144,145,156,155;,
 4;145,146,157,156;,
 4;146,147,158,157;,
 4;147,148,159,158;,
 4;148,149,160,159;,
 4;149,150,161,160;,
 4;152,151,162,163;,
 4;151,153,164,162;,
 4;153,154,165,164;,
 4;154,155,166,165;,
 4;155,156,167,166;,
 4;156,157,168,167;,
 4;157,158,169,168;,
 4;158,159,170,169;,
 4;159,160,171,170;,
 4;160,161,172,171;,
 4;163,162,173,174;,
 4;162,164,175,173;,
 4;164,165,176,175;,
 4;165,166,177,176;,
 4;166,167,178,177;,
 4;167,168,179,178;,
 4;168,169,180,179;,
 4;169,170,181,180;,
 4;170,171,182,181;,
 4;171,172,183,182;,
 3;174,173,184;,
 3;173,175,185;,
 3;175,176,186;,
 3;176,177,187;,
 3;177,178,188;,
 3;178,179,189;,
 3;179,180,190;,
 3;180,181,191;,
 3;181,182,192;,
 3;182,183,193;;
 
 MeshMaterialList {
  2;
  160;
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
  164;
  -0.000001;0.990664;0.136329;,
  -0.000001;0.990695;-0.136104;,
  0.281938;0.956294;-0.077549;,
  0.398361;0.916055;-0.046396;,
  0.384781;0.905621;0.178311;,
  0.255198;0.826604;0.501598;,
  -0.000000;0.813677;0.581318;,
  -0.255198;0.826604;0.501597;,
  -0.384781;0.905620;0.178311;,
  -0.398361;0.916054;-0.046396;,
  -0.281938;0.956293;-0.077549;,
  -0.000001;0.936339;-0.351098;,
  0.406800;0.879308;-0.247650;,
  0.635827;0.767927;-0.077543;,
  0.687562;0.676827;0.262990;,
  0.460006;0.571257;0.679750;,
  -0.000000;0.550579;0.834783;,
  -0.460006;0.571259;0.679749;,
  -0.687562;0.676827;0.262990;,
  -0.635827;0.767926;-0.077544;,
  -0.406801;0.879308;-0.247650;,
  -0.000001;0.779293;-0.626660;,
  0.552198;0.689035;-0.469370;,
  0.852940;0.501975;-0.143230;,
  0.920206;0.266605;0.286607;,
  0.645894;0.017398;0.763229;,
  -0.000001;-0.082929;0.996555;,
  -0.645894;0.017398;0.763229;,
  -0.920206;0.266605;0.286607;,
  -0.852940;0.501975;-0.143230;,
  -0.552199;0.689034;-0.469370;,
  -0.000001;0.377549;-0.925990;,
  0.654949;0.283008;-0.700677;,
  0.964855;0.078469;-0.250795;,
  0.957294;-0.198089;0.210590;,
  0.627216;-0.479114;0.614043;,
  -0.000001;-0.603202;0.797588;,
  -0.627217;-0.479114;0.614043;,
  -0.957294;-0.198089;0.210590;,
  -0.964855;0.078469;-0.250795;,
  -0.654950;0.283008;-0.700676;,
  -0.000001;-0.289038;-0.957318;,
  0.569355;-0.330331;-0.752805;,
  0.830085;-0.441441;-0.340718;,
  0.798458;-0.598316;0.066949;,
  0.508369;-0.763593;0.398104;,
  -0.000001;-0.842829;0.538181;,
  -0.508370;-0.763592;0.398104;,
  -0.798458;-0.598316;0.066949;,
  -0.830085;-0.441440;-0.340718;,
  -0.569356;-0.330331;-0.752805;,
  -0.000001;-0.716772;-0.697308;,
  0.350830;-0.729347;-0.587343;,
  0.532369;-0.775742;-0.338832;,
  0.511031;-0.856181;-0.076161;,
  0.313778;-0.941372;0.123941;,
  -0.000001;-0.979639;0.200768;,
  -0.313780;-0.941372;0.123942;,
  -0.511032;-0.856181;-0.076161;,
  -0.532369;-0.775742;-0.338832;,
  -0.350830;-0.729347;-0.587342;,
  -0.000000;-0.894001;-0.448065;,
  0.158841;-0.900837;-0.404058;,
  0.249617;-0.922126;-0.295591;,
  0.243252;-0.954702;-0.171384;,
  0.148354;-0.986023;-0.075828;,
  -0.000001;-0.999200;-0.040005;,
  -0.148355;-0.986023;-0.075827;,
  -0.243252;-0.954702;-0.171383;,
  -0.249617;-0.922126;-0.295591;,
  -0.158841;-0.900836;-0.404058;,
  -0.000000;-0.970619;-0.240623;,
  -0.000666;0.992317;0.123715;,
  -0.001039;0.960821;-0.277168;,
  0.176567;0.946996;-0.268369;,
  0.332042;0.943261;-0.002572;,
  0.362437;0.883968;0.295362;,
  0.178989;0.918067;0.353719;,
  -0.000569;0.931065;0.364852;,
  -0.179806;0.917843;0.353885;,
  -0.363317;0.883552;0.295529;,
  -0.332751;0.943011;-0.002568;,
  -0.177613;0.946882;-0.268082;,
  -0.001632;0.795284;-0.606235;,
  0.453681;0.755655;-0.472397;,
  0.674858;0.732650;-0.088269;,
  0.721803;0.621286;0.304965;,
  0.498360;0.749070;0.436499;,
  -0.000473;0.910563;0.413370;,
  -0.498626;0.748931;0.436435;,
  -0.721803;0.621286;0.304965;,
  -0.674858;0.732649;-0.088268;,
  -0.455104;0.755360;-0.471499;,
  -0.002585;0.289289;-0.957238;,
  0.670009;0.311615;-0.673783;,
  0.914618;0.322665;-0.243641;,
  0.937736;0.196579;0.286371;,
  0.866841;0.154783;0.473951;,
  0.002050;-0.526182;0.850370;,
  0.388022;-0.485170;0.783613;,
  -0.937736;0.196579;0.286371;,
  -0.914618;0.322665;-0.243640;,
  -0.671957;0.311114;-0.672073;,
  0.239240;-0.781986;-0.575554;,
  0.680239;-0.031680;-0.732306;,
  0.961026;-0.024979;-0.275329;,
  0.963536;-0.094836;0.250208;,
  0.828097;-0.121110;0.547347;,
  0.001437;-0.234590;0.972093;,
  0.289337;-0.224612;0.930502;,
  -0.963536;-0.094836;0.250209;,
  -0.961026;-0.024978;-0.275328;,
  -0.682422;-0.032211;-0.730249;,
  -0.002232;-0.820832;-0.571165;,
  0.143119;-0.820161;-0.553944;,
  -0.162987;-0.824860;-0.541332;,
  0.880145;-0.447369;0.158766;,
  0.447587;-0.636189;0.628434;,
  0.001404;-0.490122;0.871653;,
  -0.041915;-0.629106;0.776188;,
  -0.880145;-0.447368;0.158766;,
  -0.920945;-0.337875;-0.194166;,
  -0.145335;-0.819983;-0.553629;,
  -0.003099;-0.740463;-0.672090;,
  0.377747;-0.756568;-0.533772;,
  0.216262;-0.907961;-0.358940;,
  0.469875;-0.882726;-0.003531;,
  0.174683;-0.912023;0.371079;,
  0.075059;-0.768146;0.635860;,
  -0.164911;-0.880463;0.444510;,
  -0.450442;-0.890278;-0.067133;,
  -0.394549;-0.779495;-0.486538;,
  -0.396978;-0.662467;-0.635252;,
  0.543910;-0.776092;-0.319127;,
  0.512668;-0.829741;-0.220683;,
  0.338571;-0.939859;-0.045103;,
  -0.286602;-0.949546;-0.127362;,
  0.490321;-0.858308;0.151303;,
  0.401670;-0.869927;0.286162;,
  -0.207048;-0.970411;0.124235;,
  -0.454555;-0.890550;-0.017327;,
  -0.417553;-0.880478;-0.224519;,
  -0.464687;-0.786538;-0.406723;,
  0.626530;-0.779121;0.020730;,
  -0.398976;-0.703840;0.587731;,
  0.002262;-0.767888;0.640581;,
  -0.384256;-0.485573;0.785218;,
  0.403121;-0.703017;0.585885;,
  -0.866841;0.154783;0.473951;,
  -0.286579;-0.224695;0.931335;,
  -0.828097;-0.121111;0.547347;,
  -0.587638;-0.109230;-0.801717;,
  -0.023439;-0.955481;-0.294120;,
  -0.384733;-0.887324;-0.254239;,
  0.920944;-0.337877;-0.194167;,
  -0.236212;-0.223644;0.945615;,
  -0.805363;-0.227485;0.547394;,
  0.384731;-0.887324;-0.254239;,
  0.021375;-0.955443;-0.294401;,
  0.162986;-0.824861;-0.541332;,
  -0.439827;-0.892667;-0.098477;,
  -0.551443;-0.771875;-0.316416;,
  0.668216;-0.701002;0.249165;,
  -0.588908;-0.805487;-0.066161;;
  160;
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
  4;21,22,32,31;,
  4;22,23,33,32;,
  4;23,24,34,33;,
  4;24,25,35,34;,
  4;25,26,36,35;,
  4;26,27,37,36;,
  4;27,28,38,37;,
  4;28,29,39,38;,
  4;29,30,40,39;,
  4;30,21,31,40;,
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
  4;44,45,55,54;,
  4;45,46,56,55;,
  4;46,47,57,56;,
  4;47,48,58,57;,
  4;48,49,59,58;,
  4;49,50,60,59;,
  4;50,41,51,60;,
  4;51,52,62,61;,
  4;52,53,63,62;,
  4;53,54,64,63;,
  4;54,55,65,64;,
  4;55,56,66,65;,
  4;56,57,67,66;,
  4;57,58,68,67;,
  4;58,59,69,68;,
  4;59,60,70,69;,
  4;60,51,61,70;,
  3;61,62,71;,
  3;62,63,71;,
  3;63,64,71;,
  3;64,65,71;,
  3;65,66,71;,
  3;66,67,71;,
  3;67,68,71;,
  3;68,69,71;,
  3;69,70,71;,
  3;70,61,71;,
  3;72,74,73;,
  3;72,75,74;,
  3;72,76,75;,
  3;72,77,76;,
  3;72,78,77;,
  3;72,79,78;,
  3;72,80,79;,
  3;72,81,80;,
  3;72,82,81;,
  3;72,73,82;,
  4;73,74,84,83;,
  4;74,75,85,84;,
  4;75,76,86,85;,
  4;76,77,87,86;,
  4;77,78,88,87;,
  4;78,79,89,88;,
  4;79,80,90,89;,
  4;80,81,91,90;,
  4;81,82,92,91;,
  4;82,73,83,92;,
  4;83,84,94,93;,
  4;84,85,95,94;,
  4;85,86,96,95;,
  4;86,87,97,96;,
  4;144,145,98,146;,
  4;145,147,99,98;,
  4;89,90,100,148;,
  4;90,91,101,100;,
  4;91,92,102,101;,
  4;92,83,93,102;,
  4;93,94,104,103;,
  4;94,95,105,104;,
  4;95,96,106,105;,
  4;96,97,107,106;,
  4;146,98,108,149;,
  4;98,99,109,108;,
  4;148,100,110,150;,
  4;100,101,111,110;,
  4;101,102,112,111;,
  4;102,93,151,112;,
  4;103,152,114,113;,
  4;152,153,115,114;,
  4;105,106,116,154;,
  4;106,107,117,116;,
  4;149,108,118,155;,
  4;108,109,119,118;,
  4;150,110,120,156;,
  4;110,111,121,120;,
  4;157,158,122,159;,
  4;158,103,113,122;,
  4;113,114,124,123;,
  4;114,115,125,124;,
  4;154,116,126,125;,
  4;116,117,127,126;,
  4;117,118,128,127;,
  4;118,119,129,128;,
  4;119,120,130,129;,
  4;120,121,131,130;,
  4;159,122,132,131;,
  4;122,113,123,132;,
  4;123,124,134,133;,
  4;124,125,135,134;,
  4;125,160,136,135;,
  4;126,127,137,136;,
  4;127,128,138,137;,
  4;128,129,139,138;,
  4;129,130,140,139;,
  4;130,131,141,140;,
  4;131,132,142,141;,
  4;132,123,161,142;,
  3;133,134,143;,
  3;134,135,143;,
  3;135,162,143;,
  3;162,137,143;,
  3;137,138,143;,
  3;138,139,143;,
  3;139,140,163;,
  3;140,141,163;,
  3;141,142,163;,
  3;142,161,163;;
 }
 MeshTextureCoords {
  194;
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
  0.950000;1.000000;,
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
