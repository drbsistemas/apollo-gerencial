inherited Fcad_Cidade: TFcad_Cidade
  BorderStyle = bsSingle
  Caption = 'Tela de Cidades'
  ClientHeight = 572
  ClientWidth = 712
  Visible = False
  WindowState = wsNormal
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  ExplicitWidth = 718
  ExplicitHeight = 601
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCon: TPanel [0]
    Width = 654
    Height = 572
    ExplicitWidth = 654
    ExplicitHeight = 572
    inherited pnBusca: TPanel
      Width = 652
      ExplicitWidth = 652
      inherited cxConsulta: TcxComboBox
        Properties.Items.Strings = (
          'C'#243'd. IBGE'
          'Cidade'
          'Uf')
        TabOrder = 3
        Text = 'CIDADE'
      end
      inherited eConsulta: TcxTextEdit
        TabOrder = 4
      end
      inherited cxLabel2: TcxLabel
        Left = 509
        Top = -13
        Visible = False
        ExplicitLeft = 509
        ExplicitTop = -13
      end
      inherited cbAtivo: TcxComboBox
        Left = 541
        Top = -15
        Style.IsFontAssigned = True
        TabOrder = 0
        Visible = False
        ExplicitLeft = 541
        ExplicitTop = -15
      end
      inherited cxCon: TcxButton
        TabOrder = 2
      end
      inherited cxQtdeReg: TcxLabel
        Left = 481
        ExplicitLeft = 481
      end
    end
    inherited pnBotaoCad: TPanel
      Width = 652
      ExplicitWidth = 652
      inherited cxNovo: TcxButton
        LookAndFeel.SkinName = ''
      end
      inherited cxEdita: TcxButton
        LookAndFeel.SkinName = ''
      end
      inherited cxVer: TcxButton
        LookAndFeel.SkinName = ''
      end
      inherited cxApagar: TcxButton
        LookAndFeel.SkinName = ''
      end
      inherited cxVoltar: TcxButton
        LookAndFeel.SkinName = ''
      end
      inherited cxPrint: TcxButton
        LookAndFeel.SkinName = ''
      end
    end
    inherited pnBotaoCon: TPanel
      Top = 521
      Width = 652
      ExplicitTop = 521
      ExplicitWidth = 652
      inherited cxCadastro: TcxButton
        LookAndFeel.SkinName = ''
        Visible = False
      end
      inherited cxFechar: TcxButton
        LookAndFeel.SkinName = ''
      end
    end
    inherited grConsulta: TcxGrid
      Width = 652
      Height = 447
      ExplicitWidth = 652
      ExplicitHeight = 447
      inherited grConsultaDBTableView1: TcxGridDBTableView
        OnDblClick = grConsultaDBTableView1DblClick
        DataController.DataSource = dmCad.dsCidade
        inherited grConsultaDBTableView1Campo1: TcxGridDBColumn
          Caption = 'C'#243'd Ibge'
          DataBinding.FieldName = 'CODMUN'
        end
        inherited grConsultaDBTableView1Campo2: TcxGridDBColumn
          Caption = 'Munic'#237'pio'
          DataBinding.FieldName = 'MUNICIPIO'
        end
        object grConsultaDBTableView1Column1: TcxGridDBColumn
          Caption = 'Uf'
          DataBinding.FieldName = 'UF'
        end
      end
    end
  end
  inherited pnImg: TcxImage [1]
    Left = 654
    ExplicitLeft = 654
    ExplicitHeight = 572
    Height = 572
  end
  inherited pnCad: TPanel [2]
    Width = 654
    Height = 572
    ExplicitWidth = 654
    ExplicitHeight = 572
    inherited pnMenu: TPanel
      Width = 652
      ExplicitWidth = 652
      inherited cxSalvar: TcxButton
        LookAndFeel.SkinName = ''
      end
      inherited cxCancela: TcxButton
        LookAndFeel.SkinName = ''
      end
    end
  end
end
