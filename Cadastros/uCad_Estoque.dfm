object FCad_Estoque: TFCad_Estoque
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Tela de Estoque'
  ClientHeight = 404
  ClientWidth = 824
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnMenu: TPanel
    Left = 0
    Top = 0
    Width = 824
    Height = 51
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object cxSalvar: TcxButton
      Left = 352
      Top = 0
      Width = 60
      Height = 51
      Hint = 'Salva os dados do registro.'
      Caption = '&Imprime'
      LookAndFeel.Kind = lfOffice11
      OptionsImage.Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        00003F3F3F4D808181A2C3C3C3F1BEBEBEE6BDBDBDE4BDBDBEE4BEBEBEE4BEBE
        BEE4BEBEBEE4BEBEBEE4BEBEBEE4BDBDBEE4BDBDBEE4BDBDBDE4BCBCBCE4BCBB
        BCE4BBBBBBE4B9BABAE4B9B9BAE4B8B8B9E4B7B8B9E4B6B6B7E4B6B6B7E4B5B6
        B6E4B7B7B8E6C7C7C7FC68686998000000000000000000000000000000000000
        00004D4D4D5D99999ABCDDDEDEFFE2E2E2FFE1E1E2FFE2E2E3FFE3E3E3FFE3E3
        E3FFE3E4E4FFE0E0E0FFE1E2E2FFE1E2E2FFE3E3E4FFE4E4E5FFE5E5E5FFE3E4
        E4FFE4E4E4FFE4E4E4FFE4E5E5FFE0E1E1FFDDDEDEFFDCDDDDFFDDDEDEFFDDDD
        DDFFDCDDDDFFDCDCDDFFA2A3A3C9313232361F1F1F231818181B000000000000
        000047474756929393B3DCDCDDFFE1E1E2FFE0E0E1FFE1E1E1FFE2E2E2FFE2E2
        E2FFE0E0E1FFE0E0E1FFE1E1E2FFE0E0E0FFE3E3E3FFE3E3E4FFE3E3E3FFDFDF
        E0FFDDDDDDFFDFDFE0FFE3E3E4FFE1E2E3FFDEDFDFFFDBDCDCFFDCDEDEFFDEDF
        DFFFDFDFE0FFDEDEDFFFBDBEBFE05252525A2929292D25252528000000000000
        000047474856939393B3DFDFDFFFE3E3E5FFE3E3E3FFE4E4E4FFE4E4E5FFE1E1
        E1FFE4E3E4FFEDECEEFFEDEDEEFFE8E8E9FFE2E2E3FFDFDFE1FFDBDBDCFFD0D0
        D1FFCCCDCDFFD5D6D5FFE0E1DFFFE2E3E2FFE3E3E2FFE3E3E4FFE7E7E7FFEAEC
        EBFFEAEAEBFFE7E6E7FFDBDBDBFA7373737F232323261919191B000000000000
        000047474856949495B3E1E1E2FFE6E6E6FFE6E6E6FFE6E6E6FFE5E5E7FFEDED
        EEFFF0EFF0FFEAEAEBFFEAEAEBFFEAEAEBFFDDDEDFFFCBCBCCFFC8C8C8FFC5C5
        C6FFC6C6C5FFCACAC8FFCFD0CBFFDDDDD9FFEAE9E8FFF7F7F9FFFBFAFAFFFBFB
        FAFFF8F9F8FFF4F4F3FFECECECFF9090909E2525252800000000000000000000
        000048484856959596B3E3E3E4FFE8E8E8FFE8E8E8FFE8E8E9FFEAEAEBFFEDED
        EEFFE8E8E9FFD7D6D7FFDBDBDBFFDBDBDDFFD2D2D5FFCACACAFFD0D0C9FFD9D8
        C8FFD7D5C2FFBFBEB6FF9494A2FFA2A2BAFFD6D6E4FFFEFEFFFFFCFBFBFFF9FA
        FAFFF8F9F8FFF4F5F3FFF1F2F2FFD8D8D9EB6868697303030303000000000000
        000048484956969696B3E5E6E6FFEAEAEBFFEAEAEAFFEAEAEBFFEAEAEBFFEBEB
        EBFFD7D7D7FFC0C0C0FFCBCAC9FFD6D5CEFFD8D7CBFFCFCEC3FFC1C1BDFFAAAA
        B5FF8A8CACFF62659FFF2F2F8DFF4D51A6FFB7B8DEFFFFFFFFFFFEFDFCFFFBFC
        FBFFFAFBFBFFF7F7F7FFF4F4F4FFEEEEEEFFA4A4A4B42B2B2B30000000000000
        000049494956979898B3E8E8E8FFEDEDEDFFECECEDFFEDEDEDFFEDEDEDFFE9E9
        EAFFD7D7D7FFCECECCFFCAC9C5FFC5C4C1FFB4B5B9FF9B9CB0FF7A7CA6FF4F53
        9CFF282E96FF0E1593FF00008FFF161D9DFF9395D1FFFFFFFFFFFFFFFDFFFFFF
        FEFFFEFEFFFFFBFBFBFFF6F6F6FFF3F3F3FFC8C8C8D76A6A6A75000000000000
        000049494956989898B3EBEBEBFFEFEFF0FFEEEEEFFFEFEFEFFFEFEFEFFFF0F0
        F0FFEEEEEEFFE9E9E6FFB9BABDFF8083A8FF4F539FFF2E349AFF1A2098FF0F17
        97FF111997FF181F97FF151D95FF070E8FFF696DBAFFF9F9FAFFFEFEFEFFFFFF
        FFFFFFFFFFFFFEFEFEFFFAFAFAFFF7F7F7FFDDDDDEEB9B9B9BA9000000000000
        0000494A4A56999999B3EDEDEDFFF1F1F1FFF0F0F1FFF1F1F2FFF1F1F2FFF2F2
        F2FFF4F4F3FFCECFE2FF5355A2FF1E2391FF151D96FF141B96FF121996FF131A
        99FF171E9EFF1B22A3FF1E26A7FF0109A2FF333AB8FFB0B2E6FFFFFFFEFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFFEEEFEFFBC8C9C9D7000000000000
        00004A4A4A569A9A9AB3EFEFEFFFF3F3F3FFF2F2F2FFF4F4F4FFF4F4F4FFF8F8
        F7FFE9E9F1FF8486C8FF070B8FFF00008DFF11199DFF181FA1FF1C24A6FF1F26
        ACFF1F26B2FF1F26B8FF2129BEFF111ABFFF0E15C3FF454BD5FFC4C6F4FFF6F6
        FFFFFFFFFCFFF5F5F5FFFCFCFCFFFDFDFDFFF7F8F8FFEBEBEBF6000000000000
        00004A4A4A569B9B9BB3F1F1F2FFF5F5F5FFF5F5F5FFF6F6F6FFF6F6F6FFFAFA
        F8FFD6D6E8FF6567BCFF080E96FF0C129CFF222AADFF1E26B4FF1E26BBFF1D25
        C1FF1C24C6FF1C24CAFF1B23CBFF1D25D1FF050DCFFF060FD1FF6D71E5FFDDDE
        FBFFFFFFF6FFE8E8E7FFF6F6F6FFF8F8F8F9EEEEEEF0CBCBCBD0000000000000
        00004A4A4A569C9C9CB3F3F3F3FFF7F7F8FFF7F7F8FFF7F7F8FFF8F8F8FFF9F9
        F6FFEDEDEDFF9FA1D7FF171CAEFF0000ACFF0F18BAFF1E27C2FF1F27C4FF1C24
        C7FF131CC9FF0C15CCFF050DCEFF0109D2FF010AD5FF181ED7FF4B51DDFFC4C6
        F1FFFFFFF7FFF3F3F2FFF7F7F8FCCCCCCCCC8383838448484849000000000000
        00004A4B4B569D9D9DB3F5F5F5FFF9F9FAFFF9F9F9FFFAFAFAFFFBFBFBFFF9F9
        FAFFF6F6F4FFE0E2ECFF9699DDFF4246CDFF0A11C3FF0008C6FF040DCEFF0710
        D2FF0D15D4FF1C24D6FF333ADCFF575DE3FF8285E9FFA4A6EEFFB9BBEEFFE6E7
        F8FFF6F6F3FFE6E6E6FFBABABBD5454545451F1F1F1F06060606000000000000
        00004B4B4B569D9E9EB3F7F7F7FFFBFBFCFFFBFBFCFFFCFCFCFFFDFDFDFFFDFD
        FDFFFBFBFAFFFBFCF6FFF9F9F7FFBCBDECFF686CDDFF393ED4FF262DC6FF3B41
        CFFF6368E1FF8589EBFFA2A6F1FFCCCEF7FFF5F5FBFFFFFFFEFFFFFFFEFFFFFF
        FFFFF4F4F5FFDFE0E1FF969696BA000000000000000000000000000000000000
        00004B4B4B569F9F9FB3FAF9F9FFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFCFCFCFFF9F9F7FFFEFEF7FFF4F4FBFFC2C4EEFF9396C1FFADB0
        C6FFE8E9EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFCFFFCFBFCFFFFFF
        FFFFFCFDFDFFEAEBEBFF9B9B9CC3040404060000000000000000000000000000
        00004B4B4B569F9F9FB3FBFBFBFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFDFDFDFFFCFCFCFFFCFCFBFFFCFCFBFFFBFBFBFFF7F7F7FFEDED
        EAFFF2F2EBFFFFFFFFFFFFFFFEFFFFFFFDFFFEFEFCFFFDFDFCFFFCFCFCFFFEFE
        FEFFFDFDFDFFF3F4F3FFA6A6A7C50909090A0000000000000000000000000000
        00004C4C4C56A0A1A1B3FBFCFBFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFB
        FAFFF2F2F0FFFFFFFEFFFEFEFEFFFCFCFCFFFCFCFCFFFBFBFCFFFCFCFCFFFCFC
        FCFFFCFCFCFFF8F8F8FFB6B6B6CC121212130000000000000000000000000000
        00004C4C4C56A1A1A1B3FBFBFBFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
        FDFFF3F3F4FFF9F9F9FFFEFEFEFFFEFEFEFFFCFCFCFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFAFAFAFFC8C8C8DA232323240000000000000000000000000000
        00004C4C4C56A1A1A1B3FCFBFBFFFEFEFEFFFDFDFDFFFDFDFDFFFEFEFEFFFEFE
        FEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
        FDFFF3F4F4FFF0F0F0FFFCFCFCFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFEFEFEFFDDDDDDEB3838383A0000000000000000000000000000
        00004C4D4D56A1A2A2B3FBFCFCFFFEFEFEFFFDFDFDFFFEFEFEFFFEFEFEFFFEFE
        FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
        FDFFF6F6F6FFEBECECFFFAFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFCFC
        FCFFFBFBFBFFF9F9F9FFEDEDEDFB525252570000000000000000000000000000
        00004D4D4D56A2A2A2B3FCFCFCFFFEFEFEFFFDFDFDFFFEFEFEFFFEFEFEFFFEFE
        FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFD
        FDFFFAFBFBFFF4F4F4FFF8F9F9FFFCFCFCFFFBFBFBFFF8F8F8FFF6F6F6FFF3F3
        F3FFF0F0F0FFEDEDEDFFC6C6C6DC3738383C0000000000000000000000000000
        00004D4D4D56A2A2A2B3FCFCFCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
        FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFBFBFBFFF8F9F9FFF8F8F8FFF5F5F5FFF3F3F3FFF1F1F2FFEFEF
        EFFFECECEDFFEAEAEBFF989999B40B0B0B0C0000000000000000000000000000
        00004D4D4D56A2A2A2B3FCFCFCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
        FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFDFDFDFFFBFBFBFFF8F8F8FFF9F9F9FFF7F7F7FFF4F4F5FFF2F2
        F2FFF1F1F2FFE7E7E8FF8C8C8DAC000000000000000000000000000000000000
        00004D4D4D56A2A2A2B3FCFCFCFFFEFEFEFFFDFDFDFFFEFEFEFFFEFEFEFFFEFE
        FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFDFDFDFFFBFBFBFFF8F8F8FFF1F1F1FFEAEAEAFFE8E8E9FFE5E5
        E6FFE0E0E1FFCACACBEE4B4B4B56000000000000000000000000000000000000
        00004D4D4D56A2A2A2B3FCFCFCFFFEFEFEFFFDFDFDFFFEFEFEFFFEFEFEFFFEFE
        FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFCFCFCFFFCFCFCFFF1F1F1FFE0E0E0FFEBEBECFFEDEDEDFFECEC
        EDFFD5D5D6F83333333A00000000000000000000000000000000000000000000
        00004D4D4D56A2A2A3B3FCFCFCFFFEFEFEFFFDFDFDFFFDFDFDFFFEFEFEFFFEFE
        FEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFCFCFCFFFBFBFCFFEDEDEEFFE9E9EAFFFFFFFFFFFFFFFFFFEEEF
        EFFF4F4F4F560000000000000000000000000000000000000000000000000000
        00004D4D4D56A2A2A3B3FCFCFCFFFEFEFEFFFEFEFDFFFFFFFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFAFAFBFFFAFAFAFFEDEDEDFFEBEBECFFFFFFFFFFE8E9E9FF5758
        585F000000000000000000000000000000000000000000000000000000000000
        00004D4D4D56A1A2A2B3FCFCFCFFFFFFFFFFFFFFFFFFFFFFFDFFF6F7F6FFF9FA
        F9FFF8F8F8FFF6F6F6FFFCFCFCFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
        FDFFFCFCFCFFF9F9F9FFFAFAFAFFECEBECFFECEDEDFFEBECECFF696969770000
        0000000000000000000000000000000000000000000000000000000000000000
        00004D4D4D56A5A5A4B3FCFCFCFFB1B5EBFFB1B5ECFFB3B6E2FFD4D5D6FFDADB
        D9FFD4D5D6FFD6D6D7FFFAFAFAFFFFFFFFFFFDFDFDFFFDFDFDFFFDFDFDFFFCFC
        FCFFFAFAFAFFF8F8F7FFFAFAFBFFEAEAEBFFD9DADAFF76767686000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00005353545DADADACBCFFFFFDFFA0A4E8FF9FA3E9FFBEC1EAFFE5E5E7FFE9E9
        E7FFE1E1E1FFE8E8E9FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
        FDFFFBFBFBFFF9F9F9FFFCFCFDFFDBDBDCFF8A8A8BA100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00004545454D909091A2E4E3E3F1E5E5DFE6E4E4DDE4E4E4DEE4DFDFDFE4DFDF
        E0E4E0E0E0E4E0E0E0E4DBDBDBE4DADADBE4DADADAE4D9D9D9E4D8D8D8E4D7D7
        D7E4D7D7D7E4D7D7D7E4E1E1E1F88585859F0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OptionsImage.Layout = blGlyphTop
      OptionsImage.Margin = 0
      OptionsImage.Spacing = 0
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = cxSalvarClick
    end
    object cxCancela: TcxButton
      Left = 411
      Top = 0
      Width = 60
      Height = 51
      Hint = 'Cancela a'#231#227'o e retorna para consulta de registros.'
      Cancel = True
      Caption = '&Fechar'
      LookAndFeel.Kind = lfOffice11
      OptionsImage.Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        00003F3F3F4D808181A2C3C3C3F1BEBEBEE6BDBDBDE4BDBDBEE4BEBEBEE4BEBE
        BEE4BEBEBEE4BEBEBEE4BEBEBEE4BDBDBEE4BDBDBEE4BDBDBDE4BDBDBDE5C4C4
        C5EDCCCCCCF4CCCCCDFACCCCCDFCCCCCCDFCCCCCCDFCCBCBCCFACBCBCBF4BFC0
        C0EDB9B9BAE7C7C7C7FC68686998000000000000000000000000000000000000
        00004D4D4D5D99999ABCDDDEDEFFE2E2E2FFE1E1E2FFE2E2E3FFE3E3E3FFE3E3
        E3FFE3E3E3FFE3E3E3FFE3E3E3FFE2E2E3FFE2E2E3FFE1E1E2FFD5D5D6FFCDCD
        CEFFCFCFD0FFD3D4D4FFD5D6D6FFD6D7D7FFD5D6D6FFD2D3D3FFCECFCFFFCCCD
        CEFFD3D2D3FFD8D7D9FF7B7B7BAD000000000000000000000000000000000000
        000047474756929393B3DCDCDDFFE1E1E2FFE0E0E1FFE1E1E1FFE1E1E2FFE1E1
        E2FFE1E1E2FFE1E1E2FFE1E1E2FFE1E1E1FFDDDDDEFFCECECFFFCFD1D0FFD6D7
        D7FFD9DADAFFDADBDBFFDBDCDCFFDBDCDCFFDBDCDCFFDADCDCFFD9DADAFFD6D7
        D7FFD0D0D1FFCBCBCCFFA3A3A5CF000000000000000000000000000000000000
        000047474856939393B3DFDFDFFFE3E3E5FFE3E3E3FFE4E4E4FFE4E4E5FFE4E4
        E5FFE4E4E5FFE4E4E5FFE4E4E5FFDEDEDFFFDEDDDFFFD8D9DAFFD7D9D8FFDCDD
        DDFFDDDDDEFFDEDEDFFFDFE0E0FFDFE0E0FFDFDFDFFFDDDFDFFFDDDEDEFFDBDC
        DCFFD8D9D9FFD2D3D3FFCBCACCFE5E5E5E6F0000000000000000000000000000
        000047474856949495B3E1E1E2FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E7FFE6E6
        E7FFE6E6E7FFE6E6E7FFE6E6E7FFDADADAFFEEEDEDFFDDDFDFFFDBDCDCFFDDDD
        DEFFEBEBE5FFEEEEE7FFE3E3E4FFE3E4E4FFE4E4E4FFE3E2E2FFE1E1E1FFDEDF
        DFFFDBDCDCFFDADBDBFFD2D2D3FFC7C7C8FA3737373C00000000000000000000
        000048484856959596B3E3E3E4FFE8E8E8FFE8E8E8FFE8E8E9FFE8E8E9FFE9E9
        E9FFE9E9E9FFE9E9E9FFDADADBFFE9E9E9FFEFEFEFFFE0E1E1FFDDDEDFFFE9E9
        E6FFC1C4D9FFD1D3E1FFFEFFF1FFEDEDEBFFE6E7E7FFE7E7E7FFE5E5E5FFE2E3
        E2FFDFE0E0FFDCDDDDFFD8D9D9FFCECFCFFFA0A1A1C40909090A000000000000
        000048484956969696B3E5E6E6FFEAEAEBFFEAEAEAFFEAEAEBFFEAEAEBFFEBEB
        EBFFEBEBEBFFE8E8E8FFDDDDDEFFEDEDEDFFEFF0F0FFE6E7E7FFDEDFE0FFFBFB
        EEFF8588C7FF181A9EFF9597CFFFF6F7F2FFFCFDF4FFEDEDEBFFE7E8E8FFE5E6
        E6FFE2E2E2FFDEDFDFFFDADBDBFFD4D6D5FFCBCACCFF48484850000000000000
        000049494956979898B3E8E8E8FFEDEDEDFFECECEDFFEDEDEDFFEDEDEDFFEDED
        EEFFEDEDEEFFE2E2E3FFE5E6E6FFEEEEEEFFF0F0F0FFEEEDEDFFE1E3E3FFFBFB
        F0FF9597D2FF0208A2FF070EA4FF383EB3FFADAFDCFFF9F9F6FFF9F9F2FFE7E8
        E8FFE3E3E4FFE1E1E1FFDDDDDDFFD8D9D9FFCDCCCEFF8585869D000000000000
        000049494956989898B3EBEBEBFFEFEFF0FFEEEEEFFFEFEFEFFFEFEFEFFFF0F0
        F0FFF0F0F0FFDCDCDDFFEBECECFFEEEFEFFFF0F0F0FFF3F2F2FFE8E8E9FFFBFB
        F0FF9396D5FF070FADFF1D24B3FF0A12ABFF070FA7FF5156BCFFC5C7E3FFFFFF
        F3FFF2F3EBFFE2E2E2FFDEDFDFFFDADBDBFFD1D2D2FFAAAAABD2000000000000
        0000494A4A56999999B3EDEDEDFFF1F1F1FFF0F0F1FFF1F1F2FFF1F1F2FFF2F2
        F2FFF2F2F2FFDCDCDDFFEEEEEEFFEDEEEEFFEFF0F0FFF3F4F4FFF1F0F1FFFCFC
        F1FF9497D9FF070EB6FF1D24BBFF1E25B9FF1C23B5FF080FA9FF1218A6FF6E71
        C1FFD3D4E1FFE8E8E5FFDFE0E0FFDBDCDCFFD4D5D5FFB7B7B8E5000000000000
        00004A4A4A569A9A9AB3EFEFEFFFF3F3F3FFF2F2F2FFF4F4F4FFF4F4F4FFF4F4
        F4FFF4F4F4FFDEDEDFFFEDEEEEFFEDEEEEFFEFF0F0FFF2F3F3FFF4F4F5FFFFFF
        F8FF9296DBFF070FBDFF1D25C1FF1C24BFFF1D24BBFF1F26B6FF121AADFF0000
        98FF2026A4FFD0D1DDFFEAEAE3FFDADBDBFFD4D5D5FFB8B8B9E5000000000000
        00004A4A4A569B9B9BB3F1F1F2FFF5F5F5FFF5F5F5FFF6F6F6FFF6F6F6FFF6F6
        F7FFF6F6F7FFDDDDDEFFEEEEEEFFEDEEEEFFEFF0F0FFF2F2F2FFF3F3F4FFFFFF
        FCFF9497E2FF060FC4FF1D25C9FF1E26C6FF1C24C0FF080FB4FF1218AFFF6D71
        C6FFD3D4E1FFE8E8E5FFDFE0E0FFDADBDBFFD2D3D3FFB9B8BAE5000000000000
        00004A4A4A569C9C9CB3F3F3F3FFF7F7F8FFF7F7F8FFF7F7F8FFF8F8F8FFF9F9
        F9FFF9F9F9FFDEDEDFFFEBECEDFFEEEFEEFFEFF0F0FFF1F1F1FFF2F3F3FFFFFF
        FBFF9599E7FF0610CDFF1E25D0FF0A13C6FF0710BEFF5055C8FFC4C6E4FFFFFF
        F2FFF2F2EAFFDFE0E0FFDADBDBFFD9DADAFFE0DFE0FFB3B3B4D2000000000000
        00004A4B4B569D9D9DB3F5F5F5FFF9F9FAFFF9F9F9FFFAFAFAFFFBFBFBFFFBFB
        FCFFFBFBFCFFE8E7E8FFE6E5E6FFEEEEEEFFEEEFEFFFF0F1F1FFF2F2F3FFFFFF
        F8FF979BE6FF0209D1FF070FD0FF3940D2FFABAFE5FFFAFAF4FFF9F9F0FFE7E8
        E8FFE3E4E5FFE4E4E4FFE5E6E6FFEBECECFFE9E9E9FF8787889D000000000000
        00004B4B4B569D9E9EB3F7F7F7FFFBFBFCFFFBFBFCFFFCFCFCFFFDFDFDFFFDFD
        FDFFFDFDFDFFF4F5F5FFDCDCDEFFEDEDEEFFEDEEEEFFEFEFEFFFF0F0F1FFFFFF
        F7FF878BE1FF191BCEFF989BE7FFF8F8F9FFFFFFFCFFF8F8F6FFF2F2F3FFF0F1
        F1FFF0F0F0FFF0F1F1FFEFF0F0FFEEEDEEFFDDDDDEFF46464750000000000000
        00004B4B4B569F9F9FB3FAF9F9FFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFCFCFCFFDEDEDFFFE9E9E9FFEDEDEDFFEEEEEEFFEFEFF0FFF5F6
        F3FFCDCEECFFD7D8F0FFFFFFF9FFF8F8F5FFF3F4F4FFF3F4F4FFF3F3F3FFF2F1
        F1FFEFF0F0FFEEEEEEFFECEDEDFFE9E9E8FFA4A4A5C40909090A000000000000
        00004B4B4B569F9F9FB3FBFBFBFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFDFDFDFFF8F8F8FFD9D9DAFFECEDEDFFEDEDEDFFEEEEEEFFEEEE
        EFFFFAFAF2FFFAFBF4FFF1F1F2FFF2F1F2FFF2F2F2FFF1F1F1FFF0F1F1FFEFEF
        EFFFEEEEEEFFEDEDEDFFECECEDFFD6D6D6FA3636363C00000000000000000000
        00004C4C4C56A0A1A1B3FBFCFBFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFDFDFDFFFDFDFDFFECECECFFDCDDDEFFEDECEDFFEDEDEDFFEDEE
        EEFFEEEEEFFFEEEFEFFFF0F0F0FFEFF0F0FFEFF0F0FFEEEFEFFFEEEFEFFFEDED
        EDFFEDEDEDFFEDECECFFDCDCDDFE5D5D5D6F0000000000000000000000000000
        00004C4C4C56A1A1A1B3FBFBFBFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFEBECECFFDADADBFFE9E9EAFFEDED
        EDFFEDEEEFFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEDEDFFEDEEEEFFEDED
        EDFFEAEAE9FFDAD9DBFFABACACCF000000000000000000000000000000000000
        00004C4C4C56A1A1A1B3FCFBFBFFFEFEFEFFFDFDFDFFFDFDFDFFFEFEFEFFFEFE
        FEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFF5F5F5FFDEDEDFFFDEDE
        DFFFE7E7E8FFEBEBEBFFEDEEEDFFEDEEEEFFEDEDEDFFEBEBECFFE7E7E7FFDFDF
        E0FFDBDBDCFFE7E7E8FF8A8A8AA7000000000000000000000000000000000000
        00004C4D4D56A1A2A2B3FBFCFCFFFEFEFEFFFDFDFDFFFEFEFEFFFEFEFEFFFEFE
        FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFFBFBFBFFEFEF
        F0FFE7E7E7FFDFDEDFFFDDDCDDFFDFDEDFFFDDDDDEFFDDDDDFFFE2E2E2FFE5E5
        E6FFECECEDFFEAEAEBFF8A8A8AA7000000000000000000000000000000000000
        00004D4D4D56A2A2A2B3FCFCFCFFFEFEFEFFFDFDFDFFFEFEFEFFFEFEFEFFFEFE
        FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFDFDFDFFFBFBFBFFF8F8F8FFF6F6F6FFF4F4F4FFF1F1F2FFEFEF
        EFFFEEEEEEFFEAEAEBFF8A8B8BA7000000000000000000000000000000000000
        00004D4D4D56A2A2A2B3FCFCFCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
        FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFDFDFDFFFBFBFBFFF8F8F8FFF6F6F6FFF4F4F4FFF1F1F2FFEFEF
        EFFFEDEDEEFFEBEBECFF8D8D8DA9000000000000000000000000000000000000
        00004D4D4D56A2A2A2B3FCFCFCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
        FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFDFDFDFFFBFBFBFFF8F8F8FFF9F9F9FFF7F7F7FFF4F4F5FFF2F2
        F2FFF1F1F2FFE7E7E8FF8C8C8DAC000000000000000000000000000000000000
        00004D4D4D56A2A2A2B3FCFCFCFFFEFEFEFFFDFDFDFFFEFEFEFFFEFEFEFFFEFE
        FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFDFDFDFFFBFBFBFFF8F8F8FFF1F1F1FFEAEAEAFFE8E8E9FFE5E5
        E6FFE0E0E1FFCACACBEE4B4B4B56000000000000000000000000000000000000
        00004D4D4D56A2A2A2B3FCFCFCFFFEFEFEFFFDFDFDFFFEFEFEFFFEFEFEFFFEFE
        FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFCFCFCFFFCFCFCFFF1F1F1FFE0E0E0FFEBEBECFFEDEDEDFFECEC
        EDFFD5D5D6F83333333A00000000000000000000000000000000000000000000
        00004D4D4D56A2A2A3B3FCFCFCFFFEFEFEFFFDFDFDFFFDFDFDFFFEFEFEFFFEFE
        FEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFCFCFCFFFBFBFCFFEDEDEEFFE9E9EAFFFFFFFFFFFFFFFFFFEEEF
        EFFF4F4F4F560000000000000000000000000000000000000000000000000000
        00004D4D4D56A2A2A3B3FCFCFCFFFEFEFEFFFEFEFDFFFFFFFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFAFAFBFFFAFAFAFFEDEDEDFFEBEBECFFFFFFFFFFE8E9E9FF5758
        585F000000000000000000000000000000000000000000000000000000000000
        00004D4D4D56A1A2A2B3FCFCFCFFFFFFFFFFFFFFFFFFFFFFFDFFF6F7F6FFF9FA
        F9FFF8F8F8FFF6F6F6FFFCFCFCFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
        FDFFFCFCFCFFF9F9F9FFFAFAFAFFECEBECFFECEDEDFFEBECECFF696969770000
        0000000000000000000000000000000000000000000000000000000000000000
        00004D4D4D56A5A5A4B3FCFCFCFFB1B5EBFFB1B5ECFFB3B6E2FFD4D5D6FFDADB
        D9FFD4D5D6FFD6D6D7FFFAFAFAFFFFFFFFFFFDFDFDFFFDFDFDFFFDFDFDFFFCFC
        FCFFFAFAFAFFF8F8F7FFFAFAFBFFEAEAEBFFD9DADAFF76767686000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00005353545DADADACBCFFFFFDFFA0A4E8FF9FA3E9FFBEC1EAFFE5E5E7FFE9E9
        E7FFE1E1E1FFE8E8E9FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
        FDFFFBFBFBFFF9F9F9FFFCFCFDFFDBDBDCFF8A8A8BA100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00004545454D909091A2E4E3E3F1E5E5DFE6E4E4DDE4E4E4DEE4DFDFDFE4DFDF
        E0E4E0E0E0E4E0E0E0E4DBDBDBE4DADADBE4DADADAE4D9D9D9E4D8D8D8E4D7D7
        D7E4D7D7D7E4D7D7D7E4E1E1E1F88585859F0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OptionsImage.Layout = blGlyphTop
      OptionsImage.Margin = 0
      OptionsImage.Spacing = 0
      TabOrder = 1
      OnClick = cxCancelaClick
    end
  end
  object grConsulta: TcxGrid
    Left = 0
    Top = 51
    Width = 824
    Height = 326
    Hint = 'Grid de Dados'
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = cxcbsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2010Black'
    RootLevelOptions.TabsForEmptyDetails = False
    object grConsultaDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmCad.dsEstoque
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = '<N'#227'o h'#225' registros>'
      OptionsView.GroupByBox = False
      object grConsultaDBTableView1Campo1: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'IDESTOQUE'
        Width = 53
      end
      object grConsultaDBTableView1Campo2: TcxGridDBColumn
        Caption = 'Data'
        DataBinding.FieldName = 'DATA'
        Width = 75
      end
      object grConsultaDBTableView1Column1: TcxGridDBColumn
        Caption = 'Documento'
        DataBinding.FieldName = 'DOCUMENTO'
        Width = 83
      end
      object grConsultaDBTableView1Column2: TcxGridDBColumn
        Caption = 'Est. Anterior'
        DataBinding.FieldName = 'ESTOQUEANTES'
        Width = 90
      end
      object grConsultaDBTableView1Column3: TcxGridDBColumn
        Caption = 'Entrada'
        DataBinding.FieldName = 'ENTRADA'
        Width = 90
      end
      object grConsultaDBTableView1Column4: TcxGridDBColumn
        Caption = 'Sa'#237'da'
        DataBinding.FieldName = 'SAIDA'
        Width = 90
      end
      object grConsultaDBTableView1Column5: TcxGridDBColumn
        Caption = 'Saldo'
        DataBinding.FieldName = 'SALDO'
        Width = 90
      end
      object grConsultaDBTableView1Column6: TcxGridDBColumn
        Caption = 'Origem'
        DataBinding.FieldName = 'ORIGEM'
        Width = 90
      end
      object grConsultaDBTableView1Column7: TcxGridDBColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'DESCRICAO'
        Width = 300
      end
      object grConsultaDBTableView1Column8: TcxGridDBColumn
        Caption = 'Usu'#225'rio'
        DataBinding.FieldName = 'USUARIO'
        Width = 90
      end
    end
    object grConsultaLevel1: TcxGridLevel
      GridView = grConsultaDBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 377
    Width = 824
    Height = 27
    Align = alBottom
    TabOrder = 2
    object cxLabel1: TcxLabel
      Left = 254
      Top = 5
      AutoSize = False
      Caption = 'Estoque Dispon'#237'vel:'
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
      AnchorX = 367
    end
    object cxLabel2: TcxLabel
      Left = 454
      Top = 5
      AutoSize = False
      Caption = 'Estoque Total:'
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
      AnchorX = 567
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Left = 368
      Top = 3
      TabStop = False
      DataBinding.DataField = 'ESTOQUEDISP'
      DataBinding.DataSource = dmCad.dsProd
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '###,###,##0.00'
      Properties.ReadOnly = False
      Style.Color = clBtnFace
      TabOrder = 0
      Width = 121
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit
      Left = 567
      Top = 3
      TabStop = False
      DataBinding.DataField = 'ESTOQUETOTAL'
      DataBinding.DataSource = dmCad.dsProd
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '###,###,##0.00'
      Properties.ReadOnly = False
      Style.Color = clBtnFace
      TabOrder = 1
      Width = 121
    end
  end
end
