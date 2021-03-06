program Concepts;

{$I Concepts.inc}

uses
  Vcl.Themes,
  Vcl.Styles,
  Vcl.Forms,
  DDuce.Logger,
  DDuce.Logger.Channels.WinIPC,
  Concepts.BTMemoryModule.Form in 'Forms\Concepts.BTMemoryModule.Form.pas' {frmBTMemoryModule},
  Concepts.ChromeTabs.Form in 'Forms\Concepts.ChromeTabs.Form.pas' {frmChromeTabs},
  Concepts.DSharp.TreeViewPresenter.Tree.Form in 'Forms\Concepts.DSharp.TreeViewPresenter.Tree.Form.pas' {frmTreeViewPresenterTree},
  Concepts.Factories in 'Concepts.Factories.pas',
  Concepts.MainForm in 'Concepts.MainForm.pas' {frmMain},
  Concepts.Manager in 'Concepts.Manager.pas',
  Concepts.Registration in 'Concepts.Registration.pas',
  Concepts.Resources in 'Concepts.Resources.pas' {dmResources: TDataModule},
  Concepts.RTTEye.Form in 'Forms\Concepts.RTTEye.Form.pas' {frmRTTEye},
  Concepts.RTTEye.Templates in 'Types\Concepts.RTTEye.Templates.pas',
  Concepts.Spring.Collections.Form in 'Forms\Concepts.Spring.Collections.Form.pas' {frmCollections},
  Concepts.Spring.Interception.Form in 'Forms\Concepts.Spring.Interception.Form.pas' {frmSpringInterception},
  Concepts.Spring.LazyInstantiation.Form in 'Forms\Concepts.Spring.LazyInstantiation.Form.pas' {frmLazyInstantiation},
  Concepts.Spring.Logging.Form in 'Forms\Concepts.Spring.Logging.Form.pas' {frmSpringLogging},
  Concepts.Spring.MultiCastEvents.ChildForm in 'Forms\Concepts.Spring.MultiCastEvents.ChildForm.pas' {frmMulticastEventsChild},
  Concepts.Spring.MultiCastEvents.Data in 'Forms\Concepts.Spring.MultiCastEvents.Data.pas',
  Concepts.Spring.MultiCastEvents.Form in 'Forms\Concepts.Spring.MultiCastEvents.Form.pas' {frmMulticastEvents},
  Concepts.Spring.ObjectDataSet.Form in 'Forms\Concepts.Spring.ObjectDataSet.Form.pas' {frmObjectDataSet},
  Concepts.Spring.Types.Form in 'Forms\Concepts.Spring.Types.Form.pas' {frmSpringTypes},
  Concepts.Spring.Utils.Form in 'Forms\Concepts.Spring.Utils.Form.pas' {frmSpringUtils},
  Concepts.System.AnonymousMethods.Form in 'Forms\Concepts.System.AnonymousMethods.Form.pas' {frmAnonymousMethods},
  Concepts.System.InterfaceImplementationByAggregation.Form in 'Forms\Concepts.System.InterfaceImplementationByAggregation.Form.pas' {frmIterFaceImplementationByAggregation},
  Concepts.System.Libraries.Form in 'Forms\Concepts.System.Libraries.Form.pas' {frmLibraries},
  Concepts.System.LiveBindings.Form in 'Forms\Concepts.System.LiveBindings.Form.pas' {frmLiveBindings},
  Concepts.System.RegularExpressions.Form in 'Forms\Concepts.System.RegularExpressions.Form.pas' {frmRegularExpressions},
  Concepts.System.RTTI.Form in 'Forms\Concepts.System.RTTI.Form.pas' {frmRTTI},
  Concepts.System.Threading.Form in 'Forms\Concepts.System.Threading.Form.pas' {frmThreading},
  Concepts.System.Threads.Form in 'Forms\Concepts.System.Threads.Form.pas' {frmThreads},
  Concepts.System.Variants.Form in 'Forms\Concepts.System.Variants.Form.pas' {frmVariants},
  Concepts.System.VirtualInterface.Form in 'Forms\Concepts.System.VirtualInterface.Form.pas' {frmVirtualInterfaceDemo},
  Concepts.System.VirtualMethodInterceptor.Form in 'Forms\Concepts.System.VirtualMethodInterceptor.Form.pas' {frmVirtualMethodInterceptor},
  Concepts.Types.Contact in 'Types\Concepts.Types.Contact.pas',
  Concepts.Utils in 'Concepts.Utils.pas',
  Concepts.Vcl.GridPanel.Form in 'Forms\Concepts.Vcl.GridPanel.Form.pas' {frmGridPanel},
  Concepts.Indy.TCP.Form in 'Forms\Concepts.Indy.TCP.Form.pas' {frmIndyTCP},
  Concepts.Vcl.RelativePanel.Form in 'Forms\Concepts.Vcl.RelativePanel.Form.pas' {frmRelativePanel},
  Concepts.WinApi.LockPaint.Form in 'Forms\Concepts.WinApi.LockPaint.Form.pas' {frmLockPaint},
  Concepts.SQLBuilder4D.Form in 'Forms\Concepts.SQLBuilder4D.Form.pas' {frmSQLBuilder4D},
  Concepts.RTTEye.Data in 'Types\Concepts.RTTEye.Data.pas',
  Concepts.DSharp.TreeViewPresenter.List.Form in 'Forms\Concepts.DSharp.TreeViewPresenter.List.Form.pas' {frmTreeViewPresenterList},
  Concepts.BCEditor.Form in 'Forms\Concepts.BCEditor.Form.pas' {frmBCEditor},
  Concepts.RTTEye.RttiTemplates in 'Types\Concepts.RTTEye.RttiTemplates.pas',
  Concepts.ZeroMQ.Form in 'Forms\Concepts.ZeroMQ.Form.pas',
  Concepts.Spring.ClassProxy.Form in 'Forms\Concepts.Spring.ClassProxy.Form.pas' {frmClassProxy},
  Concepts.DDetours.Form in 'Forms\Concepts.DDetours.Form.pas' {frmDDetours},
  Concepts.zObjectInspector.Form in 'Forms\Concepts.zObjectInspector.Form.pas' {frmzObjectInspector},
  Concepts.Spring.Persistence.Form in 'Forms\Concepts.Spring.Persistence.Form.pas' {frmSpringPersistence},
  Concepts.Synapse.Serial.Form in 'Forms\Concepts.Synapse.Serial.Form.pas' {frmSynapseSerial},
  Concepts.ZeroMQ.Data in 'Forms\Concepts.ZeroMQ.Data.pas',
  Concepts.Settings in 'Concepts.Settings.pas',
  Concepts.FMXContainer.Form in 'Forms\Concepts.FMXContainer.Form.pas' {frmFMXContainer},
  Concepts.FireMonkey.Form in 'Forms\Concepts.FireMonkey.Form.pas' {FireMonkeyForm},
  Concepts.System.StringList.Form in 'Forms\Concepts.System.StringList.Form.pas' {frmStringList},
  Concepts.zObjectInspector.ValueManager in 'Forms\Concepts.zObjectInspector.ValueManager.pas',
  ORM.Chinook.Album in 'ORM\ORM.Chinook.Album.pas',
  ORM.Chinook.Artist in 'ORM\ORM.Chinook.Artist.pas',
  ORM.Chinook.Customer in 'ORM\ORM.Chinook.Customer.pas',
  ORM.Chinook.Employee in 'ORM\ORM.Chinook.Employee.pas',
  ORM.Chinook.Genre in 'ORM\ORM.Chinook.Genre.pas',
  ORM.Chinook.Invoice in 'ORM\ORM.Chinook.Invoice.pas',
  ORM.Chinook.InvoiceLine in 'ORM\ORM.Chinook.InvoiceLine.pas',
  ORM.Chinook.MediaType in 'ORM\ORM.Chinook.MediaType.pas',
  ORM.Chinook.Playlist in 'ORM\ORM.Chinook.Playlist.pas',
  ORM.Chinook.PlaylistTrack in 'ORM\ORM.Chinook.PlaylistTrack.pas',
  ORM.Chinook.Track in 'ORM\ORM.Chinook.Track.pas',
  Concepts.zObjectInspector.StringsDialog.Form in 'Forms\Concepts.zObjectInspector.StringsDialog.Form.pas' {frmStringsDialog},
  Concepts.SynEdit.Form in 'Forms\Concepts.SynEdit.Form.pas' {frmSynEdit},
  Concepts.DevExpress.cxEditors.Form in 'Forms\Concepts.DevExpress.cxEditors.Form.pas' {frmcxEditors},
  Concepts.DevExpress.cxGridViewPresenter.Form in 'Forms\Concepts.DevExpress.cxGridViewPresenter.Form.pas' {frmcxGridViewPresenter},
  Concepts.VirtualTreeView.Form in 'Forms\Concepts.VirtualTreeView.Form.pas' {frmVirtualTreeView},
  Concepts.FireDAC.Form in 'Forms\Concepts.FireDAC.Form.pas' {frmFireDAC},
  Concepts.System.PublishedFields.Form in 'Forms\Concepts.System.PublishedFields.Form.pas' {frmPublishedFields};

{$R *.res}

{ Used to directly start a concept by name. If empty a list will be shown with
  all registered concepts. }
const
  EXECUTE_BY_NAME = '';
  //EXECUTE_BY_NAME = 'ZeroMQ';
//  EXECUTE_BY_NAME = 'FireDAC';
  //EXECUTE_BY_NAME = 'ORM';
  //EXECUTE_BY_NAME = 'TStringList';
  //EXECUTE_BY_NAME = 'Indy';
  //EXECUTE_BY_NAME = 'Parallel Library';

begin
  {$WARNINGS OFF}
  ReportMemoryLeaksOnShutdown := DebugHook > 0;
  {$WARNINGS ON}
  Application.Initialize;
  TConcepts.RegisterConcepts;
  Logger.Channels.Add(TWinIPCChannel.Create);
  Application.CreateForm(TdmResources, dmResources);
  if not ConceptManager.Execute(EXECUTE_BY_NAME) then
  begin
    if ConceptManager.ItemList.Count = 1 then
    begin
      ConceptManager.Execute(ConceptManager.ItemList.Single);
    end
    else
    begin
      Application.Title := 'Concepts';
      Application.CreateForm(TfrmMain, frmMain);
    end;
  end;
  Application.Run;
end.


