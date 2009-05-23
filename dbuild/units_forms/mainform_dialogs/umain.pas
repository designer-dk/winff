{
   This unit is part of the WinFF project
   Copyright (c) 2006 - 2009 Matthew Weatherford
   http://www.winff.org
   Licensed under the GNU GPL v3

   MainForm, the main user interface
}


unit umain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  Menus, ComCtrls, ExtCtrls, Buttons, StdCtrls;

type

  { TMainForm }

  TMainForm = class(TForm)
     Bevel1: TBevel;
     btnAdditionalOptions: TBitBtn;
     btnStartConversion: TBitBtn;
     btnPlaySelectedFile: TBitBtn;
     btnClearFileList: TBitBtn;
     btnRemoveFiles: TBitBtn;
     btnAddFiles: TBitBtn;
     btnSelectOutputFolder: TButton;
     cbx2PassEncoding: TCheckBox;
     cbxDeinterlance: TCheckBox;
     cobxConvertTo: TComboBox;
     cobxDevicePreset: TComboBox;
     edtVideoAspectRatio: TEdit;
     edtVideoSizeHeight: TEdit;
     edtVideoSizeWidth: TEdit;
     edtVideoFramerate: TEdit;
     edtVideoBitrate: TEdit;
     edtAudioChannels: TEdit;
     edtAudioSampleRate: TEdit;
     edtAudioBitrate: TEdit;
     edtExtraCommandLine: TEdit;
     edtOutputFolder: TEdit;
     grpbxAdditionalOptions: TGroupBox;
     lblText16: TLabel;
     lblText15: TLabel;
     lblText14: TLabel;
     lblText13: TLabel;
     lblText12: TLabel;
     lblText11: TLabel;
     lblText10: TLabel;
     lblText9: TLabel;
     lblText8: TLabel;
     lblText7: TLabel;
     lblText6: TLabel;
     lblText5: TLabel;
     lblText4: TLabel;
     lblText3: TLabel;
     lblText1: TLabel;
     lblText0: TLabel;
     lblText2: TLabel;
     lsvFileBin: TListView;
     MainMenu: TMainMenu;
     mmiAbout: TMenuItem;
     mmiSpacer0: TMenuItem;
     mmiForums: TMenuItem;
     mmiWinffWebsite: TMenuItem;
     mmiShutdownOnFinish: TMenuItem;
     mmiPauseOnFinish: TMenuItem;
     mmiDisplayCmdLine: TMenuItem;
     mmiPreferences: TMenuItem;
     mmiEdit: TMenuItem;
     mmiOptions: TMenuItem;
     mmiHelp: TMenuItem;
     mmiEditPresets: TMenuItem;
     mmiAdditionalOptions: TMenuItem;
     mmiDocumentation: TMenuItem;
     mmiQuit: TMenuItem;
     mmiFile: TMenuItem;
     pclAdditionalOptions: TPageControl;
     pclOutputSettings: TPageControl;
     pnlOutputSettings: TPanel;
     pnlFileContainer: TPanel;
     pnlMiddleSpacer: TPanel;
     pnlAdditionalSettings: TPanel;
     pnlMainSpacer: TPanel;
     pnlTopToolbar: TPanel;
     StatusBar: TStatusBar;
     tbsVideoSettings: TTabSheet;
     tbsAudioSettings: TTabSheet;
     tbsAdditionalCmdLineParams: TTabSheet;
     tbsOutputSettings: TTabSheet;
     procedure btnAdditionalOptionsClick(Sender: TObject);
     procedure FormResize(Sender: TObject);
     procedure mmiAboutClick(Sender: TObject);
     procedure mmiAdditionalOptionsClick(Sender: TObject);
     procedure mmiDisplayCmdLineClick(Sender: TObject);
     procedure mmiEditPresetsClick(Sender: TObject);
     procedure mmiPauseOnFinishClick(Sender: TObject);
     procedure mmiPreferencesClick(Sender: TObject);
     procedure mmiQuitClick(Sender: TObject);
     procedure mmiShutdownOnFinishClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  MainForm: TMainForm;

implementation

uses
   upreseteditor, uabout, upreferences;

{ TMainForm }

procedure TMainForm.mmiAdditionalOptionsClick(Sender: TObject);
begin
   pnlAdditionalSettings.Visible := not pnlAdditionalSettings.Visible;
   mmiAdditionalOptions.Checked := not mmiAdditionalOptions.Checked;
   MainForm.Repaint;
end;

procedure TMainForm.mmiDisplayCmdLineClick(Sender: TObject);
begin
   mmiDisplayCmdLine.Checked := not mmiDisplayCmdLine.Checked;
end;

procedure TMainForm.mmiEditPresetsClick(Sender: TObject);
begin
   PresetEditorDialog.ShowModal;
end;

procedure TMainForm.mmiPauseOnFinishClick(Sender: TObject);
begin
   mmiPauseOnFinish.Checked := not mmiPauseOnFinish.Checked;
end;

procedure TMainForm.mmiPreferencesClick(Sender: TObject);
begin
   PreferencesDialog.ShowModal;
end;

procedure TMainForm.mmiQuitClick(Sender: TObject);
begin
   Close;
end;

procedure TMainForm.mmiShutdownOnFinishClick(Sender: TObject);
begin
   mmiShutdownOnFinish.Checked := not mmiShutdownOnFinish.Checked;
end;

procedure TMainForm.FormResize(Sender: TObject);
begin
   MainForm.Repaint;
end;

procedure TMainForm.mmiAboutClick(Sender: TObject);
begin
   AboutDialog.Caption := 'About ' + MainForm.Caption;
   AboutDialog.ShowModal;
end;

procedure TMainForm.btnAdditionalOptionsClick(Sender: TObject);
begin
   mmiAdditionalOptions.Click;
end;

initialization
  {$I umain.lrs}

end.

