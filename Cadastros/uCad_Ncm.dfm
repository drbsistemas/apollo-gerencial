inherited Fcad_NCM: TFcad_NCM
  Caption = 'Tela de NCM'
  ClientHeight = 539
  ClientWidth = 702
  Enabled = False
  ExplicitTop = 8
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
      ExplicitTop = 487
      ExplicitWidth = 642
      inherited cxCadastro: TcxButton
        Enabled = False
      end
    end
    inherited grConsulta: TcxGrid
      Width = 642
      Height = 411
      ExplicitWidth = 642
      ExplicitHeight = 411
    end
  end
end
