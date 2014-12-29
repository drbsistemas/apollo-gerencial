inherited Fcad_Animais: TFcad_Animais
  Caption = 'Tela de Animais'
  ClientHeight = 531
  ClientWidth = 694
  OnClose = FormClose
  ExplicitWidth = 710
  ExplicitHeight = 570
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCad: TPanel
    Width = 636
    Height = 531
    ExplicitWidth = 636
    ExplicitHeight = 531
    inherited pnMenu: TPanel
      Width = 634
      ExplicitWidth = 634
    end
  end
  inherited pnCon: TPanel
    Width = 636
    Height = 531
    ExplicitWidth = 636
    ExplicitHeight = 531
    inherited pnBusca: TPanel
      Width = 634
      ExplicitWidth = 634
      inherited cxConsulta: TcxComboBox
        Properties.Items.Strings = (
          'C'#243'digo'
          'Nome'
          'Ra'#231'a')
        Text = 'C'#211'DIGO'
      end
      inherited cbAtivo: TcxComboBox
        Style.IsFontAssigned = True
      end
    end
    inherited pnBotaoCad: TPanel
      Width = 634
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 634
    end
    inherited pnBotaoCon: TPanel
      Top = 480
      Width = 634
      ExplicitTop = 480
      ExplicitWidth = 634
    end
    inherited grConsulta: TcxGrid
      Width = 634
      Height = 406
      ExplicitWidth = 634
      ExplicitHeight = 406
    end
  end
  inherited pnImg: TcxImage
    Left = 636
    ExplicitLeft = 636
    ExplicitHeight = 531
    Height = 531
  end
end
