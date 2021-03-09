pragma solidity 0.5.177;


contract Pr000xyRewards {
  /**
   * @dev Mapping with appropriate rewards for each address zero byte "combo".
   * The key is calculated as (starting zero bytes) * 20 + (total zero bytes).
   * The value is calculated using the formula defined here:
   *   https://medium.com/@0age/on-efficient-ethereum-addresses-3fef0596e263
   * And the amounts can be verified by running the following script:
   *   https://gist.github.com/0age/d55d8315c2119adfba3cc90b3f5c15df
   * Note that the value could be a uint144 if so desired.
   */
  mapping(uint24 => uint256) private rewards;

  /**
   * @dev Set up each reward key and amount in the constructor.
   */
  constructor() public {
    rewards[5] = 4;
    rewards[6] = 454;
    rewards[7] = 57926;
    rewards[8] = 9100294;
    rewards[9] = 1742029446;
    rewards[10] = 404137334455;
    rewards[11] = 113431422629339;
    rewards[12] = 38587085346610622;
    rewards[13] = 15996770875963838293;
    rewards[14] = 8161556895428437076912;
    rewards[15] = 5204779792920449185083823;
    rewards[16] = 4248387252809145069797255323;
    rewards[17] = 4605429522902726696350853424531;
    rewards[18] = 7048004537575756103097351214228445;
    rewards[19] = 17077491850962604714099960694478075305;
    rewards[25] = 18;
    rewards[26] = 1510;
    rewards[27] = 165350;
    rewards[28] = 22735825;
    rewards[29] = 3869316742;
    rewards[30] = 807985948644;
    rewards[31] = 206183716874451;
    rewards[32] = 64298858504764852;
    rewards[33] = 24606700946514329477;
    rewards[34] = 11658059615639150243674;
    rewards[35] = 6939139116010292965409030;
    rewards[36] = 5310177709695884701197848448;
    rewards[37] = 5417944041740025730272641342830;
    rewards[38] = 7830936568539684766699669978646642;
    rewards[39] = 17976121735815156138387102662511898913;
    rewards[44] = 2;
    rewards[45] = 84;
    rewards[46] = 5728;
    rewards[47] = 522972;
    rewards[48] = 61659518;
    rewards[49] = 9184107994;
    rewards[50] = 1705003336895;
    rewards[51] = 391623153514096;
    rewards[52] = 111035232373186089;
    rewards[53] = 38953746656818437996;
    rewards[54] = 17036497937743417006573;
    rewards[55] = 9416523284246997364709332;
    rewards[56] = 6725785327750463676116311208;
    rewards[57] = 6433530232804950076993156196671;
    rewards[58] = 8751998904874491998186743074190073;
    rewards[59] = 18974577637063874242348921695171566572;
    rewards[63] = 1;
    rewards[64] = 16;
    rewards[65] = 501;
    rewards[66] = 25706;
    rewards[67] = 1879489;
    rewards[68] = 184770685;
    rewards[69] = 23598039458;
    rewards[70] = 3834163535637;
    rewards[71] = 782938604015677;
    rewards[72] = 199806334259175276;
    rewards[73] = 63729223611100778985;
    rewards[74] = 25550889257134282768770;
    rewards[75] = 13036857507600936595914846;
    rewards[76] = 8646792118767830540030515565;
    rewards[77] = 7719857784103882545156250250796;
    rewards[78] = 9845714873472744513017103980332671;
    rewards[79] = 20090471847730684189719534018111776322;
    rewards[84] = 256;
    rewards[85] = 4217;
    rewards[86] = 144997;
    rewards[87] = 7967408;
    rewards[88] = 627232017;
    rewards[89] = 66792260819;
    rewards[90] = 9305004719113;
    rewards[91] = 1662927453401532;
    rewards[92] = 377280206974005998;
    rewards[93] = 108312611697003383786;
    rewards[94] = 39480692955577390009145;
    rewards[95] = 18466558683234331672667696;
    rewards[96] = 11306368626474766596196174270;
    rewards[97] = 9373587789723760876051759069103;
    rewards[98] = 11158112222962749668746090824795165;
    rewards[99] = 21345818655172812214316074369647797631;
    rewards[105] = 65536;
    rewards[106] = 1149384;
    rewards[107] = 42311994;
    rewards[108] = 2503009344;
    rewards[109] = 213427112297;
    rewards[110] = 24790124569401;
    rewards[111] = 3798576841874147;
    rewards[112] = 754231113879134009;
    rewards[113] = 192496950430879408810;
    rewards[114] = 63155584261947917379593;
    rewards[115] = 26856456513120542636583476;
    rewards[116] = 15073641750015138940509892079;
    rewards[117] = 11535977580589283558152309456824;
    rewards[118] = 12751652018255015903154966566038849;
    rewards[119] = 22768501289012087466446392969820350793;
    rewards[126] = 16777216;
    rewards[127] = 314649014;
    rewards[128] = 12465892329;
    rewards[129] = 798621491520;
    rewards[130] = 74272940112557;
    rewards[131] = 9488446269991021;
    rewards[132] = 1615302625848366483;
    rewards[133] = 360793996621274970151;
    rewards[134] = 105231762185667073323510;
    rewards[135] = 40277499209379064589210374;
    rewards[136] = 20552522428100944971108965855;
    rewards[137] = 14418884344710441156786200615788;
    rewards[138] = 14712810623981817234669488026294327;
    rewards[139] = 24394367384979066549040576729916735405;
    rewards[147] = 4294967296;
    rewards[148] = 86578212486;
    rewards[149] = 3713485713636;
    rewards[150] = 259444579476332;
    rewards[151] = 26536334094930946;
    rewards[152] = 3766219523861070771;
    rewards[153] = 721233811714863908602;
    rewards[154] = 184095343314545289307447;
    rewards[155] = 62640228392039477591429356;
    rewards[156] = 28769426614997062585251169958;
    rewards[157] = 18349671535208654280022928803766;
    rewards[158] = 17164082814922458575890189696960250;
    rewards[159] = 26270291294258216720936037244430839003;
    rewards[168] = 1099511627776;
    rewards[169] = 23964464223668;
    rewards[170] = 1120582017742425;
    rewards[171] = 86090644707729148;
    rewards[172] = 9781914561024998962;
    rewards[173] = 1561650570729335220208;
    rewards[174] = 341747557162857934539820;
    rewards[175] = 101762631449317943805391008;
    rewards[176] = 41548592731868112513336784332;
    rewards[177] = 23852021372062826058224022750488;
    rewards[178] = 20283619999520397681386221215474723;
    rewards[179] = 28458767047291815304352793042317106218;
    rewards[189] = 281474976710656;
    rewards[190] = 6679635020504935;
    rewards[191] = 343348968927242275;
    rewards[192] = 29299651301902406699;
    rewards[193] = 3744527648085709786177;
    rewards[194] = 683111829267922829815475;
    rewards[195] = 174389101583031582235029592;
    rewards[196] = 62309305812704133847182785129;
    rewards[197] = 31798537455673449566787122847131;
    rewards[198] = 24338608729695493646905227621216324;
    rewards[199] = 31045005677747771435004953493418625136;
    rewards[210] = 72057594037927936;
    rewards[211] = 1877332990277416666;
    rewards[212] = 107151043349371744458;
    rewards[213] = 10283303505204142788147;
    rewards[214] = 1501666268767778355745184;
    rewards[215] = 319563996343164377392648004;
    rewards[216] = 97887186140032477917162659539;
    rewards[217] = 43715844026074104250142609225871;
    rewards[218] = 29744596511106126675202002373267873;
    rewards[219] = 34148289271564189198990160526277013772;
    rewards[231] = 1844674407370.5.177616;
    rewards[232] = 532959419305417460751;
    rewards[233] = 34199245650990087306275;
    rewards[234] = 3749746141559948245944138;
    rewards[235] = 638710029020633448795855198;
    rewards[236] = 163084358451243040745529676767;
    rewards[237] = 62438084943177950193287569739764;
    rewards[238] = 37176696243831180424780470563509268;
    rewards[239] = 37940891085261431466299607797270323229;
    rewards[252] = 4722366482869645213696;
    rewards[253] = 153193891968249828851470;
    rewards[254] = 11227181263850205045367657;
    rewards[255] = 1435688191035029671162366337;
    rewards[256] = 293398319948847143266500005656;
    rewards[257] = 93630892949291171900768956557205;
    rewards[258] = 47791916641892757471645121003221337;
    rewards[259] = 42681178800470478513779470603886654646;
    rewards[273] = 1208925819614629174706176;
    rewards[274] = 44732959070623750795478391;
    rewards[275] = 3822247790422955620553331984;
    rewards[276] = 586336408451091794686883885323;
    rewards[277] = 149750686574114300529965478692459;
    rewards[278] = 63710659778031659693093889760656253;
    rewards[279] = 48775076109608200809979786955505409929;
    rewards[294] = 309485009821345068724781056;
    rewards[295] = 13334234657309393827615911462;
    rewards[296] = 1366330837671149190637746723640;
    rewards[297] = 261909596987600478890300387369290;
    rewards[298] = 89171615213500834928461796224542241;
    rewards[299] = 56898945742495262342667471915436095449;
    rewards[315] = 79228162514264337593543950336;
    rewards[316] = 4088297221333277495599464183220;
    rewards[317] = 5233060493154154662659130.5.1771891;
    rewards[318] = 133705003225903872825679864660094397;
    rewards[319] = 68269816560940632168200548199477007941;
    rewards[336] = 20282409603651670423947251286016;
    rewards[337] = 1305704925411524904272035688089603;
    rewards[338] = 222696176178091542181357768092554566;
    rewards[339] = 85320554291635892895811850639111324322;
    rewards[357] = 5192296858534827628530496329220096;
    rewards[358] = 444811280231209229153363695561872448;
    rewards[359] = 113723610876971601366349738253959088946;
    rewards[378] = 1329227995784915872903807060280344576;
    rewards[379] = 170474140766654103026661251472666657794;
    rewards[399] = 340282366920938463463374607431768211456;
    rewards[420] = 87112285931760246646623899502532662132736;
  }

  /**
   * @dev Get the amount of the reward for a given key.
   * @param key uint24 the reward key.
   * @return the reward amount.
   */
  function getPr000xyReward(uint24 key) external view returns (uint256) {
    return rewards[key];
  }
}
