object Form1: TForm1
  Left = 755
  Top = 266
  Width = 708
  Height = 709
  Caption = 'Ant algorithm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LabelListOfActions: TLabel
    Left = 16
    Top = 448
    Width = 65
    Height = 13
    Caption = 'List of actions'
  end
  object LabelAntPlane: TLabel
    Left = 16
    Top = 158
    Width = 333
    Height = 13
    Caption = 
      'Plane showing movement of the ants/pheromonses left by several a' +
      'nts'
  end
  object Image1: TImage
    Left = 520
    Top = 472
    Width = 153
    Height = 137
    Picture.Data = {
      0A544A504547496D6167656F1A0000FFD8FFE000104A46494600010101012C01
      2C0000FFE10E454578696600004D4D002A000000080007011200030000000100
      010000011A00050000000100000062011B0005000000010000006A0128000300
      00000100020000013100020000001C0000007201320002000000140000008E87
      69000400000001000000A4000000D00000012C000000010000012C0000000141
      646F62652050686F746F73686F70204353322057696E646F777300323030383A
      30343A31332031323A31393A31350000000003A001000300000001FFFF0000A0
      020004000000010000009AA00300040000000100000096000000000000000601
      0300030000000100060000011A0005000000010000011E011B00050000000100
      00012601280003000000010002000002010004000000010000012E0202000400
      00000100000D0F0000000000000048000000010000004800000001FFD8FFE000
      104A46494600010200004800480000FFED000C41646F62655F434D0002FFEE00
      0E41646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B
      11150F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C
      0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E
      0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C
      0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108009C00A003012200
      021101031101FFDD0004000AFFC4013F00000105010101010101000000000000
      00030001020405060708090A0B01000105010101010101000000000000000100
      02030405060708090A0B1000010401030204020507060805030C330100021103
      04211231054151611322718132061491A1B14223241552C16233347282D14307
      259253F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3
      D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6
      37475767778797A7B7C7D7E7F711000202010204040304050607070605350100
      021103213112044151617122130532819114A1B14223C152D1F0332462E17282
      92435315637334F1250616A2B283072635C2D2449354A317644555367465E2F2
      B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6
      E6F62737475767778797A7B7C7FFDA000C03010002110311003F00F554924925
      292492494A4924925292492494A49255F233A9C7C8C5C77EE36663DD5D50244B
      58FBDC5FFC9D95244D2A9B0924924A5249249294924924A5249249294924924A
      7FFFD0F554924925292492494A4924925292492494A595D6C6CC9E95950628CC
      6B5C7C05F5DD88DFFC1EEA5AB5556EA584DCFC1BB10BB61B5BECB072C78F7D36
      B7F9555AD658848120D6FD3E8989A22F6D8FD5B292ABD372DD99875DD637D3BB
      565F58FCDB584D77D7DFE8DAD76D5692041008EAA228D1E8A492491429249249
      4A4924925292492494FF00FFD1F554924925292492494A4924925292492494A4
      9240CEC9189896E446E35B496B7F79C7DB5D7FF5CB36B10240049D86A9009200
      EAD3E9978B7A9F556D6C8AAAB6B617824875A2A61BBFB4C69A6B72D3553A5E17
      D8B0994B8EEB4CD97D9FBF6D87D4BECFED58E56D0802222FAEBFE37A9332388D
      6C34FF0017D36A49249396A92492494A4924925292492494FF00FFD2F5549249
      2529249653BEB160BAD75384CBBA858C3B5FF6666F6B4F1EEBDFE9E3FF00E0A8
      1901B9AB48893B0B75525963A8F5976ADE92E683FBF7D40FF9ACF57FEAD4BF6A
      6656DDD93D332180726A35DC3FCDAADF5DDFF6CA1C63C7FC592780F87F8D1749
      259E7AFF00486B5EEB725B41ADA5EEAEE0EAAC0D132EF42E6D777E6FFA355ABE
      B797D474E8D88E7547FED765B5D4D31FBD554EDB9393FE6535FF00C325C71E86
      FC23EA2918E5DA87797A43B048024F0B97EB3F5C3EAF33230E8765EEADB94C76
      416B4B9A1AD6B9F5B9CE967E8DB91E83FD4ABD644EBFF57FAA67749B995750BA
      DCF805AC0F38F4B8032FC71563967F3ACF6FE9DF7FFC62F1DC8B0599566F738B
      A40739E20EF77D2F6FF8266FDDEDFCC4C9CA474E1A1E2BE108EFC567C1F67E91
      F5C3A566B5F49B2C36E3B75B5D598BA3475B47A3BB76EFA7E97A755DFF0002B6
      B1B2F1B2EA176358DB6B3A6E69983DDAEFDD7B7F398E5E0995562E1D8F38D9ED
      B6CC70D71B180B417CFD1A9C7DCFD8EFF08BBCFA958DD4BEB074D7757A732DE9
      99D55A68190C635D5DEC63587D4BE97EDFB43DAF73EB7BDCEFFC190129E9A710
      EBFBDE6A9421A92787B7EEF93E8A92CEE89D57F6963D9EA3455978B6BB1F2E90
      6436C673B7FE0EC6FE92B5A2A58904023AB14818920EE1492492285249249294
      924924A7FFD3F5549249252C402082241D082998C656C0CADA18C6E8D6B4401F
      001492494A49249252945E602928B8488494D7B2C703C8F12B85FAD9F528751C
      87E7F4E2D65D69DD7E33BDAD7BBFD2D2F3ED658EFF00095BD7756D675F0E550C
      B2DA6975B73856CA812F7BB86B7CD366011AAF8920E8F94E1FD41EAEF39195D4
      6A18D8D855BAE355A44DE6BF7BA96FA4F77A557A61FF00A744E9DF5B3EB8E3E3
      9B30B37F54A9DE9D78F636AB36B59F42B2D7B7ED0CAF6FB3E92EAADFDA1F583D
      7155D6F4DE982B7574EDF6BEFB9DF9F931EE761B5BFCF50DFDF5E67938B958F9
      CFA6E61AEE639CC7B7B873747B0FF57FF33515EC41D2B42CE05DC65577B3E8FF
      0050FAE6466FD6ACD7DF5B687F52C7F56EA5925A2FC77318E2CDE5CF6FA8DBED
      B36B97A32F0EFAAFF59CF48EAD4E6E4562FADA0B2F244BC5766D6D97547FD3D3
      B3FEBF4FE87F9CF4AD5EC993D5F0317A5BFAB5B734E132AF585CD2087308DD5F
      A5FE93D6DCDF4BFD23D3F19F4D76B62CA2E4286E00FB3465D43A9E274F630DEE
      25F6BB6534B35B2C77EE555FE72A63EB3F4EAEF38F9EDB7A6DDBB6B5B96CD8D7
      7F2EBC9ADD6E23D9FF005F5C69EAF9F4D94FD63CBC736F5BEB367D9BEAFF004F
      7CFA74D476B3ED0FFA3EDFD3319BFF0047EBFABEA7F3391FA0EB6CEA59FD1D95
      8EB9B72B08B5A1FD4AA66D0CB3FEEE62B77FA54B9DF4326AFD1FFA6AEAFE710E
      391B3743A69F8CBFBC938E2287CC7AD1FD2ED0FEEBB6D735CD0E6905A4482350
      414EAAB29639A2DC4BCB2AB21E0336BAB33EEDEC90EFA7FF0006EFF845366231
      B68BAC73AEB5A0863DF1ED07E96C6B0318DDC9F67B7D6F462A1DD3A49249C87F
      FFD4F554924925292492494A4924925292492494C5C046AB1FAB574E56462601
      8B4FAEDBF269D4814D6CB5ED75DB7E8B1F7FA3E9FA9FCE58B5AFA28C8AFD2BEB
      6DB5920963C07364196FB5DFBAE43AB0716861AF1EB6D2C264B5803413E2EDBF
      493640CB4D387AFF000A5D1901AEB7D3F8B976E331A1B5B1A1AD6886B4081AFE
      EAE2FEB9E174CBE8C8CAA69B323A860B5AECA343806B2B1EC6BF2F782DF599F4
      18CAFF004DE97F3BFA2AD765D42AEA19B6BB0FA71FB35234C9EA044903875384
      07D3BBFD25BFE07FE3540741C4C5C3760555038AF696D95BB5DFBC6DB0DCEFF0
      8FB3F3932B8B403D23AFEC8AF0787527D47A7FDF3E5FD7BA7F4BA28E99774ACB
      FB59BE817DAD2D0D735D3FA3F6B77B5BBAC1657F667BDF632DA3FE1113EA7F5D
      A71F31D8FD666EE8A08B5D8E00756DC8FF00037FA5FBBB77FAB457F4EDF4ACF4
      D77B87D0FA574BBDB6E1E2B29756496BBDCE20B8FB9CCF51CFF7FF00C27D35C8
      64FD5375DD37AA639657EB74DC81978A488F5AA735ECB31DF639DFCD58DC7A32
      2AB1FF00F08CFF004A986246840A3B7E97CAC8240F53A75F97E6EBE97A6E9B85
      95D73EBB9FAC593EDE998AD35F4B36434D90DD80D35BB6D8E66FBB2325F6FF00
      E17ABFC1FE87B8203816B8483A107821781BC1CDB5D7F54CA7BBA9E55A7D6B9C
      40AEBA886ED76F076B7DDFCDD35FE8B1F1EBFD1AE83A1FD79EADF56B2DB81D50
      3F2FA5E9B1CE9363587E8DF8EF7FBACA9DF4BD17FF00D6BD252425DF5EE7FB18
      F2476AD28508BE918DD11BD36F7DBD2DE68A1E773F0499A0B8FD2F49843BEC9F
      F58FD17FC12D1A6E65CDDCD904187B4E8E69FDD784D8D93465E3D7938EF16537
      343EB78E0B4F09DF4B5CFF0051BECB636EF1CC4CED3FBC9C057CBB76FF00BD58
      657F36FDFF00EF922483BEF60F7B3D48EF59827FB161F6FF00DB8F52A6D16B37
      06B99A905AF05A74F8A208D914FF00FFD5F554924925292492494A4924925292
      492494A559E5F947656EDB8FA8B2C04873A3FC1D5FC9FDFB7FEDBFF495CECA5F
      6580BAC8A0083501F489FF0048FF00DCFE435193482743A0FF00A49D079ACD6B
      5AD0C680D6B44068D0003B051731AE0411CA9A49C872B2F1E7740D7C7B42E3FA
      DBADE8FD668EB6E9774FBEA183D42248AFDDBB1B25ECFF0045B9FE9DBFF5CFDF
      5E816521EB3F330196D36556D6DB6BB5A58F63C4B4B4FD2DC8116BA269F23FAD
      7F5746045D86C8C2B0C883B8349F736BDDFE8FFD0FEFAC4C7EA16578C70F2C1B
      686C9A01D5F53BBFA45DFE09DF9F52F4EC7E9C301F6745DC6DA6B67AD8D5D837
      7EAEF7167A267F9CF42E0B332FEA160751B4DB4DAFC4B4EBB08DEC9FFCFB5B7F
      EDC518DB41F464B00EBF4293FC50F5AC975B95D16E7EEA037ED38DB8EAD76E0D
      C8633F92FDECB3FF00562F4D5C0FD4EFA8F9BD0BAA9CFC8BE97B5AC7318DA8B9
      C4EFEDEF633D3637E9AEF1A6427C2EB5639D5E8C924924E5AFFFD6F554924925
      292492494A4924925292492494A4924925292492494A4C403CA74925387D6A8A
      F1FA8F4CCF23F47EA3B0EFFEA647F34E77F532595FF9EAF37A7B1AE9014BABE1
      373BA6E463176C2F612C7813B5EDFD255647F22C6B5EAD564B98D71E4804A681
      52976352FAFCA5793718F7171FA7CC11371C3515A081AEAA49272C524924929F
      FFD7F554924925292492494A4924925292492494A4924925292492494A492492
      52C44883C143C524E3D73208686BA74D5BED77FD208A82DFD1DE5B3EDB46E68F
      070D1FFE7376FF00E089A7420FD3ED48D88FAA649249390A49249253FFD0F554
      924925292492494A4924925292492494A4924925292492494A492492529072AB
      B2DA8FA2436E610EACBA6370FDE8FCC7FD07FF0021192425546F648BB14A4924
      914292492494FF00FFD9FFDB00430006040506050406060506070706080A100A
      0A09090A140E0F0C1017141818171416161A1D251F1A1B231C1616202C202326
      27292A29191F2D302D283025282928FFDB0043010707070A080A130A0A13281A
      161A282828282828282828282828282828282828282828282828282828282828
      2828282828282828282828282828282828282828FFC00011080096009A030111
      00021101031101FFC4001D000100020301010101000000000000000000040703
      050602080109FFC4003B10000103030203060304080700000000000100020304
      05110612213141071314516171228191153252A12342438292B1D1F024336272
      B2C1E1FFC400190101000301010000000000000000000000000102030405FFC4
      002E110100020201020405020701000000000000010203112112311341517104
      226181A132D133425291B1C1F0E1FFDA000C03010002110311003F00FAA50101
      0101010101010101010101010101010101010101010101010101040B65CE2B85
      4DC2189AE068E7EE1E4F53B5AEE1FC4A95BF54CC7A2D6AF4C44FAA7ABAA20202
      0202020202020202020202020202020E7AC4CF0BA9F50539E0667C556CF56B99
      B0FE7195863E325A3EEDAFCD2B3F6742B7622020202020202020202020202020
      20202020D2DF23F075D497767010E60A8F585C471FDD7007DB2B0CBF24C64F4E
      FECD71FCD134FEDEEDD2DD908080808080808080808080808080808080834DAC
      6ACD1E9AAF7C6DDF33E33144CC6773DFF0B463AF12161F136E9C733FF72DBE1E
      9D79221B3A263E3A4859290646B1A1C47538E2B6AC6A222595B5333A66528101
      010101010101010101010101010101069AB182BB5053C2EE30D137C43874323B
      219F401C7E8B96F1E2668AF9579FBF97FB74567A314CF9DB8FB79FFA6E57539C
      40404040404040404040404040404041F8E706B4B9C40038927A20E1F5A76996
      1D374B216D5C15956D19EE22901C7A9239715CD7F89A47159DCBA69F0B7B7368
      D429A3DBBBBC7D6D4456E85B2493B2689EF2E706E19B08233C78679639AC22FF
      0037579EF7F8D379C5F2F4FD3FDED64696ED96D9798632FA73DE35B99DB13B2E
      69F30D2388F9E47AABE4F8CF0F9B578674F849BF113CAC8B45DA82F14A2A2D95
      515445C8961E2D3E447307D0AEAC792B923AA93B8735F1DB1CF4DA3529CAEA08
      080808080808080831D448E8A07BD91BA47346431BCDDE832A2D3A8DC46D311B
      9D39F60D4F5F9739F436A88F268699E41EFC43573C78D7E6755FCB69F069C733
      F8676DA2E98CBF5055177A41101FF156F0AFFD73F8FD91E253FA23F2F7E1EFB4
      F830D751558EAD9E03193FBCD240FE153D3963B4C4A378E7CA618EB6B3501876
      515A69454176DDF3557E8C0FC5C06E3ED80A2D7CBAE2BCFBAD5A62DFCD6E3D98
      60B04B5389751D61AF939F8760D94ECF66FEB7BBB2AB5F879B739677F4F2FF00
      BDD69CF15E3146BEBE7FF7B2BBEDF7454775B0FDAD67A76F8FA38F6BA268F85D
      171E3B7CDB9FA654E4C5589EA884E3CD7D746DF2F50D4D3DBBBE371A2F10E11E
      236EEC00E3D4FB2E7D44CF0E9DCEB94FD14D96EFAAA845BE7A7B5C4C734CF535
      5308E26F1C9E27F21D55ED158D44A9F36A6621F57EA59ACDA5A819AA74C8A3EE
      E2998CAD148E0592C2E382300E01C9042AE78AE1D65C7EBCFB2987AB34CE3C9E
      9C2C882564F047344E0E8E4687B5C391046415DD13BE5C53C3DA904040404040
      40404040404040411AA49CF9A94C35354E382DE3C79F15495E150EB2ECA2C77A
      A892681CFA091EEDCE11B41693D700F2584E38EF0DE32CE953F69F6BD3762A1B
      75B74F4FDE88C9F1C58FC97B81E64F2DC72797E158DBA26D1A9E5D18ED7E9989
      ED2E5EDD3D3992516CAB9E38A46EC7C4F3B77B739C10381C60159DEBB8E995EB
      C4C5BD1F68F6533CB3F675A7CD47F98DA56C79CE721BF083F40177E1DF446DE7
      66D75CE9B8D497CA1D3B689AE37297BB823E000FBCF71E4D68EA4A65C95C559B
      595C78ED92DD3568286AF51DD2921ADA7AAA2A1A89477CCB6D4C7BBF44791710
      7703CBA7FE73E2B66BC755A62267B47D1B5EB8A93D31B9D79B7D6DAEAD6C23ED
      BA58A964CE37C52EF8CFCC8047CD6D5C968FE246995A95FE49DA5CD5F4F1B322
      41238FDD6467739DEC02B5B2D63CD58A5A5281C80792D1510101010101010101
      0789181E0E513B6BAAE972DEA1252AF7584373B9D6496BB5130C6DDA2A6A7AB7
      70CED1F2E27DD7067BE4BDBC3C71EF2EDC314A57AEFF0068711DA1767F05CB4B
      43496C8315344D261C0F8A41CDCD27CC9E3EFEEB49C71111AF252B967AB73E6F
      9F63B2D64350F804723678B3B8118231D5616BFCDA975C735DC2E0EC2FB53669
      712DAB504AEFB29F2663973934EF38C9C73D873938E47A735BE2C9D3C4B97362
      DF30B2B58551B9D54DABAF2F68D27646779414DBB3E3A7E4D77B171681E9EE56
      733E3DBAED1AAD7F2988F0ABE1D7F55BBFD213FB29D3D2DF349CB7FD452CAFBD
      5E243502A58E2C92060386061FD51C338E58202D31E28C95EBB779679324E3B7
      457B43A782F370B14CDA3D4F199E91C76C573863F81DE92B47DC3EBC944E6B61
      E3376F5FDD1E1572F38BBFA7ECEAE06C2582480336BC6E0E663041EABAA223BC
      39E667B4B22B2040404040404040404041AEB8D45544FDB0503AA1BB73B84A1A
      33E5C7F9FAACAF7BD78AD77F7694AD66399D3554F412426AA79C34D4D4C9DE3C
      301DADC343434679E00E7D725571526BBB5BBCAF7BC4EA23B4392D47727C157F
      67DAE1153737712DFD4847E279E9ECB2C99B56F0F1F36FF1EED31E2DD7AEFC47
      F9F670373B6EA2B26B5FB52DF4C6F10D651BA1A8136DDB1C84119683C5ADE5C0
      7304851359A73ADCAD135BF1BD42AED4FD9E5C68C5B1F2BA08A4B84E6211EEC0
      8C9231B8FEF7E4B289B5223ABBCB789ADA67A7B43774BADBBFD30CD3DAB64A87
      5BEDD54C8A0A184344F26C0E1B776383472C9C9CE319E2978BDAB1599E3CFD51
      1D34B4DAB1CCF9F92EAD0DDB3E97AE929ED12534B651131B1442723BA680301B
      BBA79710BB29963511AD38AF8AD1333DD6D111CF10FBAF8DD8231C415ACC44F7
      63BD23774FA57E6999BA171F8A21C36FAB7FEC7F673D4D39AF65F716EE931C8C
      9012C7038E07D1691689ECACC4C777B5281010101010101010101042AC73AA0B
      E9A99C5AFC61F28FD9E7CBFD5FD9F5CAD69B7C95FEFE9FFABD635F3590EDFA7E
      86DB4EF8E922E321DD248FF89F23BCDC7AA9C58698A3555AF96D9277642B95B0
      31AE2D03DD5E61589573DA450C4ED3B5134F0195D460D431ADE7968FE8B97E22
      9D55FAC3A3E1EFD36FA4AADED3E06D45C687575969B26AA26C866663E07E3991
      E78EBE60AA5F7BEA85E93C74CF92B982E9457487C057FF008699AE261AAFC4E3
      D1FD71FC96948F556FBF25D7D80F6915169BA45A475254BA486576CA495CECF7
      6EE8CCF91E9E4AD4BEA75E4CB263E370FA657430639208DEEDC5B87FE21C0FD4
      2ACD22531698788607C72171A895EC231B1D8C0F9E32A2B5989EE999DC766757
      54404040404040404115B39AADCDA624301DAE908F2E7B73CFDF92CBAA6FC57B
      7AFECBF4F4FEA67862642CDB1B434649E1E7E6AF5AC56350ACCCCF32F6AC860A
      B88491944C397BBDB1B331ED73016B9A438119C855985A254F4B607E9CB84B64
      AB8CD469EAE71F0EEE7DC38F1319F4EA172DA7C39E9B76974447891B8EF0AB35
      9766B5744F96AAD8D75543924358DCB9A3D47F456E60ADB7DDC85B296E34F77A
      492664C268E46966FCE460F0F60A9698F269ADC3FA0F6AA87555BA9A678DAF92
      26BC8F22402BB2277112E198D4A5A94080808080808080808081CB920202020C
      52C2D90711C513B731ABF4F1AFB2D6B20C89CC4E7464730F032D3F5C2CB3D3AE
      9310D70DFA6F12E6ED16A370B751D747FB68C38FA1EA3EB955C33E2522F1E69C
      B134B4D7D1BFA7B05148F64B576FA59A567112490B5CE1F3216BE1D67BC33EA9
      8ECE9E9411C0F05755294204040404040404040404040404040402839BD2548E
      A092EB6D91844505499202470EEE4F8801EC772E5F8689A7563F49E3DA5D19ED
      D7D37F58FCC3A30C681C82EA73BF701010101010101010101010101010101010
      10606E057C9E6E8DBF913FD5671FAE7D96FE5675A2A202020202020202020202
      0202020202020208F523BB7B270325BF0BBFDA719FE40FD5677E262CB5798E94
      85A2A202020202020202020202020202020202020FC7B439A5AE19046085131B
      8D49D91E85EF31BE390383E2796648FBC39823CF811F3CAA6399D6A7C96BEB7B
      8F3495A2A2020202020202020202020202020202020202020202020FFFD9}
  end
  object Label1: TLabel
    Left = 176
    Top = 448
    Width = 125
    Height = 13
    Caption = 'Achieved destination point'
  end
  object Label2: TLabel
    Left = 368
    Top = 448
    Width = 26
    Height = 13
    Caption = 'Dead'
  end
  object Label3: TLabel
    Left = 464
    Top = 448
    Width = 47
    Height = 13
    Caption = 'Total ants'
  end
  object AntPlane: TStringGrid
    Left = 16
    Top = 176
    Width = 657
    Height = 259
    ColCount = 10
    RowCount = 10
    TabOrder = 0
  end
  object StartingPointBox: TGroupBox
    Left = 200
    Top = 16
    Width = 161
    Height = 81
    Caption = 'Starting point'
    TabOrder = 1
    object LabelStartingPointRow: TLabel
      Left = 9
      Top = 32
      Width = 22
      Height = 13
      Caption = 'Row'
    end
    object LabelStartingPointColumn: TLabel
      Left = 9
      Top = 56
      Width = 35
      Height = 13
      Caption = 'Column'
    end
    object StartingPointRow: TEdit
      Left = 64
      Top = 24
      Width = 89
      Height = 21
      TabOrder = 0
      Text = '1'
    end
    object StartingPointColumn: TEdit
      Left = 64
      Top = 52
      Width = 89
      Height = 21
      TabOrder = 1
      Text = '1'
    end
  end
  object DestinationBox: TGroupBox
    Left = 368
    Top = 16
    Width = 161
    Height = 81
    Caption = 'Destination point'
    TabOrder = 2
    object LabelDestinationRow: TLabel
      Left = 9
      Top = 32
      Width = 22
      Height = 13
      Caption = 'Row'
    end
    object LabelDestinationColumn: TLabel
      Left = 9
      Top = 56
      Width = 35
      Height = 13
      Caption = 'Column'
    end
    object DestinationPointRow: TEdit
      Left = 64
      Top = 24
      Width = 89
      Height = 21
      TabOrder = 0
      Text = '9'
    end
    object DestinationPointColumn: TEdit
      Left = 64
      Top = 52
      Width = 89
      Height = 21
      TabOrder = 1
      Text = '9'
    end
  end
  object AntControlBox: TGroupBox
    Left = 536
    Top = 16
    Width = 137
    Height = 81
    Caption = 'Ant Control'
    TabOrder = 3
    object StartButton: TButton
      Left = 6
      Top = 24
      Width = 123
      Height = 49
      Caption = 'Go'
      TabOrder = 0
      OnClick = StartButtonClick
    end
  end
  object Button1: TButton
    Left = 16
    Top = 24
    Width = 177
    Height = 33
    Caption = 'About the program'
    TabOrder = 4
    OnClick = Button1Click
  end
  object ListOfActions: TMemo
    Left = 16
    Top = 472
    Width = 497
    Height = 137
    ScrollBars = ssVertical
    TabOrder = 5
  end
  object ClearListOfActionsButton: TButton
    Left = 88
    Top = 443
    Width = 81
    Height = 20
    Caption = 'Clear'
    TabOrder = 6
    OnClick = ClearListOfActionsButtonClick
  end
  object AchievedDestinationPoint: TEdit
    Left = 312
    Top = 443
    Width = 49
    Height = 21
    TabOrder = 7
    Text = '0'
  end
  object Dead: TEdit
    Left = 408
    Top = 443
    Width = 49
    Height = 21
    TabOrder = 8
    Text = '0'
  end
  object Total: TEdit
    Left = 520
    Top = 443
    Width = 49
    Height = 21
    TabOrder = 9
    Text = '0'
  end
  object ClearPlaneButton: TButton
    Left = 16
    Top = 64
    Width = 177
    Height = 31
    Caption = 'Clear plane'
    TabOrder = 10
    OnClick = ClearPlaneButtonClick
  end
  object ResetCountersButton: TButton
    Left = 576
    Top = 443
    Width = 97
    Height = 21
    Caption = 'Reset counters'
    TabOrder = 11
    OnClick = ResetCountersButtonClick
  end
  object NotationBox: TGroupBox
    Left = 16
    Top = 616
    Width = 657
    Height = 41
    Caption = 'Legend and information'
    TabOrder = 12
    object NotationLabel: TLabel
      Left = 8
      Top = 20
      Width = 417
      Height = 13
      Caption = 
        'Notation inside the action list: [column][row] ; ant can go: rig' +
        'ht, upwards and downwards;'
    end
    object Label5: TLabel
      Left = 429
      Top = 20
      Width = 208
      Height = 13
      Caption = 'Initial ant'#39's pheromone is assigned randomly;'
    end
  end
  object PheromoneBox: TGroupBox
    Left = 16
    Top = 104
    Width = 657
    Height = 49
    Caption = 'Pheromone control'
    TabOrder = 13
    object Label4: TLabel
      Left = 192
      Top = 24
      Width = 199
      Height = 13
      Caption = 'Amount of pheromone left in the signle city'
    end
    object PheromoneValue: TEdit
      Left = 416
      Top = 18
      Width = 89
      Height = 21
      TabOrder = 0
      Text = '1'
    end
    object ClearPheromonesButton: TButton
      Left = 6
      Top = 16
      Width = 171
      Height = 25
      Caption = 'Clear pheromones'
      TabOrder = 1
      OnClick = ClearPheromonesButtonClick
    end
    object ShowPheromonesButton: TButton
      Left = 528
      Top = 16
      Width = 121
      Height = 25
      Caption = 'Show pheromones'
      TabOrder = 2
      OnClick = ShowPheromonesButtonClick
    end
  end
end
