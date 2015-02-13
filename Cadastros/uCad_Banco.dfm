inherited Fcad_Banco: TFcad_Banco
  Caption = 'Cadastro de Banco'
  ClientHeight = 539
  ClientWidth = 702
  ExplicitWidth = 710
  ExplicitHeight = 570
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCad: TPanel
    Width = 644
    Height = 539
    ExplicitWidth = 644
    ExplicitHeight = 539
    inherited pnMenu: TPanel
      Width = 642
      ExplicitWidth = 642
    end
  end
  inherited pnImg: TcxImage
    Left = 644
    ExplicitLeft = 644
    ExplicitHeight = 539
    Height = 539
  end
  inherited pnCon: TPanel
    Width = 644
    Height = 539
    ExplicitWidth = 644
    ExplicitHeight = 539
    inherited pnBusca: TPanel
      Width = 642
      ExplicitWidth = 642
      inherited cxConsulta: TcxComboBox
        Properties.Items.Strings = (
          'C'#243'digo'
          'Banco')
        Text = 'C'#211'DIGO'
      end
      inherited cbAtivo: TcxComboBox
        Style.IsFontAssigned = True
      end
    end
    inherited pnBotaoCad: TPanel
      Width = 642
      ExplicitWidth = 642
    end
    inherited pnBotaoCon: TPanel
      Top = 487
      Width = 642
      ExplicitTop = 488
      ExplicitWidth = 642
      inherited cxCadastro: TcxButton
        Enabled = False
      end
    end
    inherited grConsulta: TcxGrid
      Width = 642
      Height = 411
      ExplicitWidth = 642
      ExplicitHeight = 412
      inherited grConsultaDBTableView1: TcxGridDBTableView
        DataController.DataSource = dmCad.dsBanco
        inherited grConsultaDBTableView1Campo1: TcxGridDBColumn
          DataBinding.FieldName = 'IDBANCO'
        end
        inherited grConsultaDBTableView1Campo2: TcxGridDBColumn
          DataBinding.FieldName = 'BANCO'
        end
      end
    end
  end
end
