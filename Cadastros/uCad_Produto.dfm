inherited Fcad_Produto: TFcad_Produto
  Caption = 'Tela de Produtos'
  ClientWidth = 907
  ExplicitWidth = 923
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCon: TPanel
    Width = 849
    ExplicitWidth = 849
    inherited pnBusca: TPanel
      Width = 847
      ExplicitWidth = 847
      inherited cxConsulta: TcxComboBox
        Properties.Items.Strings = (
          'C'#243'digo'
          'Refer'#234'ncia'
          'Produto'
          'Marca')
        Text = 'C'#211'DIGO'
      end
      inherited cbAtivo: TcxComboBox
        Style.IsFontAssigned = True
      end
    end
    inherited pnBotaoCad: TPanel
      Width = 847
      ExplicitWidth = 847
      inherited cxVer: TcxButton
        OnClick = cxVerClick
      end
      inherited cxApagar: TcxButton
        OnClick = cxApagarClick
      end
    end
    inherited pnBotaoCon: TPanel
      Top = 404
      Width = 847
      Height = 165
      ExplicitTop = 365
      ExplicitWidth = 847
      ExplicitHeight = 165
      inherited cxCadastro: TcxButton
        Left = 364
        Top = 115
        ExplicitLeft = 364
        ExplicitTop = 115
      end
      inherited cxFechar: TcxButton
        Left = 423
        Top = 115
        ExplicitLeft = 423
        ExplicitTop = 115
      end
      object pnInfoProd: TPanel
        Left = 0
        Top = 0
        Width = 847
        Height = 116
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object cxImage1: TcxImage
          Left = 0
          Top = 0
          Hint = 'Foto do Produto'
          Align = alLeft
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000080
            000000800806000000C33E61CB000000206348524D00007A25000080830000F9
            FF000080E9000075300000EA6000003A980000176F925FC54600000009704859
            7300000B0C00000B0C013F4022C800001B1A49444154785EED9D69B01D55B986
            0F4388030878714041401008C315A712907B155404C48B5E04820650CB2B01C2
            99E27F710034202A01244C2624500C29902ACB2A3444120DA290508504415113
            2C15D472424086C07D9FAEFDEEFAF6DAABF7DEE7E4EC6D2ADD3F9EEAEED5ABD7
            B7D6F7BD6BE8DDDDE70CBDF8E28B3515269B58531DB28935D5219B58531DB289
            35D5219B58531DB28935D5219B58531DB28935D5219B58531DB28935D5219B58
            531DB28935D5219B58531DB28935D5219B58531DB28935D5219B58531DB28935
            D5219B58531DB28935D5219B58531DB2891BCB8A152B863EF7B9CFC1B6E79C73
            CEDBC491E203293ACFF628F11EB11BD79C77DE79434F3FFD74C7729577B327B6
            93FDB276937EC925970C3DF7DC73599F75239BB8B1AC5CB9928A6DAF0A1E2786
            C57817C6C4A775CD0108E099679EC9965B4501946D0DC79B9C00962F5FBEAD2A
            768A2AF8598100CECEF1F9CF7F3E1E8FEA9AF173CF3DF7A0279F7C325B6E9504
            006E2B5B13D3BDBF4909E0A9A79EDA62DEBC79C7A86204BF08724A2E9D3431A2
            EBE6FCF0873F7C6DAEECC6C8D26C7C15707BD9C6B6C7F44D46002FBCF00241DA
            5D951A555087D32077428D29B6BA76EE57BEF295E310525AF61D77DCD1E284CD
            99B49D65C76C3719013CFFFCF35B7CF5AB5F3D56951A4F03FC852F7C214B9A4F
            0CEBFA39F7DC734FCB28A0B2872EB8E082CA0920DDA6908E00F04FF457AF6413
            27CBFAF5EBB753003F23461CD018EC2F7EF18B6DC4F3BE468D9A7BF3CD371FBC
            61C38666D9EBD6AD1BD2B9AC13364762C03B89C00218C8084040D6AC593374E7
            9D770EFDE8473F1A4A176B9ABB19FE87154C6809FA97BEF4A5B3B5C06B83F454
            086AD8B87AFBB1CF3EFB6C310D7057B070E1C2AC033657CA82CEB1F1F1C004A0
            800C7DE31BDF6856E0C20B2F6CB9655BBD7A75530069D0757B5770FEF9E7B7E0
            740B01D4D3C765E758AD038AF2111CF6AA340274025FC4FD814D01A86CC18205
            CD0AB05DB264C996EAF93B8BB7DC70C30D1F5090E6104407DD81FEF297BF7CB6
            16774D74A7506C49B7103C224840233A7FCA65975D7684D61487AB3C7E287A8F
            CA2EB655423E8EC787EAF840F1CA1883818D00A900149019DAFF9860DE2E7ED4
            71AF77F063C035ACB7413A244298830854FEDC1CB25355B8B5C6CF67097E647B
            FDBF4B00D3659CDECE6A7F4C1473BE7B7EECF10EBCA68BB3D59B5B200D2C04F2
            732D84D1A089ECB4A03AB46CBD5F463CEFFC4E2B3B1789F93AA5B335319F89E7
            9D274D737AC939FFBACA1DD321975E7AE960A6008C48005BCBE871AAD867A99C
            8343F00958ECF904D581BFE8A28B0ABEF6B5AFB56C5321701DE2A11CF0DAA093
            10AA441001F0C3D95CF9F030D667B99875239B58060F6914B4FF92E1B6E07BD8
            77CF2798EEE90EF8D7BFFEF5362C0448451047829C104CAC8BF7ED30A7A7E7E2
            B657269ADF709DC99DCFE1BCF13AEF9B86081805C674DBBC772E66DDC8269671
            D75D77BD46C6E6C8F8882BDAADE7C7C06B65DF8645001E0D521150B68580BD32
            216CEEA4023012010FD34E5DB76EDDF45CDC3A914DCCC1F0AFB98695E8DC58A9
            34F804CFC1A7573BF0175F7C71731BB10880FC51045E17A44288A3C2E6863B94
            851EF7A3DF8D45A08E39BE6CD9B219FC649E8B5F19D9C41C1AFEB7510066C9D8
            A88D533982417008525CF079D8774FCF05DF02B0083C1D9489200AC1DB280A93
            4B9B081B7B7D27BA955D763E0A241543430073E5C30F3CF3CC332DCF50BA914D
            CCF1F39FFF7C07F5FE3364AC58F13BF85498C0B8F7BBE77BE82F0BFEFCF9F35B
            8E3D0A44118045602144314451A46965386FBA4DD3223E9F239EEF96B78CDC75
            B66D2C8C28842802C56654BE99F9AF7FFD6B9B5CFCCAC82626148A5ABD7AF5CE
            52D9993236ECE0BBE20EBE87FE18FC1864829EC3E7E348001601E5C6112182ED
            B89F3BCE919E8FD7783FA639DDFB65384FEEDAB2EB7DCEE7D37CA930A2183C22
            3032CB3FA748002F73CC7A219B9840615BDE7FFFFDAF97CA9A02A01254860AE6
            821F05E020A7818FE444E091204E0BA920BC353E37596259BDD208D8B0023422
            9F8CC837A3A2D857DAB0CE0FE7AEEB95288828044460212000D5FF5409603BE2
            D5885B2E9E2D641313286CAB071E7860571939536A1BC6A80540E5A824CE73B0
            26DBFB2394A1327160E148D9198962883878AEC3C610CBEA046DA66E723E432F
            6D38E3AAABAEFAE4C2850B4FB9FEFAEB672E5AB468968E4FD3C2F974E59D433E
            B5631431E4CA8BB673F5B018521110070B40D72180ED89979852016CFDE0830F
            EE262367C9D870ECFD08C095F6D0DD4900DE8FE74C1480CA1B91033F75DF7DF7
            BD0FD897034672028869E9798ED3F3312D6E637A07861B813C5B413E75D5AA55
            C7FCE217BF78D7134F3CF196679F7DF6C0E79E7BEE800D1B36ECAFBBA603B47F
            A016656F5EBF7EFDC1F7DC73CF9137DD74D34C957F262384DA321C6D79BF937D
            0B01DB160271A0436A64C637A7C9DE8E8AD73431A50298A645E06E32520800A3
            18A7225488CA51F1DCF0DF0B31F0A072862FB9E492331E7FFCF177C8363F70EC
            ADFDB74B38B365AB709CC516F753386772E7CB48F3734C1BE5740277F62DB7DC
            72E2AF7FFDEB4315E4FD55B77DC4BE624680E398C6FE3EBA459BF1D8638FBDFD
            7BDFFBDEFFA89DB311927D176D7ADFE9268E061601B1A04322005D739A468057
            CA1602206EB978B6904D4CA0A06D1E7AE8A1DD1180D4C65CD7D6FB5D6907DFE4
            021E711EE7E77A9537BA64C99259384CB6EDCC7D95F671357ED48E1A14B48F60
            D1E315F87735EAE3C003227D93D84BEC99403AE763FE7D24E8B7DD76DB6D27C8
            9723F221C16BFA308745405D2C028F0216807CD737014C4B05E0DE4F6562C5E3
            08D04D00318FF7B9566522808FA987E1BCC291EC33B7E604609B93252D23962D
            870FCBD1C3DFFFFEF78F7BFAE9A70F505D08A6834EDDF6106F10BB88D78BD789
            9D1BB04F3AE777176F14B4A910015BDD5DBD5736CF54BB0A1174C202B008E228
            A0B5597F05A029A06D04B000A8902B69273AA09134F0C6D71804B078F1E29335
            87EE26DB38F17512C01B248A93D4E829174024964BF069E34F7EF293F7AB0E04
            0C08208124A8D4EDD5E23F04732F0BB0570438DE41709E7C886257816828A728
            6FDDBA758768CA63B1D875748B02A06E1E05FA2E008F001A6EDA46002AE4212A
            3A330D7424E68BD04804A0D5F44C09E035B28D637794005E73EDB5D79ED8C949
            B9F226422C8BE0AB8DC35ABCBD4FF63D8C137802C80BAB0495006F2B5E2A5E22
            F8112685DFE739FF7281280810ED6264B010DEF4DBDFFEF69DEA1CB3D5BED291
            201D012C004600ADCD0A016811385801B842B969A01BCEEB6BBD25C8D75C73CD
            8912008DE1878D97697F4789E2A3B23B463E13AF4BCBEF15AE8D501E2BF53BEF
            BCF383B25D04483084D3E3771204927A115C9C5DDC76F1FA9A7A6093F0891B3E
            DC5A2008C4C0BD3A6D43488C24AC1DF6D2DDC4616AFB1CC497AB13A402200E1E
            01D4B10623005457360250D99C935362C3D20612E4ABAFBEFA44DD56D1C370F2
            7409E015DFFAD6B7B20288E46C7522BD1EE4D0D11B6FBCF1648D3A0CD1CCF304
            895ECB704EE00924412F9CAC85215F436DA5BB949D54A73D55C6FEE24DF2CFCE
            BAF59B7EF7DD77F3C10CBEE4D68CEB081042A07DAF128C068C2E7BAD5CB9F268
            169CB16DB1BDA900E214303001944D01AE702F387FDA3020C8BAEF4700F4B462
            289500B6D3A870BC1A3C16F3FAFAB4FC5E49EBA1F6709B79866ED7DE2ABB9EEB
            99BFA90BC33C3DB9702EAFAA6B61FA52F9E51DE79C73CE2C0581DBE4116DC708
            48E3079A4FEADC112AF7D5EAE1D1A79483B8190D984E5840EEA136EF2BA19FAA
            761622C881CF2D00E21005D0F73540EE361026128CD81870305D96CA1FBBF2CA
            2BDB04A051E178CE399FEDA6B663D9A96D13F380CB51FBC6962D5BC6D0EFD53D
            3D942011ACE650CF6BF1EAA97B29B89F90F3E7EABA517E236950FC3AC7BED247
            048FD0CF12EF9460B64038BAC5F56840FB581F20024682DD1F7EF8E143D5CEE2
            17C3B47E403AC14F47008D68831B0130EC4AE402D10BB14186F2E4D8B12BAEB8
            823540530012C3761A158EE79C6D9A8DB1ED7DCA91A0997B67FFE52F7F395036
            3DEC538766F0C5901686BC17F956F9835E3EE6802B082D38BD718E9161AEAE3B
            4A2BFEADD5367C4B79F89736B298647DB1EB860D1BF6E43698A920B633820FE8
            800317401C017202B0537BC1F9DD20239115024847008D0A4D01183B6422F663
            1E5F0F0AD4D877BEF39D0FCB1EC1E7968D399A61BF197C02A7F5C10CF5FC6298
            27D065C85F0549DA6765FF084611CA6B601130D21477086BD6AC79B7EA53FCF2
            E8F6C52DC14F053090358005601150895C253B411EE340C606C9C6D882050B5A
            04C00820511CCF39DBB56DDB37399B9198176C9FB6AD5DBBF660D923F8389205
            1F7375117C50EFDF51BD78B61C3EDA08E84429DEE8BDEDB6DBF831C83EF67480
            D85868BEF6EF7FFFFBBEEAD1A7ABAD6D4F12ED27200EEA1485001801FAB606F0
            0F415265F3598003E18A45A7A6CEEEE4786FDD30827CF9E5977714806D9BD43E
            E46C465C6F509B18FE4F97E3B9DF67D1476FC476D391F45ADDABBF5F0BBB96D7
            E2268AAEE755FA598F3EFA28E5DBCF8800B1B11ED8496B845D162F5E7C22A340
            6CA771F02D0095BBE908A09BE38DAF73396E1443712A00A60004C039DB36A9FD
            4E389FAF01CA90B046B5C83C59F32F0B317E7CE236AD39F4C3FDF7DF5FBC1525
            3F34BF7D9C2C1A45C67EF0831FA4A300BE66BD51DC1EAE58B1E24809659CFAA5
            C1070B40532665F65F00AA4CF371B08DC7CA4D240826D7A83201685AC80AC0B6
            4DCEA629B32B078EDF72CB2D1F922D1662F4FE3627EA1E9DCFB2C66220270BA3
            88168347AA8D4D8189380AECB87AF5EA43958F77229AED747D81743A631440DF
            D70016401C055CB918845E880DA22CA3F96CEC9BDFFC66DB1480003817F3A6F6
            7BA9077952DBF434DDDAF1B32FBD8FB93FF6FE2DF8327AD1A2456D6F451BD603
            39727941F658E0E5DEE1C3DFAC055EA111E720F2323DC5361B07DF02D0143698
            1140C3655300108310491D6F7C3E0620364A8E6B1300238046854200D136A4F6
            73364D6A1B288F85D9DD77DFFD6ED9E2768C0044076EA1BA6CA5F9FF68F2C540
            1A075CFEF16D5F730B697E7AB6EAF309058CDE9EFA9B36BF5C0BD2FD94778E02
            DC14406C3BFB049F78285F2180BE8D0016801AD3320298B200C4639F370E801B
            636463ECB2CB2E6B1B01248AE3D5D04200C6B6A37D486DB2EF3C39BB04F6C73F
            FEF17FCB16733F36A303B79400A75D7AE9A5C7A40270808D0510213D5E034100
            4C37D86A8E368269E0A50F3CF0C00CE52D04E0B61AD79BE00F5C0018B4085CB1
            3400BD900B04E5AA3159013002702EB56DFB26670B621E5F679B0CED5A941D2E
            5B2CC270600CC8565A954FBBF5D65BDFAB3540CB14E0A097051F38677C9D7CC9
            DB40272B600820DE6A16F6C4F4FBEEBB6F7FE523C045A78BED76BDA3002EBAE8
            A2FE4F01325408005C9118849CD3E37E2406213648363A0A803CD119D13E44BB
            691A449B40796ADBF8B5D75E7BB4E67AFFDE1F03C2310F75DE2E01343F8C7150
            09B27D92230AC1D732925C7FFDF5C7C81EEB8D28384000D37EFAD39FF2473647
            29C30270BBBDEFF255E6E004E006DB81310039E7A7C7CEEBEB5C8E1B241B1DA7
            003B2467DFA4F623D12E65356C8ECE9F3FFFA4E79F7F9E3540CB0250E0D0973D
            FEF8E3BB2988B3F181C80AC081715B8C05601120A4356BD6BC4DE5B206A08DA9
            00B6FEEE77BF5B2C3A5D7E5AB6B78D32073305D0F8B4C1310813C10104370664
            634CF36D9B00248AA600A2ED89D621B5497B70A0F64F7FECB1C7B80DA4CDA900
            8A07364B972EFD908257AC033A05DFB87CB000E4C7516ED99E7CF2497E73F00F
            4E51005B3212E936F123CA5B3C6BB00DDB89C78D32FB3B023CF8E0835901D899
            766C7474EC6D391C84B4416502882380F1F5B11EDD705EDB757014D89155AB56
            EDD768771400534021803FFEF18FFBEABAD371781480EB91E27ADA06FEC38EE6
            F743549E9F34A602D8E2F7BFFFFD4ECAFF19E52F1E2B479F475CAE0530901120
            6DB81D6AA2A3A3E363BAC9394A764A4700CE39AF89E545CAEC469B7660C389E3
            0B162C605E261851000CC9DC1DF0C8F6753FFBD9CFF881A6707A0C8CCB8DF81C
            F91AC11FD3D0FE412D2AFD9E01534EBAE618BAFDF6DBDF425E5D53D48DEBA32D
            97095100031901A200C08D8DCEEF859C93D8CA4E570190D7D746FBDE96E1BCB6
            E9E0036D53F9B31F79E4117A66EA03EE0E7850C36B61BB6B417884F2F2B71278
            0FA0A51E11DB51D9FC358FD16F7FFBDB1FD63A8357C018FE1154DB4FCEFFFCE7
            3FA75D78E18527D1D62800B694657B315D79F9726AF02300B8B1398777227512
            65020DD7FCD722007E08B2009C2FB56F72B622D1266D31389B45D7A2458B0E57
            90A20F080E4EA5B7D26B795B79CF5FFEF29787EACEE43456EAAA174F078B1742
            1A6517FB2A7354E77989E5FFEEBAEB2E7E69E46113EF17FA7133ED6B09D61D77
            DCB10F62A13E168071DBC1C7E4E9BB00D21100ECC45E1D9FE2EB1C10374C36DA
            04104700E7CBD9F73647CCE36B2987B6D8D9B44FCE3FEBDE7BEF8D7FAAD6D380
            1FD7320A14EFF8CBE1FB6B357F846E214F569067AB4C7CC4B78073B4063AF3CA
            2BAF3C65C58A1547FFF5AF7F3D88FC82770CE9FD04AAED71F3EF7EF7BBE9BA9E
            BFC3D07CE690063EE258580003B90DB4512A90066022F83A07C2D0F87E09C044
            9B6E8F1DAE1ECB9FBB3BE937BFF90DC3BEFD4090081641F33B7C04931EBDB7E6
            F4FD9E78E28983D6AF5FFF4EF9EAB05FFDEA578728E86FD548E2CFC780A13FBE
            66D6D2FB79DE20C1F0B7018BBFB5BC49098011408E691300E444E0FD98EE7DE3
            00A6C1E82680D4B671B9D1BEF139C8D9B4B301E72B087375DD515AF5377BA7C0
            17D487A9A0F922A740043CDA2D237E53D0F68EA128827FD34D37BD5976E9F92D
            8F9BEDEF88EB6DFA2E80DC08006541E846BC2606A2D198AC00B4306C13C044EC
            FBBCF3469BD1E1D010C1F8E2C58B0F0EEB014F05D489DB429CCD54E1AF7DE8E1
            FE8E003826F0FEC2C98F9ADB82BF74E9D23D64AFF8035CD88E75711DDDEEB80D
            F5EDFF1A80114086062280F9F3E77714806D4FC47ECC07D16674380168C07A60
            F4D65B6F3D84B780E503FC41D00A9F08A60316728C06BCCB479099DF11045B46
            080442E0FD9899F614C1FFC31FFE507C2F70F3CD37EF253BFCF91D16932D7501
            D731B6197C8EADAE1B8C0064AC393CC54AA5CECD393C871BE3B2408D691340BC
            0B486DE7EC7723B5EB360141082002E6E4A374EEE50F3FFC70F40B6B02EA4760
            E9D904B9F894AD010B46D2192DFC8CA1080CDF0828605B2E5CB8F01D2A1F3B45
            F023B14EAE67C4E96C959FAF8C073302A495B2331D88F43887CFBB0C3784AD6C
            741D01A27D883621B595DA35BEDE6D029C9FA2B6F3B77AB9E53B60C992255B3D
            F2C823D13F0416A733B41368C331F56F069E3FB1CFFF3E921DFEB2FA471BE26A
            FE7F0513EBE3FAB9AEF1D879280301F4750D502600933AB7177CADCB6C34262B
            00AD0B9A23406A3F577619F13A93D86F06C1FB0DB8A71F57D0666ABBF775D75D
            B7CDAA55ABF8E1267E07C814619ADF09EAAE6068D9B2655BCE9B376F175D7FAC
            AE27E86DFF592512EB04B9BA1ACAEBAB00722340243AD34EEEE6F4482C4B36C6
            2EBEF8E2AE0230B9F2621D72E99158961DCFB603FC65CE3105F23471B8A6BB19
            2A77270962FACA952BB736CB972FDFE6820B2ED841E7F7D435FCA9778453BC16
            AEE38EFF5329D6A91710806C0D5E007660EAD4188074DFC710CB32B281004E88
            02600DE02920778DCB8BE46CA7797C6D2CCB41E801E66DA6064686331560FEF7
            E1296256834F912E083A7F5FB9F8CBEA8D6BBB12EB04B1CE292A7FD31200A40E
            EF1404D3687C3102E8F688FBED42002FBCF0C2B69A164E501D3A0AA0CC46A773
            69590E40375497784C6019D68B9F851B704CFA84831EF7C1F5CCD517FE6D0230
            B182BD929661B0A1F3A7AF5FBF9EDBAAA21EDADF99B44EF6274AAE9C0841E804
            024844B0D1E4EAD10B0315402F15B5835367F7E278902DFEFEDEC73597EE07EC
            9396CB1B49ED39ADD3718E1894321C7CB639D2FC132157A71CCE2F7B831740AE
            A29D9CCDBE89795242F9FC3BD902F649CFD94C71F9A9BD74DB09DBEAC4C606B9
            8C5C7D72C46B06220005A26D0488FB9325571EDB94F4BCAFE917D1F620C9D5A5
            135C3370014CA6A2BD10CBF67E24CDDF0FA29DD47E27181122312DCD9B12EDDB
            6E9A96E23C6C65633053806859D1A6959A2CB1CC58767A1CF3C7E37E12EBD02B
            BD043D92DAF27E6E1BF399CD4A00E9718ACFA7D7C7E3A920DAEC37B697DA8FC7
            29F17A0BA0AFCF029802520144D2CAE58E637A7A9D8F274A5A6E2C2BA6A5945D
            9BE2B2FA4999DDF4B80C04306FDEBCFE8D006BD7AEED2A0088158D8DF0364D8B
            E4D2CA28BB3E961F715A9AAF537A595ABF88B6BC9F925E63FA2D806D1E7DF4D1
            5D64A8F85933351EC955386E73E9263DEE442CC7C7313D1E3B4F9A2F3DCF7E59
            BAF707416AAF17FBDC2A6B0A98A52980C7D0532E80E92AF855E79F7FFEA764A8
            EDD1A589CE8BFBB934EF4F256999A99D5E8E73FB83C475CAD9EF5427C565FC8A
            2BAEE095F3B6770D3B914D4CA0A0976CD8B061FBC58B17179F45E52AB0293399
            604EE69AA9A2CC763701AC5CB9F250C5CA6F1D4DAD00C4760F3DF4D07FCA104F
            B63A4E039B225325827FA730CA60FE3FF7DC733FFDE73FFF99EF0DFA3202F066
            CB0E1A0576BEEEBAEB3E82DA64345B999AC1421C148FB1152B56BC47312AFBD6
            B0946C620202A0409ECDBFF66F7FFBDB3E7CD98AD15C856A064723F8E337DC70
            C3FF6AEEE7CD637F6BC82270CA04404114C88B8D18D8F54F7FFAD381975F7E39
            2F3CF0564CE9A2B0A63F34025F3C245BBA74E94774EBC77707BC89CCDBC9AC01
            7807714A05C06BCC7CC4C83D26AF3BBFF1A9A79EDA6FD9B265479F77DE799F41
            040D31349FDED5F4057C0CC31A853F79EFBDF7F2276D083EDF24F0EE046F2533
            5DF734FF43363183A781F871241F3EECFD8F7FFCE3CDAB57AF3EFCF6DB6F3F4E
            EB8313AEBAEAAA99575F7DF5CC6BAEB9A68D985E9627429E484C8B79D2FD9827
            9E4FCFE5D272E7BB11AF4DD372E46C94E5775EB8F1C61B8F5FBE7CF9B16BD7AE
            3D4CB7E5FCFF227F7C42EFE7DB8309F57EC82666F028C0DD002AE36307569C54
            804F9FFCEDDB0C2D14F7E73B396D2785AF4DCBE854E664EC95D99928BD5E3F51
            3BB9FCF837F83A7E6B48A764F1E7DE3FE502000A455D4C057CF0C0973018E7D3
            2786212A947E135733F5E0673A5EFCD690053AC16F7E6ED62BD9C40EA02E8B00
            A30C3BCC3D54C4FF16ADA67F30D7E367FCCD28CCA2CF3D7FC2C1876C62171001
            C630CA9D0153028B4394C8A840C5803F80503335D8A70CF5F8197FD3015BBE35
            14B97875249BD80318F3688010181110038B441459D31FF02F41C7DF041EFF4F
            68CE4FC926F608462D04144865F8BDA0A6BFE067FCBD518137D9C4496031D40C
            865C0C264536B1A63A64136BAA4336B1A63A64136BAA4336B1A63A64136BAA43
            36B1A63A64136BAA4336B1A63A64136BAA4336B1A63A64136BAA4336B1A63A64
            136BAA4336B1A63A64136BAA4336B1A63A64136BAA4336B1A63A64136BAA4336
            B1A63A64136BAAC28B43FF0FCDD6B6DDD4B6639E0000000049454E44AE426082}
          Properties.GraphicClassName = 'TJPEGImage'
          Properties.ReadOnly = True
          Properties.ShowFocusRect = False
          Properties.Stretch = True
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = False
          Style.Shadow = False
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Transparent = True
          Height = 116
          Width = 130
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 135
          Top = 22
          TabStop = False
          DataBinding.DataField = 'ESTOQUEDISP'
          DataBinding.DataSource = dmCad.dsProd
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          Style.Color = 15855081
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -21
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 1
          Width = 123
        end
        object cxLabel13: TcxLabel
          Left = 135
          Top = 8
          Caption = 'Est. Disp:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = True
          Style.TextColor = clBlack
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          StyleHot.TextColor = clBlack
          Properties.Alignment.Horz = taLeftJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
        end
        object cxLabel30: TcxLabel
          Left = 135
          Top = 60
          Caption = 'Est. Total:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = True
          Style.TextColor = clBlack
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          StyleHot.TextColor = clBlack
          Properties.Alignment.Horz = taLeftJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 135
          Top = 74
          TabStop = False
          DataBinding.DataField = 'ESTOQUETOTAL'
          DataBinding.DataSource = dmCad.dsProd
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          Style.Color = 15855081
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -21
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 4
          Width = 123
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 262
          Top = 22
          TabStop = False
          DataBinding.DataField = 'CUSTOTOTAL'
          DataBinding.DataSource = dmCad.dsProd
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          Style.Color = 15855081
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -21
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 5
          Width = 123
        end
        object cxLabel31: TcxLabel
          Left = 262
          Top = 8
          Caption = 'P. Custo:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = True
          Style.TextColor = clBlack
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          StyleHot.TextColor = clBlack
          Properties.Alignment.Horz = taLeftJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
        end
        object cxLabel32: TcxLabel
          Left = 262
          Top = 60
          Caption = 'P. Venda:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = True
          Style.TextColor = clBlack
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          StyleHot.TextColor = clBlack
          Properties.Alignment.Horz = taLeftJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 262
          Top = 74
          TabStop = False
          DataBinding.DataField = 'PRECOVENDA'
          DataBinding.DataSource = dmCad.dsProd
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          Style.Color = 15855081
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -21
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 8
          Width = 123
        end
        object cxLabel33: TcxLabel
          Left = 390
          Top = 8
          Caption = 'Fornecedor:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = True
          Style.TextColor = clBlack
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          StyleHot.TextColor = clBlack
          Properties.Alignment.Horz = taLeftJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 390
          Top = 22
          TabStop = False
          DataBinding.DataField = 'RAZAO'
          DataBinding.DataSource = dmCad.dsProd
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          Style.Color = 15855081
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -21
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 10
          Width = 452
        end
        object cxLabel34: TcxLabel
          Left = 390
          Top = 60
          Caption = 'Grupo:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = True
          Style.TextColor = clBlack
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          StyleHot.TextColor = clBlack
          Properties.Alignment.Horz = taLeftJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 390
          Top = 74
          TabStop = False
          DataBinding.DataField = 'GRUPO'
          DataBinding.DataSource = dmCad.dsProd
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          Style.Color = 15855081
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -21
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 12
          Width = 225
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 615
          Top = 74
          TabStop = False
          DataBinding.DataField = 'SUBGRUPO'
          DataBinding.DataSource = dmCad.dsProd
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          Style.Color = 15855081
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -21
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 13
          Width = 225
        end
        object cxLabel35: TcxLabel
          Left = 615
          Top = 60
          Caption = 'SubGrupo:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = True
          Style.TextColor = clBlack
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          StyleHot.TextColor = clBlack
          Properties.Alignment.Horz = taLeftJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
        end
      end
    end
    inherited grConsulta: TcxGrid
      Width = 847
      Height = 329
      ExplicitWidth = 847
      ExplicitHeight = 290
      inherited grConsultaDBTableView1: TcxGridDBTableView
        DataController.DataSource = dmCad.dsProd
        inherited grConsultaDBTableView1Campo1: TcxGridDBColumn
          DataBinding.FieldName = 'IDPROD'
        end
        inherited grConsultaDBTableView1Campo2: TcxGridDBColumn
          Caption = 'Refer'#234'ncia'
          DataBinding.FieldName = 'REFPROD'
          Width = 116
        end
        object grConsultaDBTableView1Column1: TcxGridDBColumn
          Caption = 'Produto'
          DataBinding.FieldName = 'NOMEPROD'
          Width = 375
        end
        object grConsultaDBTableView1Column2: TcxGridDBColumn
          Caption = 'Un.'
          DataBinding.FieldName = 'UNPROD'
          Width = 38
        end
        object grConsultaDBTableView1Column3: TcxGridDBColumn
          Caption = 'Marca'
          DataBinding.FieldName = 'MARCAPROD'
          Width = 137
        end
        object grConsultaDBTableView1Column4: TcxGridDBColumn
          Caption = 'Dt. Atualizado'
          DataBinding.FieldName = 'DTATUALIZADO'
          Width = 130
        end
      end
    end
  end
  inherited pnImg: TcxImage
    Left = 849
    ExplicitLeft = 849
  end
  inherited pnCad: TPanel
    Width = 849
    ExplicitWidth = 849
    inherited pnMenu: TPanel
      Width = 847
      TabOrder = 19
      ExplicitWidth = 847
      inherited cxSalvar: TcxButton
        Left = 50
        Top = -1
        ExplicitLeft = 50
        ExplicitTop = -1
      end
      inherited cxCancela: TcxButton
        Left = 109
        Top = -1
        ExplicitLeft = 109
        ExplicitTop = -1
      end
    end
    object eCodigo: TcxTextEdit
      Left = 95
      Top = 90
      Hint = 'C'#243'digo Interno do Sistema'
      TabStop = False
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.Color = clBtnFace
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 97
    end
    object cxLabel3: TcxLabel
      Left = 20
      Top = 92
      AutoSize = False
      Caption = 'C'#243'digo:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 17
      Width = 75
      AnchorX = 95
    end
    object eAtivo: TcxCheckBox
      Left = 198
      Top = 90
      Hint = 'Cadastro Ativo'
      Caption = 'Ativo'
      ParentFont = False
      State = cbsChecked
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 1
      Width = 54
    end
    object cxLabel14: TcxLabel
      Left = 284
      Top = 93
      AutoSize = False
      Caption = 'Dt. Cadastro:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 17
      Width = 82
      AnchorX = 366
    end
    object eDtCad: TcxDateEdit
      Left = 365
      Top = 91
      Hint = 'Data do Cadastro no Sistema'
      Enabled = False
      ParentFont = False
      Properties.DateButtons = [btnClear, btnToday]
      Properties.ReadOnly = True
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = True
      Style.Shadow = False
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 130
    end
    object cxNome: TcxLabel
      Left = 20
      Top = 134
      AutoSize = False
      Caption = 'Produto:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 17
      Width = 75
      AnchorX = 95
    end
    object eNomeProd: TcxTextEdit
      Tag = 1
      Left = 95
      Top = 132
      Hint = 'Nome do Produto/Descri'#231#227'o'
      ParentFont = False
      ParentShowHint = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 200
      ShowHint = True
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 4
      Width = 400
    end
    object cxLabel5: TcxLabel
      Left = 20
      Top = 218
      AutoSize = False
      Caption = 'Marca:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 17
      Width = 75
      AnchorX = 95
    end
    object eMarca: TcxTextEdit
      Tag = 1
      Left = 95
      Top = 216
      Hint = 'Marca do Produto'
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 150
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 11
      Width = 233
    end
    object cxPage: TcxPageControl
      Left = 1
      Top = 311
      Width = 847
      Height = 258
      Align = alBottom
      TabOrder = 18
      Properties.ActivePage = cxEstoque
      Properties.CustomButtons.Buttons = <>
      Properties.Style = 11
      Properties.TabWidth = 100
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      ExplicitTop = 272
      ClientRectBottom = 256
      ClientRectLeft = 2
      ClientRectRight = 845
      ClientRectTop = 22
      object cxVenda: TcxTabSheet
        Caption = 'Dados Venda'
        ImageIndex = 0
        object ePrecoCpr: TcxCurrencyEdit
          Left = 92
          Top = 3
          Hint = 'Pre'#231'o de compra no fornecedor'
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = '###,###,##0.000'
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          StyleFocused.Color = 13366014
          TabOrder = 0
          Width = 75
        end
        object cxLabel4: TcxLabel
          Left = 2
          Top = 5
          AutoSize = False
          Caption = 'Pre'#231'o Compra:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.TextColor = clBlack
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 17
          Width = 90
          AnchorX = 92
        end
        object cxLabel15: TcxLabel
          Left = 170
          Top = 5
          AutoSize = False
          Caption = 'Custo Compra:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.TextColor = clBlack
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 17
          Width = 90
          AnchorX = 260
        end
        object eCustoCpr: TcxCurrencyEdit
          Left = 260
          Top = 3
          Hint = 'Custo para compra do produto'
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = '###,###,##0.000'
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          StyleFocused.Color = 13366014
          TabOrder = 1
          Width = 75
        end
        object cxLabel16: TcxLabel
          Left = 338
          Top = 5
          AutoSize = False
          Caption = 'Custo Produto:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.TextColor = clBlack
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 17
          Width = 90
          AnchorX = 428
        end
        object eCustoProd: TcxCurrencyEdit
          Left = 428
          Top = 3
          Hint = 'Custo Efetivo do Produto'
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = '###,###,##0.000'
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          StyleFocused.Color = 13366014
          TabOrder = 2
          Width = 75
        end
        object eMl: TcxCurrencyEdit
          Left = 92
          Top = 25
          Hint = 'Margem de Lucro com Base no Custo Produto'
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = '0.00%'
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          StyleFocused.Color = 13366014
          TabOrder = 3
          Width = 75
        end
        object cxLabel17: TcxLabel
          Left = 3
          Top = 27
          AutoSize = False
          Caption = 'M. Lucro:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.TextColor = clBlack
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 17
          Width = 90
          AnchorX = 93
        end
        object cxLabel18: TcxLabel
          Left = 181
          Top = 27
          AutoSize = False
          Caption = 'Pre'#231'o Venda:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.TextColor = clBlack
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 17
          Width = 78
          AnchorX = 259
        end
        object ePrecoVenda: TcxCurrencyEdit
          Left = 260
          Top = 25
          Hint = 'Pre'#231'o de Venda do Produto'
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '###,###,##0.00'
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          StyleFocused.Color = 13366014
          TabOrder = 4
          Width = 75
        end
        object cxLabel21: TcxLabel
          Left = 170
          Top = 49
          AutoSize = False
          Caption = 'Custo M'#233'dio:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.TextColor = clBlack
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 17
          Width = 90
          AnchorX = 260
        end
        object eCustoMedio: TcxCurrencyEdit
          Left = 260
          Top = 47
          Hint = 'Custo M'#233'dio Efetivo do Produto'
          TabStop = False
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '###,###,##0.00'
          Properties.ReadOnly = True
          Style.Color = clBtnFace
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          StyleFocused.Color = 13366014
          TabOrder = 6
          Width = 75
        end
        object cxLabel22: TcxLabel
          Left = 338
          Top = 27
          AutoSize = False
          Caption = 'Comiss'#227'o:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.TextColor = clBlack
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 17
          Width = 90
          AnchorX = 428
        end
        object eComissao: TcxCurrencyEdit
          Left = 428
          Top = 25
          Hint = 'Percentual de Comiss'#227'o para Vendedores'
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = '0.00%'
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          StyleFocused.Color = 13366014
          TabOrder = 5
          Width = 75
        end
      end
      object cxEstoque: TcxTabSheet
        Caption = 'Dados Estoque'
        ImageIndex = 1
        object eEstoqueDisp: TcxCurrencyEdit
          Left = 91
          Top = 3
          Hint = 'Estoque Dispon'#237'vel para Vendas'
          TabStop = False
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '###,###,##0.00'
          Properties.ReadOnly = True
          Style.Color = clBtnFace
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          StyleFocused.Color = 13366014
          TabOrder = 0
          Width = 75
        end
        object cxLabel23: TcxLabel
          Left = -22
          Top = 5
          AutoSize = False
          Caption = 'Est. Dispon'#237'vel:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.TextColor = clBlack
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 17
          Width = 113
          AnchorX = 91
        end
        object eEstoqueTotal: TcxCurrencyEdit
          Left = 91
          Top = 25
          Hint = 'Estoque F'#237'sico do Produto'
          TabStop = False
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '###,###,##0.00'
          Properties.ReadOnly = True
          Style.Color = clBtnFace
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          StyleFocused.Color = 13366014
          TabOrder = 3
          Width = 75
        end
        object cxLabel24: TcxLabel
          Left = -22
          Top = 27
          AutoSize = False
          Caption = 'Est. F'#237'sico:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.TextColor = clBlack
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 17
          Width = 113
          AnchorX = 91
        end
        object eQtdeMin: TcxCurrencyEdit
          Left = 259
          Top = 3
          Hint = 'Quantidade M'#237'nima para Ter em Estoque'
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '###,###,##0.00'
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          StyleFocused.Color = 13366014
          TabOrder = 1
          Width = 75
        end
        object cxLabel25: TcxLabel
          Left = 179
          Top = 5
          AutoSize = False
          Caption = 'Qtde M'#237'nima:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.TextColor = clBlack
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 17
          Width = 80
          AnchorX = 259
        end
        object cxLabel26: TcxLabel
          Left = 179
          Top = 27
          AutoSize = False
          Caption = 'Qtde M'#225'xima:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.TextColor = clBlack
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 17
          Width = 80
          AnchorX = 259
        end
        object eQtdeMax: TcxCurrencyEdit
          Left = 259
          Top = 25
          Hint = 'Quantidade M'#225'xima para Ter em Estoque'
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '###,###,##0.00'
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          StyleFocused.Color = 13366014
          TabOrder = 4
          Width = 75
        end
        object cxLabel27: TcxLabel
          Left = 337
          Top = 5
          AutoSize = False
          Caption = 'Peso L'#237'quido:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.TextColor = clBlack
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 17
          Width = 90
          AnchorX = 427
        end
        object ePesoL: TcxCurrencyEdit
          Left = 427
          Top = 3
          Hint = 'Peso Liquido do Produto'
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '###,###,##0.00'
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          StyleFocused.Color = 13366014
          TabOrder = 2
          Width = 75
        end
        object ePesoB: TcxCurrencyEdit
          Left = 427
          Top = 25
          Hint = 'Peso Bruto do Produto'
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '###,###,##0.00'
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          StyleFocused.Color = 13366014
          TabOrder = 5
          Width = 75
        end
        object cxLabel28: TcxLabel
          Left = 337
          Top = 27
          AutoSize = False
          Caption = 'Peso Bruto:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.TextColor = clBlack
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 17
          Width = 90
          AnchorX = 427
        end
        object eObs: TcxMemo
          Left = 97
          Top = 50
          Hint = 'Observa'#231#245'es Adicionais'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          StyleFocused.Color = 13366014
          TabOrder = 6
          Height = 75
          Width = 411
        end
        object cxLabel29: TcxLabel
          Left = -22
          Top = 50
          AutoSize = False
          Caption = 'Observa'#231#245'es:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.TextColor = clBlack
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 17
          Width = 113
          AnchorX = 91
        end
      end
    end
    object eRefProd: TcxTextEdit
      Tag = 1
      Left = 95
      Top = 111
      Hint = 'Refer'#234'ncia do produto.'
      ParentFont = False
      ParentShowHint = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 200
      ShowHint = True
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 3
      Width = 200
    end
    object cxLabel6: TcxLabel
      Left = 20
      Top = 113
      AutoSize = False
      Caption = 'Refer'#234'ncia:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 17
      Width = 75
      AnchorX = 95
    end
    object cxLabel10: TcxLabel
      Left = 5
      Top = 155
      AutoSize = False
      Caption = 'Fornecedor:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clMaroon
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 17
      Width = 90
      AnchorX = 95
    end
    object eCodFornec: TcxButtonEdit
      Left = 95
      Top = 153
      Hint = '(F3) Busca Fornecedor'
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Default = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000202E0000202E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFAF6F0C9C3C1DCDBE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EEE4D9C8B189806EB2
            AFADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF3E7E1FEF8F4998C6EA5A0A2E8E7E3F2F1F5FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E8E9BAB9B8A4ABA3F3FFFFFF
            FFFFA7B8A6A8BBAB94AAAAA09D99DFE5E5FFFFFFFFFFFFFFFFFFFFFFFFFEFFFF
            C9C2BAC1C0B8E1C9C4F9A990E84E39DD2703FE472AF66454FAB09ADED3CC9794
            8B989693FFFFFFFFFFFFFFFFFFCFC8C3E0D7D8EA8973E82B04F23E00F84809EF
            C4B6E39E88F54000EF3500E83717F7C0AEB8C7BC9C958CFFFFFFE7DED8E0E7D9
            E75427F64B00FF811CFF6A0EFF9349FFFFFFF1AA88F47D21FF7417FF7B16E633
            00FD906DBBBAB7C4C0BCE7E5E6E69F7BF65F00FF9437FF8A2DFF8828FC8930FE
            FFFFE7BDA1FC7806FF8B31FF8D29FF9630E94B00EDC2B6ADB0A8E3E7DEE28045
            FFA342FF9B43FFA349FF9E49FC9232FDF6EEEEDDCAFA8F2AFFA349FFA249FF9E
            4BFD9A30FBA165BDC8C0E5E8E9E69B53FFC669FFB052FFB34DFFB553F1A852F9
            E4D3F3F0DDF7A043FFB55AFFB353FFB557FCA732FDBF8DC0C1C1EFECE2DAC7BE
            FBA330FFE4B1FFB45AFFB24FFFAF4FFBB853DDC097FCB250FFB556FFB86AFEB9
            60FC9E37E4D5D3D6D1C8F9F5EFE4E0DADAA983F5A52BFFE8AAFFD598FCB54EFD
            EECFE7FCFFEDB667FFC677FFBE5BF89B27FECDB2CCC7C7F9F5F3FFFFFFF9F0E9
            E9E6D7E0C2B4E89946F4B04EFFBE70FEBE64FBB55DFFB24FFBA445F7AD5FEDD3
            D6E0D8CCF6F3EAFFFFFFFFFFFFFFFFFFFAF8F2F0E2D7E6E0DCDEC6BAE7AE83F1
            AF7EEEB57CE9B28FE9D4CEE9DFDCE6E1D4FCF9F9FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFAFBF7F3F1EEF3EEF3F1F3F1F1F2ECF3EBF3F2E7FDF9FAFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Kind = bkGlyph
        end>
      Properties.CharCase = ecUpperCase
      Properties.ClickKey = 114
      Properties.OnButtonClick = eCodFornecPropertiesButtonClick
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 5
      Text = '0'
      OnExit = eCodFornecExit
      OnKeyPress = eCodFornecKeyPress
      Height = 21
      Width = 60
    end
    object eFornec: TcxTextEdit
      Left = 155
      Top = 153
      TabStop = False
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 30
      Properties.ReadOnly = True
      Style.Color = clBtnFace
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.Kind = lfStandard
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Silver'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
      StyleFocused.Color = 15921919
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
      StyleHot.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
      TabOrder = 6
      Text = 'NENHUM'
      Width = 340
    end
    object cxLabel9: TcxLabel
      Left = 5
      Top = 177
      AutoSize = False
      Caption = 'Grupo:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clMaroon
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 17
      Width = 90
      AnchorX = 95
    end
    object eCodGrupo: TcxButtonEdit
      Left = 95
      Top = 174
      Hint = '(F3) Busca Grupos'
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Default = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000202E0000202E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFAF6F0C9C3C1DCDBE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EEE4D9C8B189806EB2
            AFADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF3E7E1FEF8F4998C6EA5A0A2E8E7E3F2F1F5FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E8E9BAB9B8A4ABA3F3FFFFFF
            FFFFA7B8A6A8BBAB94AAAAA09D99DFE5E5FFFFFFFFFFFFFFFFFFFFFFFFFEFFFF
            C9C2BAC1C0B8E1C9C4F9A990E84E39DD2703FE472AF66454FAB09ADED3CC9794
            8B989693FFFFFFFFFFFFFFFFFFCFC8C3E0D7D8EA8973E82B04F23E00F84809EF
            C4B6E39E88F54000EF3500E83717F7C0AEB8C7BC9C958CFFFFFFE7DED8E0E7D9
            E75427F64B00FF811CFF6A0EFF9349FFFFFFF1AA88F47D21FF7417FF7B16E633
            00FD906DBBBAB7C4C0BCE7E5E6E69F7BF65F00FF9437FF8A2DFF8828FC8930FE
            FFFFE7BDA1FC7806FF8B31FF8D29FF9630E94B00EDC2B6ADB0A8E3E7DEE28045
            FFA342FF9B43FFA349FF9E49FC9232FDF6EEEEDDCAFA8F2AFFA349FFA249FF9E
            4BFD9A30FBA165BDC8C0E5E8E9E69B53FFC669FFB052FFB34DFFB553F1A852F9
            E4D3F3F0DDF7A043FFB55AFFB353FFB557FCA732FDBF8DC0C1C1EFECE2DAC7BE
            FBA330FFE4B1FFB45AFFB24FFFAF4FFBB853DDC097FCB250FFB556FFB86AFEB9
            60FC9E37E4D5D3D6D1C8F9F5EFE4E0DADAA983F5A52BFFE8AAFFD598FCB54EFD
            EECFE7FCFFEDB667FFC677FFBE5BF89B27FECDB2CCC7C7F9F5F3FFFFFFF9F0E9
            E9E6D7E0C2B4E89946F4B04EFFBE70FEBE64FBB55DFFB24FFBA445F7AD5FEDD3
            D6E0D8CCF6F3EAFFFFFFFFFFFFFFFFFFFAF8F2F0E2D7E6E0DCDEC6BAE7AE83F1
            AF7EEEB57CE9B28FE9D4CEE9DFDCE6E1D4FCF9F9FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFAFBF7F3F1EEF3EEF3F1F3F1F1F2ECF3EBF3F2E7FDF9FAFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Kind = bkGlyph
        end>
      Properties.CharCase = ecUpperCase
      Properties.ClickKey = 114
      Properties.OnButtonClick = eCodGrupoPropertiesButtonClick
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 7
      Text = '0'
      OnExit = eCodGrupoExit
      OnKeyPress = eCodFornecKeyPress
      Height = 21
      Width = 60
    end
    object eGrupo: TcxTextEdit
      Left = 155
      Top = 174
      TabStop = False
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 30
      Properties.ReadOnly = True
      Style.Color = clBtnFace
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Silver'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
      StyleFocused.Color = 15921919
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
      TabOrder = 8
      Text = 'NENHUM'
      Width = 340
    end
    object cxLabel11: TcxLabel
      Left = 5
      Top = 198
      AutoSize = False
      Caption = 'SubGrupo:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clMaroon
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 17
      Width = 90
      AnchorX = 95
    end
    object eCodSub: TcxButtonEdit
      Left = 95
      Top = 195
      Hint = '(F3) Busca SubGrupos'
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Default = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000202E0000202E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFAF6F0C9C3C1DCDBE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EEE4D9C8B189806EB2
            AFADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF3E7E1FEF8F4998C6EA5A0A2E8E7E3F2F1F5FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E8E9BAB9B8A4ABA3F3FFFFFF
            FFFFA7B8A6A8BBAB94AAAAA09D99DFE5E5FFFFFFFFFFFFFFFFFFFFFFFFFEFFFF
            C9C2BAC1C0B8E1C9C4F9A990E84E39DD2703FE472AF66454FAB09ADED3CC9794
            8B989693FFFFFFFFFFFFFFFFFFCFC8C3E0D7D8EA8973E82B04F23E00F84809EF
            C4B6E39E88F54000EF3500E83717F7C0AEB8C7BC9C958CFFFFFFE7DED8E0E7D9
            E75427F64B00FF811CFF6A0EFF9349FFFFFFF1AA88F47D21FF7417FF7B16E633
            00FD906DBBBAB7C4C0BCE7E5E6E69F7BF65F00FF9437FF8A2DFF8828FC8930FE
            FFFFE7BDA1FC7806FF8B31FF8D29FF9630E94B00EDC2B6ADB0A8E3E7DEE28045
            FFA342FF9B43FFA349FF9E49FC9232FDF6EEEEDDCAFA8F2AFFA349FFA249FF9E
            4BFD9A30FBA165BDC8C0E5E8E9E69B53FFC669FFB052FFB34DFFB553F1A852F9
            E4D3F3F0DDF7A043FFB55AFFB353FFB557FCA732FDBF8DC0C1C1EFECE2DAC7BE
            FBA330FFE4B1FFB45AFFB24FFFAF4FFBB853DDC097FCB250FFB556FFB86AFEB9
            60FC9E37E4D5D3D6D1C8F9F5EFE4E0DADAA983F5A52BFFE8AAFFD598FCB54EFD
            EECFE7FCFFEDB667FFC677FFBE5BF89B27FECDB2CCC7C7F9F5F3FFFFFFF9F0E9
            E9E6D7E0C2B4E89946F4B04EFFBE70FEBE64FBB55DFFB24FFBA445F7AD5FEDD3
            D6E0D8CCF6F3EAFFFFFFFFFFFFFFFFFFFAF8F2F0E2D7E6E0DCDEC6BAE7AE83F1
            AF7EEEB57CE9B28FE9D4CEE9DFDCE6E1D4FCF9F9FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFAFBF7F3F1EEF3EEF3F1F3F1F1F2ECF3EBF3F2E7FDF9FAFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Kind = bkGlyph
        end>
      Properties.CharCase = ecUpperCase
      Properties.ClickKey = 114
      Properties.OnButtonClick = eCodSubPropertiesButtonClick
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 9
      Text = '0'
      OnExit = eCodSubExit
      Height = 21
      Width = 60
    end
    object eSubGrupo: TcxTextEdit
      Left = 155
      Top = 194
      TabStop = False
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 30
      Properties.ReadOnly = True
      Style.Color = clBtnFace
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Silver'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
      StyleFocused.Color = 15921919
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
      TabOrder = 10
      Text = 'NENHUM'
      Width = 340
    end
    object cxLabel7: TcxLabel
      Left = 371
      Top = 218
      AutoSize = False
      Caption = 'Un:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 17
      Width = 75
      AnchorX = 446
    end
    object eUn: TcxTextEdit
      Tag = 1
      Left = 445
      Top = 216
      Hint = 'Unidade de Medida'
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 150
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 12
      Width = 50
    end
    object eDtValidade: TcxDateEdit
      Left = 95
      Top = 237
      Hint = 'Data de Validade do Produto'
      ParentFont = False
      Properties.DateButtons = [btnClear, btnToday]
      Properties.ReadOnly = False
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = True
      Style.Shadow = False
      Style.IsFontAssigned = True
      TabOrder = 13
      Width = 130
    end
    object cxLabel8: TcxLabel
      Left = 13
      Top = 239
      AutoSize = False
      Caption = 'Dt. Validade:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 17
      Width = 82
      AnchorX = 95
    end
    object eNcm: TcxTextEdit
      Tag = 1
      Left = 365
      Top = 237
      Hint = 'Ncm do Produto (Classifica'#231#227'o Fiscal)'
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 150
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 14
      Width = 130
    end
    object cxLabelNcm: TcxLabel
      Left = 291
      Top = 239
      AutoSize = False
      Caption = 'Ncm:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 17
      Width = 75
      AnchorX = 366
    end
    object cxImage: TcxImage
      Left = 497
      Top = 91
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000080
        000000800806000000C33E61CB000000206348524D00007A25000080830000F9
        FF000080E9000075300000EA6000003A980000176F925FC54600000009704859
        7300000B0C00000B0C013F4022C800001B1A49444154785EED9D69B01D55B986
        0F4388030878714041401008C315A712907B155404C48B5E04820650CB2B01C2
        99E27F710034202A01244C2624500C29902ACB2A3444120DA290508504415113
        2C15D472424086C07D9FAEFDEEFAF6DAABF7DEE7E4EC6D2ADD3F9EEAEED5ABD7
        B7D6F7BD6BE8DDDDE70CBDF8E28B3515269B58531DB28935D5219B58531DB289
        35D5219B58531DB28935D5219B58531DB28935D5219B58531DB28935D5219B58
        531DB28935D5219B58531DB28935D5219B58531DB28935D5219B58531DB28935
        D5219B58531DB28935D5219B58531DB2891BCB8A152B863EF7B9CFC1B6E79C73
        CEDBC491E203293ACFF628F11EB11BD79C77DE79434F3FFD74C7729577B327B6
        93FDB276937EC925970C3DF7DC73599F75239BB8B1AC5CB9928A6DAF0A1E2786
        C57817C6C4A775CD0108E099679EC9965B4501946D0DC79B9C00962F5FBEAD2A
        768A2AF8598100CECEF1F9CF7F3E1E8FEA9AF173CF3DF7A0279F7C325B6E9504
        006E2B5B13D3BDBF4909E0A9A79EDA62DEBC79C7A86204BF08724A2E9D3431A2
        EBE6FCF0873F7C6DAEECC6C8D26C7C15707BD9C6B6C7F44D46002FBCF00241DA
        5D951A555087D32077428D29B6BA76EE57BEF295E310525AF61D77DCD1E284CD
        99B49D65C76C3719013CFFFCF35B7CF5AB5F3D56951A4F03FC852F7C214B9A4F
        0CEBFA39F7DC734FCB28A0B2872EB8E082CA0920DDA6908E00F04FF457AF6413
        27CBFAF5EBB753003F23461CD018EC2F7EF18B6DC4F3BE468D9A7BF3CD371FBC
        61C38666D9EBD6AD1BD2B9AC13364762C03B89C00218C8084040D6AC593374E7
        9D770EFDE8473F1A4A176B9ABB19FE87154C6809FA97BEF4A5B3B5C06B83F454
        086AD8B87AFBB1CF3EFB6C310D7057B070E1C2AC033657CA82CEB1F1F1C004A0
        800C7DE31BDF6856E0C20B2F6CB9655BBD7A75530069D0757B5770FEF9E7B7E0
        740B01D4D3C765E758AD038AF2111CF6AA340274025FC4FD814D01A86CC18205
        CD0AB05DB264C996EAF93B8BB7DC70C30D1F5090E6104407DD81FEF297BF7CB6
        16774D74A7506C49B7103C224840233A7FCA65975D7684D61487AB3C7E287A8F
        CA2EB655423E8EC787EAF840F1CA1883818D00A900149019DAFF9860DE2E7ED4
        71AF77F063C035ACB7413A244298830854FEDC1CB25355B8B5C6CF67097E647B
        FDBF4B00D3659CDECE6A7F4C1473BE7B7EECF10EBCA68BB3D59B5B200D2C04F2
        732D84D1A089ECB4A03AB46CBD5F463CEFFC4E2B3B1789F93AA5B335319F89E7
        9D274D737AC939FFBACA1DD321975E7AE960A6008C48005BCBE871AAD867A99C
        8343F00958ECF904D581BFE8A28B0ABEF6B5AFB56C5321701DE2A11CF0DAA093
        10AA441001F0C3D95CF9F030D667B99875239B58060F6914B4FF92E1B6E07BD8
        77CF2798EEE90EF8D7BFFEF5362C0448451047829C104CAC8BF7ED30A7A7E7E2
        B657269ADF709DC99DCFE1BCF13AEF9B86081805C674DBBC772E66DDC8269671
        D75D77BD46C6E6C8F8882BDAADE7C7C06B65DF8645001E0D521150B68580BD32
        216CEEA4023012010FD34E5DB76EDDF45CDC3A914DCCC1F0AFB98695E8DC58A9
        34F804CFC1A7573BF0175F7C71731BB10880FC51045E17A44288A3C2E6863B94
        851EF7A3DF8D45A08E39BE6CD9B219FC649E8B5F19D9C41C1AFEB7510066C9D8
        A88D533982417008525CF079D8774FCF05DF02B0083C1D9489200AC1DB280A93
        4B9B081B7B7D27BA955D763E0A241543430073E5C30F3CF3CC332DCF50BA914D
        CCF1F39FFF7C07F5FE3364AC58F13BF85498C0B8F7BBE77BE82F0BFEFCF9F35B
        8E3D0A44118045602144314451A46965386FBA4DD3223E9F239EEF96B78CDC75
        B66D2C8C28842802C56654BE99F9AF7FFD6B9B5CFCCAC82626148A5ABD7AF5CE
        52D9993236ECE0BBE20EBE87FE18FC1864829EC3E7E348001601E5C6112182ED
        B89F3BCE919E8FD7783FA639DDFB65384FEEDAB2EB7DCEE7D37CA930A2183C22
        3032CB3FA748002F73CC7A219B9840615BDE7FFFFDAF97CA9A02A01254860AE6
        821F05E020A7818FE444E091204E0BA920BC353E37596259BDD208D8B0023422
        9F8CC837A3A2D857DAB0CE0FE7AEEB95288828044460212000D5FF5409603BE2
        D5885B2E9E2D641313286CAB071E7860571939536A1BC6A80540E5A824CE73B0
        26DBFB2394A1327160E148D9198962883878AEC3C610CBEA046DA66E723E432F
        6D38E3AAABAEFAE4C2850B4FB9FEFAEB672E5AB468968E4FD3C2F974E59D433E
        B5631431E4CA8BB673F5B018521110070B40D72180ED89979852016CFDE0830F
        EE262367C9D870ECFD08C095F6D0DD4900DE8FE74C1480CA1B91033F75DF7DF7
        BD0FD897034672028869E9798ED3F3312D6E637A07861B813C5B413E75D5AA55
        C7FCE217BF78D7134F3CF196679F7DF6C0E79E7BEE800D1B36ECAFBBA603B47F
        A016656F5EBF7EFDC1F7DC73CF9137DD74D34C957F262384DA321C6D79BF937D
        0B01DB160271A0436A64C637A7C9DE8E8AD73431A50298A645E06E32520800A3
        18A7225488CA51F1DCF0DF0B31F0A072862FB9E492331E7FFCF177C8363F70EC
        ADFDB74B38B365AB709CC516F753386772E7CB48F3734C1BE5740277F62DB7DC
        72E2AF7FFDEB4315E4FD55B77DC4BE624680E398C6FE3EBA459BF1D8638FBDFD
        7BDFFBDEFFA89DB311927D176D7ADFE9268E061601B1A04322005D739A468057
        CA1602206EB978B6904D4CA0A06D1E7AE8A1DD1180D4C65CD7D6FB5D6907DFE4
        021E711EE7E77A9537BA64C99259384CB6EDCC7D95F671357ED48E1A14B48F60
        D1E315F87735EAE3C003227D93D84BEC99403AE763FE7D24E8B7DD76DB6D27C8
        9723F221C16BFA308745405D2C028F0216807CD737014C4B05E0DE4F6562C5E3
        08D04D00318FF7B9566522808FA987E1BCC291EC33B7E604609B93252D23962D
        870FCBD1C3DFFFFEF78F7BFAE9A70F505D08A6834EDDF6106F10BB88D78BD789
        9D1BB04F3AE777176F14B4A910015BDD5DBD5736CF54BB0A1174C202B008E228
        A0B5597F05A029A06D04B000A8902B69273AA09134F0C6D71804B078F1E29335
        87EE26DB38F17512C01B248A93D4E829174024964BF069E34F7EF293F7AB0E04
        0C08208124A8D4EDD5E23F04732F0BB0570438DE41709E7C886257816828A728
        6FDDBA758768CA63B1D875748B02A06E1E05FA2E008F001A6EDA46002AE4212A
        3A330D7424E68BD04804A0D5F44C09E035B28D637794005E73EDB5D79ED8C949
        B9F226422C8BE0AB8DC35ABCBD4FF63D8C137802C80BAB0495006F2B5E2A5E22
        F8112685DFE739FF7281280810ED6264B010DEF4DBDFFEF69DEA1CB3D5BED291
        201D012C004600ADCD0A016811385801B842B969A01BCEEB6BBD25C8D75C73CD
        8912008DE1878D97697F4789E2A3B23B463E13AF4BCBEF15AE8D501E2BF53BEF
        BCF383B25D04483084D3E3771204927A115C9C5DDC76F1FA9A7A6093F0891B3E
        DC5A2008C4C0BD3A6D43488C24AC1DF6D2DDC4616AFB1CC497AB13A402200E1E
        01D4B10623005457360250D99C935362C3D20612E4ABAFBEFA44DD56D1C370F2
        7409E015DFFAD6B7B20288E46C7522BD1EE4D0D11B6FBCF1648D3A0CD1CCF304
        895ECB704EE00924412F9CAC85215F436DA5BB949D54A73D55C6FEE24DF2CFCE
        BAF59B7EF7DD77F3C10CBEE4D68CEB081042A07DAF128C068C2E7BAD5CB9F268
        169CB16DB1BDA900E214303001944D01AE702F387FDA3020C8BAEF4700F4B462
        289500B6D3A870BC1A3C16F3FAFAB4FC5E49EBA1F6709B79866ED7DE2ABB9EEB
        99BFA90BC33C3DB9702EAFAA6B61FA52F9E51DE79C73CE2C0581DBE4116DC708
        48E3079A4FEADC112AF7D5EAE1D1A79483B8190D984E5840EEA136EF2BA19FAA
        761622C881CF2D00E21005D0F73540EE361026128CD81870305D96CA1FBBF2CA
        2BDB04A051E178CE399FEDA6B663D9A96D13F380CB51FBC6962D5BC6D0EFD53D
        3D942011ACE650CF6BF1EAA97B29B89F90F3E7EABA517E236950FC3AC7BED247
        048FD0CF12EF9460B64038BAC5F56840FB581F20024682DD1F7EF8E143D5CEE2
        17C3B47E403AC14F47008D68831B0130EC4AE402D10BB14186F2E4D8B12BAEB8
        823540530012C3761A158EE79C6D9A8DB1ED7DCA91A0997B67FFE52F7F395036
        3DEC538766F0C5901686BC17F956F9835E3EE6802B082D38BD718E9161AEAE3B
        4A2BFEADD5367C4B79F89736B298647DB1EB860D1BF6E43698A920B633820FE8
        800317401C017202B0537BC1F9DD20239115024847008D0A4D01183B6422F663
        1E5F0F0AD4D877BEF39D0FCB1EC1E7968D399A61BF197C02A7F5C10CF5FC6298
        27D065C85F0549DA6765FF084611CA6B601130D21477086BD6AC79B7EA53FCF2
        E8F6C52DC14F053090358005601150895C253B411EE340C606C9C6D882050B5A
        04C00820511CCF39DBB56DDB37399B9198176C9FB6AD5DBBF660D923F8389205
        1F7375117C50EFDF51BD78B61C3EDA08E84429DEE8BDEDB6DBF831C83EF67480
        D85868BEF6EF7FFFFBBEEAD1A7ABAD6D4F12ED27200EEA1485001801FAB606F0
        0F415265F3598003E18A45A7A6CEEEE4786FDD30827CF9E5977714806D9BD43E
        E46C465C6F509B18FE4F97E3B9DF67D1476FC476D391F45ADDABBF5F0BBB96D7
        E2268AAEE755FA598F3EFA28E5DBCF8800B1B11ED8496B845D162F5E7C22A340
        6CA771F02D0095BBE908A09BE38DAF73396E1443712A00A60004C039DB36A9FD
        4E389FAF01CA90B046B5C83C59F32F0B317E7CE236AD39F4C3FDF7DF5FBC1525
        3F34BF7D9C2C1A45C67EF0831FA4A300BE66BD51DC1EAE58B1E24809659CFAA5
        C1070B40532665F65F00AA4CF371B08DC7CA4D240826D7A83201685AC80AC0B6
        4DCEA629B32B078EDF72CB2D1F922D1662F4FE3627EA1E9DCFB2C66220270BA3
        88168347AA8D4D8189380AECB87AF5EA43958F77229AED747D81743A631440DF
        D70016401C055CB918845E880DA22CA3F96CEC9BDFFC66DB1480003817F3A6F6
        7BA9077952DBF434DDDAF1B32FBD8FB93FF6FE2DF8327AD1A2456D6F451BD603
        39727941F658E0E5DEE1C3DFAC055EA111E720F2323DC5361B07DF02D0143698
        1140C3655300108310491D6F7C3E0620364A8E6B1300238046854200D136A4F6
        73364D6A1B288F85D9DD77DFFD6ED9E2768C0044076EA1BA6CA5F9FF68F2C540
        1A075CFEF16D5F730B697E7AB6EAF309058CDE9EFA9B36BF5C0BD2FD94778E02
        DC14406C3BFB049F78285F2180BE8D0016801AD3320298B200C4639F370E801B
        636463ECB2CB2E6B1B01248AE3D5D04200C6B6A37D486DB2EF3C39BB04F6C73F
        FEF17FCB16733F36A303B79400A75D7AE9A5C7A40270808D0510213D5E034100
        4C37D86A8E368269E0A50F3CF0C00CE52D04E0B61AD79BE00F5C0018B4085CB1
        3400BD900B04E5AA3159013002702EB56DFB26670B621E5F679B0CED5A941D2E
        5B2CC270600CC8565A954FBBF5D65BDFAB3540CB14E0A097051F38677C9D7CC9
        DB40272B600820DE6A16F6C4F4FBEEBB6F7FE523C045A78BED76BDA3002EBAE8
        A2FE4F01325408005C9118849CD3E37E2406213648363A0A803CD119D13E44BB
        691A449B40796ADBF8B5D75E7BB4E67AFFDE1F03C2310F75DE2E01343F8C7150
        09B27D92230AC1D732925C7FFDF5C7C81EEB8D28384000D37EFAD39FF2473647
        29C30270BBBDEFF255E6E004E006DB81310039E7A7C7CEEBEB5C8E1B241B1DA7
        003B2467DFA4F623D12E65356C8ECE9F3FFFA4E79F7F9E3540CB0250E0D0973D
        FEF8E3BB2988B3F181C80AC081715B8C05601120A4356BD6BC4DE5B206A08DA9
        00B6FEEE77BF5B2C3A5D7E5AB6B78D32073305D0F8B4C1310813C10104370664
        634CF36D9B00248AA600A2ED89D621B5497B70A0F64F7FECB1C7B80DA4CDA900
        8A07364B972EFD908257AC033A05DFB87CB000E4C7516ED99E7CF2497E73F00F
        4E51005B3212E936F123CA5B3C6BB00DDB89C78D32FB3B023CF8E0835901D899
        766C7474EC6D391C84B4416502882380F1F5B11EDD705EDB757014D89155AB56
        EDD768771400534021803FFEF18FFBEABAD371781480EB91E27ADA06FEC38EE6
        F743549E9F34A602D8E2F7BFFFFD4ECAFF19E52F1E2B479F475CAE0530901120
        6DB81D6AA2A3A3E363BAC9394A764A4700CE39AF89E545CAEC469B7660C389E3
        0B162C605E261851000CC9DC1DF0C8F6753FFBD9CFF881A6707A0C8CCB8DF81C
        F91AC11FD3D0FE412D2AFD9E01534EBAE618BAFDF6DBDF425E5D53D48DEBA32D
        97095100031901A200C08D8DCEEF859C93D8CA4E570190D7D746FBDE96E1BCB6
        E9E0036D53F9B31F79E4117A66EA03EE0E7850C36B61BB6B417884F2F2B71278
        0FA0A51E11DB51D9FC358FD16F7FFBDB1FD63A8357C018FE1154DB4FCEFFFCE7
        3FA75D78E18527D1D62800B694657B315D79F9726AF02300B8B1398777227512
        65020DD7FCD722007E08B2009C2FB56F72B622D1266D31389B45D7A2458B0E57
        90A20F080E4EA5B7D26B795B79CF5FFEF29787EACEE43456EAAA174F078B1742
        1A6517FB2A7354E77989E5FFEEBAEB2E7E69E46113EF17FA7133ED6B09D61D77
        DCB10F62A13E168071DBC1C7E4E9BB00D21100ECC45E1D9FE2EB1C10374C36DA
        04104700E7CBD9F73647CCE36B2987B6D8D9B44FCE3FEBDE7BEF8D7FAAD6D380
        1FD7320A14EFF8CBE1FB6B357F846E214F569067AB4C7CC4B78073B4063AF3CA
        2BAF3C65C58A1547FFF5AF7F3D88FC82770CE9FD04AAED71F3EF7EF7BBE9BA9E
        BFC3D07CE690063EE258580003B90DB4512A90066022F83A07C2D0F87E09C044
        9B6E8F1DAE1ECB9FBB3BE937BFF90DC3BEFD4090081641F33B7C04931EBDB7E6
        F4FD9E78E28983D6AF5FFF4EF9EAB05FFDEA578728E86FD548E2CFC780A13FBE
        66D6D2FB79DE20C1F0B7018BBFB5BC49098011408E691300E444E0FD98EE7DE3
        00A6C1E82680D4B671B9D1BEF139C8D9B4B301E72B087375DD515AF5377BA7C0
        17D487A9A0F922A740043CDA2D237E53D0F68EA128827FD34D37BD5976E9F92D
        8F9BEDEF88EB6DFA2E80DC08006541E846BC2606A2D198AC00B4306C13C044EC
        FBBCF3469BD1E1D010C1F8E2C58B0F0EEB014F05D489DB429CCD54E1AF7DE8E1
        FE8E003826F0FEC2C98F9ADB82BF74E9D23D64AFF8035CD88E75711DDDEEB80D
        F5EDFF1A80114086062280F9F3E77714806D4FC47ECC07D16674380168C07A60
        F4D65B6F3D84B780E503FC41D00A9F08A60316728C06BCCB479099DF11045B46
        080442E0FD9899F614C1FFC31FFE507C2F70F3CD37EF253BFCF91D16932D7501
        D731B6197C8EADAE1B8C0064AC393CC54AA5CECD393C871BE3B2408D691340BC
        0B486DE7EC7723B5EB360141082002E6E4A374EEE50F3FFC70F40B6B02EA4760
        E9D904B9F894AD010B46D2192DFC8CA1080CDF0828605B2E5CB8F01D2A1F3B45
        F023B14EAE67C4E96C959FAF8C073302A495B2331D88F43887CFBB0C3784AD6C
        741D01A27D883621B595DA35BEDE6D029C9FA2B6F3B77AB9E53B60C992255B3D
        F2C823D13F0416A733B41368C331F56F069E3FB1CFFF3E921DFEB2FA471BE26A
        FE7F0513EBE3FAB9AEF1D879280301F4750D502600933AB7177CADCB6C34262B
        00AD0B9A23406A3F577619F13A93D86F06C1FB0DB8A71F57D0666ABBF775D75D
        B7CDAA55ABF8E1267E07C814619ADF09EAAE6068D9B2655BCE9B376F175D7FAC
        AE27E86DFF592512EB04B9BA1ACAEBAB00722340243AD34EEEE6F4482C4B36C6
        2EBEF8E2AE0230B9F2621D72E99158961DCFB603FC65CE3105F23471B8A6BB19
        2A77270962FACA952BB736CB972FDFE6820B2ED841E7F7D435FCA9778453BC16
        AEE38EFF5329D6A91710806C0D5E007660EAD4188074DFC710CB32B281004E88
        02600DE02920778DCB8BE46CA7797C6D2CCB41E801E66DA6064686331560FEF7
        E1296256834F912E083A7F5FB9F8CBEA8D6BBB12EB04B1CE292A7FD31200A40E
        EF1404D3687C3102E8F688FBED42002FBCF0C2B69A164E501D3A0AA0CC46A773
        69590E40375497784C6019D68B9F851B704CFA84831EF7C1F5CCD517FE6D0230
        B182BD929661B0A1F3A7AF5FBF9EDBAAA21EDADF99B44EF6274AAE9C0841E804
        024844B0D1E4EAD10B0315402F15B5835367F7E278902DFEFEDEC73597EE07EC
        9396CB1B49ED39ADD3718E1894321C7CB639D2FC132157A71CCE2F7B831740AE
        A29D9CCDBE89795242F9FC3BD902F649CFD94C71F9A9BD74DB09DBEAC4C606B9
        8C5C7D72C46B06220005A26D0488FB9325571EDB94F4BCAFE917D1F620C9D5A5
        135C3370014CA6A2BD10CBF67E24CDDF0FA29DD47E27181122312DCD9B12EDDB
        6E9A96E23C6C65633053806859D1A6959A2CB1CC58767A1CF3C7E37E12EBD02B
        BD043D92DAF27E6E1BF399CD4A00E9718ACFA7D7C7E3A920DAEC37B697DA8FC7
        29F17A0BA0AFCF029802520144D2CAE58E637A7A9D8F274A5A6E2C2BA6A5945D
        9BE2B2FA4999DDF4B80C04306FDEBCFE8D006BD7AEED2A0088158D8DF0364D8B
        E4D2CA28BB3E961F715A9AAF537A595ABF88B6BC9F925E63FA2D806D1E7DF4D1
        5D64A8F85933351EC955386E73E9263DEE442CC7C7313D1E3B4F9A2F3DCF7E59
        BAF707416AAF17FBDC2A6B0A98A52980C7D0532E80E92AF855E79F7FFEA764A8
        EDD1A589CE8BFBB934EF4F256999A99D5E8E73FB83C475CAD9EF5427C565FC8A
        2BAEE095F3B6770D3B914D4CA0A0976CD8B061FBC58B17179F45E52AB0293399
        604EE69AA9A2CC763701AC5CB9F250C5CA6F1D4DAD00C4760F3DF4D07FCA104F
        B63A4E039B225325827FA730CA60FE3FF7DC733FFDE73FFF99EF0DFA3202F066
        CB0E1A0576BEEEBAEB3E82DA64345B999AC1421C148FB1152B56BC47312AFBD6
        B0946C620202A0409ECDBFF66F7FFBDB3E7CD98AD15C856A064723F8E337DC70
        C3FF6AEEE7CD637F6BC82270CA04404114C88B8D18D8F54F7FFAD381975F7E39
        2F3CF0564CE9A2B0A63F34025F3C245BBA74E94774EBC77707BC89CCDBC9AC01
        7807714A05C06BCC7CC4C83D26AF3BBFF1A9A79EDA6FD9B265479F77DE799F41
        040D31349FDED5F4057C0CC31A853F79EFBDF7F2276D083EDF24F0EE046F2533
        5DF734FF43363183A781F871241F3EECFD8F7FFCE3CDAB57AF3EFCF6DB6F3F4E
        EB8313AEBAEAAA99575F7DF5CC6BAEB9A68D985E9627429E484C8B79D2FD9827
        9E4FCFE5D272E7BB11AF4DD372E46C94E5775EB8F1C61B8F5FBE7CF9B16BD7AE
        3D4CB7E5FCFF227F7C42EFE7DB8309F57EC82666F028C0DD002AE36307569C54
        804F9FFCEDDB0C2D14F7E73B396D2785AF4DCBE854E664EC95D99928BD5E3F51
        3BB9FCF837F83A7E6B48A764F1E7DE3FE502000A455D4C057CF0C0973018E7D3
        2786212A947E135733F5E0673A5EFCD690053AC16F7E6ED62BD9C40EA02E8B00
        A30C3BCC3D54C4FF16ADA67F30D7E367FCCD28CCA2CF3D7FC2C1876C62171001
        C630CA9D0153028B4394C8A840C5803F80503335D8A70CF5F8197FD3015BBE35
        14B97875249BD80318F3688010181110038B441459D31FF02F41C7DF041EFF4F
        68CE4FC926F608462D04144865F8BDA0A6BFE067FCBD518137D9C4496031D40C
        865C0C264536B1A63A64136BAA4336B1A63A64136BAA4336B1A63A64136BAA43
        36B1A63A64136BAA4336B1A63A64136BAA4336B1A63A64136BAA4336B1A63A64
        136BAA4336B1A63A64136BAA4336B1A63A64136BAA4336B1A63A64136BAA4336
        B1A63A64136BAAC28B43FF0FCDD6B6DDD4B6639E0000000049454E44AE426082}
      Properties.GraphicClassName = 'TJPEGImage'
      Properties.ReadOnly = True
      Properties.ShowFocusRect = False
      Properties.Stretch = True
      Style.LookAndFeel.Kind = lfStandard
      Style.LookAndFeel.NativeStyle = False
      Style.Shadow = False
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 31
      Transparent = True
      Height = 128
      Width = 130
    end
    object eFoto: TcxTextEdit
      Left = 567
      Top = 53
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 30
      Style.Color = clMaroon
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Silver'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
      StyleFocused.Color = 15921919
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
      TabOrder = 32
      Visible = False
      Width = 60
    end
    object cxApagaFoto: TcxButton
      Left = 562
      Top = 221
      Width = 65
      Height = 39
      Hint = 'Limpa a Foto do Produto'
      Cancel = True
      LookAndFeel.Kind = lfOffice11
      OptionsImage.Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000070000004900000098000000C1000000DA000000F3000000F30000
        00DA000000C10000009800000049000000070000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000190000
        0097000000F2000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000F20000009700000019000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000800000084000000F50000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000F5000000840000
        0008000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000018000000C8000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00C8000000180000000000000000000000000000000000000000000000000000
        000000000000000000000000002D000000E3000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000E30000002D00000000000000000000000000000000000000000000
        00000000000000000018000000E3000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000E300000018000000000000000000000000000000000000
        000000000008000000C8000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000C8000000080000000000000000000000000000
        000000000084000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000840000000000000000000000000000
        0019000000F5000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000F50000001900000000000000000000
        0097000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000F900000066000000DB000000FF000000FF000000FF000000FF0000
        00FF000000FF000000DB00000066000000F9000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000009700000000000000070000
        00F2000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00F90000004E000000000000001B000000DA000000FF000000FF000000FF0000
        00FF000000DA0000001B000000000000004E000000F9000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000F200000007000000490000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00660000000000000000000000000000001A000000D9000000FF000000FF0000
        00D90000001A00000000000000000000000000000066000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF00000049000000980000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00DB0000001B00000000000000000000000000000019000000D8000000D80000
        00190000000000000000000000000000001C000000DB000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF00000098000000C10000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000DA0000001A00000000000000000000000000000018000000180000
        000000000000000000000000001C000000DB000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000C1000000DA0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000D900000019000000000000000000000000000000000000
        0000000000000000001C000000DB000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000DA000000F30000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000D8000000180000000000000000000000000000
        00000000001C000000DB000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000F3000000F30000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000D7000000180000000000000000000000000000
        00000000001B000000DB000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000F3000000DA0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000D700000018000000000000000000000000000000000000
        0000000000000000001B000000DA000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000DA000000C10000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000D70000001800000000000000000000000000000018000000180000
        000000000000000000000000001A000000D9000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000C1000000980000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00D70000001800000000000000000000000000000019000000D8000000D80000
        001900000000000000000000000000000019000000D8000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF00000098000000490000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00680000000000000000000000000000001A000000D9000000FF000000FF0000
        00D90000001A00000000000000000000000000000068000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF00000049000000070000
        00F2000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FB00000051000000000000001B000000DA000000FF000000FF000000FF0000
        00FF000000DA0000001B0000000000000051000000FB000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000F200000007000000000000
        0097000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FA00000066000000DB000000FF000000FF000000FF000000FF0000
        00FF000000FF000000DB00000066000000FA000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000009700000000000000000000
        0019000000F5000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000F50000001900000000000000000000
        000000000084000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000840000000000000000000000000000
        000000000008000000C8000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000C8000000080000000000000000000000000000
        00000000000000000018000000E3000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000E300000018000000000000000000000000000000000000
        000000000000000000000000002D000000E3000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000E30000002D00000000000000000000000000000000000000000000
        000000000000000000000000000000000018000000C8000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00C8000000180000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000800000084000000F50000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000F5000000840000
        0008000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000190000
        0097000000F2000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000F20000009700000019000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000070000004900000098000000C1000000DA000000F3000000F30000
        00DA000000C10000009800000049000000070000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OptionsImage.Layout = blGlyphTop
      OptionsImage.Margin = 0
      OptionsImage.Spacing = 0
      TabOrder = 33
      TabStop = False
      OnClick = cxApagaFotoClick
    end
    object cxSalvaFoto: TcxButton
      Left = 497
      Top = 221
      Width = 67
      Height = 39
      Hint = 'Salva a Foto do Produto'
      LookAndFeel.Kind = lfOffice11
      OptionsImage.Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000070100004901000198020001C1020001DA020001F3020001F30200
        01DA020001C10100019801000049000000070000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000190100
        0197020001F2020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF020001F20100019700000019000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000801000184020001F50200
        01FF020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF020001FF020001FF020001F5010001840000
        0008000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000018020001C8020001FF020001FF0200
        01FF020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01C8000000180000000000000000000000000000000000000000000000000000
        000000000000000000000000002D020001E3020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001E30000002D00000000000000000000000000000000000000000000
        00000000000000000018020001E3020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001E300000018000000000000000000000000000000000000
        000000000008020001C8020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001C8000000080000000000000000000000000000
        000001000184020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF010001840000000000000000000000000000
        0019020001F5020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF020001C1020001F5020001FF020001FF0200
        01FF020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF020001F50000001900000000000000000100
        0197020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF010001B00000000501000042020001F5020001FF0200
        01FF020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF020001FF0100019700000000000000070200
        01F2020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF010001B000000005000000000000000001000042020001F50200
        01FF020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF020001FF020001F200000007010000490200
        01FF020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF010001AF0000000500000000000000000000000000000000010000420200
        01F5020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF020001FF020001FF01000049010001980200
        01FF020001FF020001FF020001FF020001FF020001FF020001FF020001FF0100
        01AE000000050000000000000000000000000000000000000000000000000100
        0042020001F5020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF020001FF020001FF01000198020001C10200
        01FF020001FF020001FF020001FF020001FF020001FF020001FF010001AD0000
        0005000000000000000000000000000000000000000000000000000000000000
        000001000042020001F5020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF020001FF020001FF020001C1020001DA0200
        01FF020001FF020001FF020001FF020001FF020001FF010001AC000000040000
        0000000000000000000000000000000000380000000800000000000000000000
        00000000000001000042020001F5020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF020001FF020001FF020001DA020001F30200
        01FF020001FF020001FF020001FF020001FF010001AB00000004000000000000
        0000000000000000000001000048020001F8010001B800000008000000000000
        0000000000000000000001000042020001F5020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF020001FF020001FF020001F3020001F30200
        01FF020001FF020001FF020001FF020001FF010001AB00000004000000000000
        00000000000001000048020001F8020001FF020001FF010001B8000000080000
        000000000000000000000000000001000042020001F5020001FF020001FF0200
        01FF020001FF020001FF020001FF020001FF020001FF020001F3020001DA0200
        01FF020001FF020001FF020001FF020001FF020001FF010001AB000000040000
        000001000048020001F8020001FF020001FF020001FF020001FF010001B80000
        00080000000000000000000000000000000001000042020001F5020001FF0200
        01FF020001FF020001FF020001FF020001FF020001FF020001DA020001C10200
        01FF020001FF020001FF020001FF020001FF020001FF020001FF010001AB0100
        004C020001F8020001FF020001FF020001FF020001FF020001FF020001FF0100
        01B8000000080000000000000000000000000000000001000042020001F50200
        01FF020001FF020001FF020001FF020001FF020001FF020001C1010001980200
        01FF020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF010001B80000000800000000000000000000000000000000010000420200
        01F5020001FF020001FF020001FF020001FF020001FF01000198010000490200
        01FF020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF010001B800000008000000000000000000000000000000000100
        0070020001FF020001FF020001FF020001FF020001FF01000049000000070200
        01F2020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF010001B8000000080000000000000000000000390200
        01F1020001FF020001FF020001FF020001FF020001F200000007000000000100
        0197020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF010001B8000000080000003A020001F20200
        01FF020001FF020001FF020001FF020001FF0100019700000000000000000000
        0019020001F5020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF020001FF020001C4020001F3020001FF0200
        01FF020001FF020001FF020001FF020001F50000001900000000000000000000
        000001000184020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF010001840000000000000000000000000000
        000000000008020001C8020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001C8000000080000000000000000000000000000
        00000000000000000018020001E3020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001E300000018000000000000000000000000000000000000
        000000000000000000000000002D020001E3020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001E30000002D00000000000000000000000000000000000000000000
        000000000000000000000000000000000018020001C8020001FF020001FF0200
        01FF020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01C8000000180000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000801000184020001F50200
        01FF020001FF020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF020001FF020001FF020001F5010001840000
        0008000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000190100
        0197020001F2020001FF020001FF020001FF020001FF020001FF020001FF0200
        01FF020001FF020001FF020001FF020001F20100019700000019000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000070100004901000198020001C1020001DA020001F3020001F30200
        01DA020001C10100019801000049000000070000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OptionsImage.Layout = blGlyphTop
      OptionsImage.Margin = 0
      OptionsImage.Spacing = 0
      ParentShowHint = False
      ShowHint = True
      TabOrder = 34
      TabStop = False
      OnClick = cxSalvaFotoClick
    end
    object eDtAtualizado: TcxDateEdit
      Left = 95
      Top = 279
      Hint = 'Data da '#218'ltima Atualiza'#231#227'o do Cadastro'
      Enabled = False
      ParentFont = False
      Properties.DateButtons = [btnClear, btnToday]
      Properties.ReadOnly = True
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = True
      Style.Shadow = False
      Style.IsFontAssigned = True
      TabOrder = 17
      Width = 130
    end
    object cxLabel12: TcxLabel
      Left = -7
      Top = 279
      AutoSize = False
      Caption = 'Dt. Atualiza'#231#227'o:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 17
      Width = 103
      AnchorX = 96
    end
    object eLocal: TcxTextEdit
      Left = 155
      Top = 258
      TabStop = False
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 30
      Properties.ReadOnly = True
      Style.Color = clBtnFace
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Silver'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
      StyleFocused.Color = 15921919
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
      TabOrder = 16
      Text = 'NENHUM'
      Width = 340
    end
    object eCodLocal: TcxButtonEdit
      Left = 95
      Top = 258
      Hint = '(F3) Busca SubGrupos'
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Default = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000202E0000202E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFAF6F0C9C3C1DCDBE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EEE4D9C8B189806EB2
            AFADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF3E7E1FEF8F4998C6EA5A0A2E8E7E3F2F1F5FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E8E9BAB9B8A4ABA3F3FFFFFF
            FFFFA7B8A6A8BBAB94AAAAA09D99DFE5E5FFFFFFFFFFFFFFFFFFFFFFFFFEFFFF
            C9C2BAC1C0B8E1C9C4F9A990E84E39DD2703FE472AF66454FAB09ADED3CC9794
            8B989693FFFFFFFFFFFFFFFFFFCFC8C3E0D7D8EA8973E82B04F23E00F84809EF
            C4B6E39E88F54000EF3500E83717F7C0AEB8C7BC9C958CFFFFFFE7DED8E0E7D9
            E75427F64B00FF811CFF6A0EFF9349FFFFFFF1AA88F47D21FF7417FF7B16E633
            00FD906DBBBAB7C4C0BCE7E5E6E69F7BF65F00FF9437FF8A2DFF8828FC8930FE
            FFFFE7BDA1FC7806FF8B31FF8D29FF9630E94B00EDC2B6ADB0A8E3E7DEE28045
            FFA342FF9B43FFA349FF9E49FC9232FDF6EEEEDDCAFA8F2AFFA349FFA249FF9E
            4BFD9A30FBA165BDC8C0E5E8E9E69B53FFC669FFB052FFB34DFFB553F1A852F9
            E4D3F3F0DDF7A043FFB55AFFB353FFB557FCA732FDBF8DC0C1C1EFECE2DAC7BE
            FBA330FFE4B1FFB45AFFB24FFFAF4FFBB853DDC097FCB250FFB556FFB86AFEB9
            60FC9E37E4D5D3D6D1C8F9F5EFE4E0DADAA983F5A52BFFE8AAFFD598FCB54EFD
            EECFE7FCFFEDB667FFC677FFBE5BF89B27FECDB2CCC7C7F9F5F3FFFFFFF9F0E9
            E9E6D7E0C2B4E89946F4B04EFFBE70FEBE64FBB55DFFB24FFBA445F7AD5FEDD3
            D6E0D8CCF6F3EAFFFFFFFFFFFFFFFFFFFAF8F2F0E2D7E6E0DCDEC6BAE7AE83F1
            AF7EEEB57CE9B28FE9D4CEE9DFDCE6E1D4FCF9F9FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFAFBF7F3F1EEF3EEF3F1F3F1F1F2ECF3EBF3F2E7FDF9FAFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Kind = bkGlyph
        end>
      Properties.CharCase = ecUpperCase
      Properties.ClickKey = 114
      Properties.OnButtonClick = eCodLocalPropertiesButtonClick
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      StyleFocused.Color = 13366014
      TabOrder = 15
      Text = '0'
      OnExit = eCodLocalExit
      OnKeyPress = eCodFornecKeyPress
      Height = 21
      Width = 60
    end
    object cxLabel19: TcxLabel
      Left = 5
      Top = 260
      AutoSize = False
      Caption = 'Localiza'#231#227'o:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clMaroon
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 17
      Width = 90
      AnchorX = 95
    end
  end
  object eFile2: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg *.jpeg)|*.jpg;*.jpeg'
    FilterIndex = 6
    Left = 602
    Top = 250
  end
end
