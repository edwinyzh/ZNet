{ ****************************************************************************** }
{ * Generic hash Library                                                       * }
{ ****************************************************************************** }
unit Z.GHashList;

{$I Z.Define.inc}

interface

uses
{$IFDEF FPC}
  Z.FPC.GenericList,
{$ENDIF FPC}
  Z.Core,
  Z.Status, Z.PascalStrings, Z.UPascalStrings, Z.UnicodeMixedLib, Z.ListEngine;

function IsEqual__(const Val1, Val2, Epsilon_: Single): Boolean; overload;
function IsEqual__(const Val1, Val2, Epsilon_: Double): Boolean; overload;

type
{$IFDEF FPC}
  generic TString_Big_Hash_Pair_Pool<T_> = class(specialize TBig_Hash_Pair_Pool<SystemString, T_>)
{$ELSE FPC}
  TString_Big_Hash_Pair_Pool<T_> = class(TBig_Hash_Pair_Pool<SystemString, T_>)
{$ENDIF FPC}
  public
    function Get_Key_Hash(Key_: SystemString): THash; override;
    function Compare_Key(Key_1, Key_2: SystemString): Boolean; override;
  end;

{$IFDEF FPC}
  generic TSingle_Big_Hash_Pair_Pool<T_> = class(specialize TBig_Hash_Pair_Pool<Single, T_>)
{$ELSE FPC}
  TSingle_Big_Hash_Pair_Pool<T_> = class(TBig_Hash_Pair_Pool<Single, T_>)
{$ENDIF FPC}
  public
    Epsilon: Single;
    constructor Create(HashSize_: integer; Null_Value_: T_; Epsilon_: Single);
    function Get_Key_Hash(Key_: Single): THash; override;
    function Compare_Key(Key_1, Key_2: Single): Boolean; override;
  end;

{$IFDEF FPC}
  generic TDouble_Big_Hash_Pair_Pool<T_> = class(specialize TBig_Hash_Pair_Pool<Double, T_>)
{$ELSE FPC}
  TDouble_Big_Hash_Pair_Pool<T_> = class(TBig_Hash_Pair_Pool<Double, T_>)
{$ENDIF FPC}
  public
    Epsilon: Double;
    constructor Create(HashSize_: integer; Null_Value_: T_; Epsilon_: Double);
    function Get_Key_Hash(Key_: Double): THash; override;
    function Compare_Key(Key_1, Key_2: Double): Boolean; override;
  end;

{$IFDEF FPC}
  generic TMD5_Big_Hash_Pair_Pool<T_> = class(specialize TBig_Hash_Pair_Pool<TMD5, T_>)
{$ELSE FPC}
  TMD5_Big_Hash_Pair_Pool<T_> = class(TBig_Hash_Pair_Pool<TMD5, T_>)
{$ENDIF FPC}
  end;

{$IFDEF FPC}
  generic TPointer_Big_Hash_Pair_Pool<T_> = class(specialize TBig_Hash_Pair_Pool<Pointer, T_>)
{$ELSE FPC}
  TPointer_Big_Hash_Pair_Pool<T_> = class(TBig_Hash_Pair_Pool<Pointer, T_>)
{$ENDIF FPC}
  end;

{$IFDEF FPC}
  generic TInt32_Big_Hash_Pair_Pool<T_> = class(specialize TBig_Hash_Pair_Pool<Integer, T_>)
{$ELSE FPC}
  TInt32_Big_Hash_Pair_Pool<T_> = class(TBig_Hash_Pair_Pool<integer, T_>)
{$ENDIF FPC}
  end;

{$IFDEF FPC}
  generic TInt64_Big_Hash_Pair_Pool<T_> = class(specialize TBig_Hash_Pair_Pool<Int64, T_>)
{$ELSE FPC}
  TInt64_Big_Hash_Pair_Pool<T_> = class(TBig_Hash_Pair_Pool<Int64, T_>)
{$ENDIF FPC}
  end;

{$IFDEF FPC}
  generic TUInt32_Big_Hash_Pair_Pool<T_> = class(specialize TBig_Hash_Pair_Pool<Cardinal, T_>)
{$ELSE FPC}
  TUInt32_Big_Hash_Pair_Pool<T_> = class(TBig_Hash_Pair_Pool<Cardinal, T_>)
{$ENDIF FPC}
  end;

{$IFDEF FPC}
  generic TUInt64_Big_Hash_Pair_Pool<T_> = class(specialize TBig_Hash_Pair_Pool<UInt64, T_>)
{$ELSE FPC}
  TUInt64_Big_Hash_Pair_Pool<T_> = class(TBig_Hash_Pair_Pool<UInt64, T_>)
{$ENDIF FPC}
  end;

// **********************************************************************************************************

{$IFDEF FPC}
  generic TString_Critical_Big_Hash_Pair_Pool<T_> = class(specialize TCritical_Big_Hash_Pair_Pool<SystemString, T_>)
{$ELSE FPC}
  TString_Critical_Big_Hash_Pair_Pool<T_> = class(TCritical_Big_Hash_Pair_Pool<SystemString, T_>)
{$ENDIF FPC}
  public
    function Get_Key_Hash(Key_: SystemString): THash; override;
    function Compare_Key(Key_1, Key_2: SystemString): Boolean; override;
  end;

{$IFDEF FPC}
  generic TSingle_Critical_Big_Hash_Pair_Pool<T_> = class(specialize TCritical_Big_Hash_Pair_Pool<Single, T_>)
{$ELSE FPC}
  TSingle_Critical_Big_Hash_Pair_Pool<T_> = class(TCritical_Big_Hash_Pair_Pool<Single, T_>)
{$ENDIF FPC}
  public
    Epsilon: Single;
    constructor Create(HashSize_: integer; Null_Value_: T_; Epsilon_: Single);
    function Get_Key_Hash(Key_: Single): THash; override;
    function Compare_Key(Key_1, Key_2: Single): Boolean; override;
  end;

{$IFDEF FPC}
  generic TDouble_Critical_Big_Hash_Pair_Pool<T_> = class(specialize TCritical_Big_Hash_Pair_Pool<Double, T_>)
{$ELSE FPC}
  TDouble_Critical_Big_Hash_Pair_Pool<T_> = class(TCritical_Big_Hash_Pair_Pool<Double, T_>)
{$ENDIF FPC}
  public
    Epsilon: Double;
    constructor Create(HashSize_: integer; Null_Value_: T_; Epsilon_: Double);
    function Get_Key_Hash(Key_: Double): THash; override;
    function Compare_Key(Key_1, Key_2: Double): Boolean; override;
  end;

{$IFDEF FPC}
  generic TMD5_Critical_Big_Hash_Pair_Pool<T_> = class(specialize TCritical_Big_Hash_Pair_Pool<TMD5, T_>)
{$ELSE FPC}
  TMD5_Critical_Big_Hash_Pair_Pool<T_> = class(TCritical_Big_Hash_Pair_Pool<TMD5, T_>)
{$ENDIF FPC}
  end;

{$IFDEF FPC}
  generic TPointer_Critical_Big_Hash_Pair_Pool<T_> = class(specialize TCritical_Big_Hash_Pair_Pool<Pointer, T_>)
{$ELSE FPC}
  TPointer_Critical_Big_Hash_Pair_Pool<T_> = class(TCritical_Big_Hash_Pair_Pool<Pointer, T_>)
{$ENDIF FPC}
  end;

{$IFDEF FPC}
  generic TInt32_Critical_Big_Hash_Pair_Pool<T_> = class(specialize TCritical_Big_Hash_Pair_Pool<Integer, T_>)
{$ELSE FPC}
  TInt32_Critical_Big_Hash_Pair_Pool<T_> = class(TCritical_Big_Hash_Pair_Pool<integer, T_>)
{$ENDIF FPC}
  end;

{$IFDEF FPC}
  generic TInt64_Critical_Big_Hash_Pair_Pool<T_> = class(specialize TCritical_Big_Hash_Pair_Pool<Int64, T_>)
{$ELSE FPC}
  TInt64_Critical_Big_Hash_Pair_Pool<T_> = class(TCritical_Big_Hash_Pair_Pool<Int64, T_>)
{$ENDIF FPC}
  end;

{$IFDEF FPC}
  generic TUInt32_Critical_Big_Hash_Pair_Pool<T_> = class(specialize TCritical_Big_Hash_Pair_Pool<Cardinal, T_>)
{$ELSE FPC}
  TUInt32_Critical_Big_Hash_Pair_Pool<T_> = class(TCritical_Big_Hash_Pair_Pool<Cardinal, T_>)
{$ENDIF FPC}
  end;

{$IFDEF FPC}
  generic TUInt64_Critical_Big_Hash_Pair_Pool<T_> = class(specialize TCritical_Big_Hash_Pair_Pool<UInt64, T_>)
{$ELSE FPC}
  TUInt64_Critical_Big_Hash_Pair_Pool<T_> = class(TCritical_Big_Hash_Pair_Pool<UInt64, T_>)
{$ENDIF FPC}
  end;

// **********************************************************************************************************

{$IFDEF FPC}
  generic TGeneric_String_Object_Hash<T_: TCore_Object> = class(TCore_Object)
{$ELSE FPC}
  TGeneric_String_Object_Hash<T_: class> = class(TCore_Object)
{$ENDIF FPC}
  public type
    TRefClass_ = {$IFDEF FPC}specialize {$ENDIF FPC}TGeneric_String_Object_Hash<T_>;
    TGebnericHashChangeEvent = procedure(Sender: TCore_Object; Name: SystemString; OLD_, New_: T_) of object;
    PGebnericHashListData = ^TGebnericHashListData;

    TGebnericHashListData = record
      Obj: T_;
      OnChnage: TGebnericHashChangeEvent;
    end;

    TGebnericHashListLoop_C = procedure(const Name_: PSystemString; Obj_: T_);
    TGebnericHashListLoop_M = procedure(const Name_: PSystemString; Obj_: T_) of object;
{$IFDEF FPC}
    TGebnericHashListLoop_P = procedure(const Name_: PSystemString; Obj_: T_) is nested;
{$ELSE FPC}
    TGebnericHashListLoop_P = reference to procedure(const Name_: PSystemString; Obj_: T_);
{$ENDIF FPC}
    TOnFree = procedure(var Obj_: T_) of object;
  private
    FAutoFreeObject: Boolean;
    FHashList: THashList;
    FIncremental: NativeInt;
    Default_Null_Value: T_;

    function GetCount: NativeInt;

    function GetIgnoreCase: Boolean;
    procedure SetIgnoreCase(const Value: Boolean);

    function GetKeyValue(const Name: SystemString): T_;
    procedure SetKeyValue(const Name: SystemString; const Value: T_);

    function GetOnChange(const Name: SystemString): TGebnericHashChangeEvent;
    procedure SetOnChange(const Name: SystemString; const AValue: TGebnericHashChangeEvent);

    function GetAccessOptimization: Boolean;
    procedure SetAccessOptimization(const Value: Boolean);

    procedure Do_HashList_DataFree(p: Pointer);
    procedure Do_Free_Obj(var Obj_: T_);
  protected
  public
    OnFree: TOnFree;
    procedure DoInited; virtual;
    constructor Create(AutoFreeData_: Boolean; HashPoolSize_: integer; Default_Null_Value_: T_);
    destructor Destroy; override;

    procedure Assign(sour: TRefClass_);

    procedure ProgressC(const OnProgress: TGebnericHashListLoop_C);
    procedure ProgressM(const OnProgress: TGebnericHashListLoop_M);
    procedure ProgressP(const OnProgress: TGebnericHashListLoop_P);

    procedure Clear;
    procedure GetNameList(OutputList: TCore_Strings); overload;
    procedure GetNameList(OutputList: TListString); overload;
    procedure GetNameList(OutputList: TListPascalString); overload;
    procedure GetListData(OutputList: TCore_Strings); overload;
    procedure GetListData(OutputList: TListString); overload;
    procedure GetListData(OutputList: TListPascalString); overload;
    procedure GetAsList(OutputList: TCore_ListForObj);
    function GetObjAsName(Obj: T_): SystemString;
    procedure Delete(const Name: SystemString);
    function Add(const Name: SystemString; Obj_: T_): T_;
    function FastAdd(const Name: SystemString; Obj_: T_): T_;
    function Find(const Name: SystemString): T_;
    function Exists(const Name: SystemString): Boolean;
    function ExistsObject(Obj: T_): Boolean;
    procedure CopyFrom(const Source: TRefClass_);
    function ReName(OLD_, New_: SystemString): Boolean;
    function MakeName: SystemString;
    function MakeRefName(RefrenceName: SystemString): SystemString;

    property AccessOptimization: Boolean read GetAccessOptimization write SetAccessOptimization;
    property IgnoreCase: Boolean read GetIgnoreCase write SetIgnoreCase;
    property AutoFreeObject: Boolean read FAutoFreeObject write FAutoFreeObject;
    property Count: NativeInt read GetCount;

    property KeyValue[const Name: SystemString]: T_ read GetKeyValue write SetKeyValue; default;
    property NameValue[const Name: SystemString]: T_ read GetKeyValue write SetKeyValue;
    property OnChange[const Name: SystemString]: TGebnericHashChangeEvent read GetOnChange write SetOnChange;
    property HashList: THashList read FHashList;
  end;

procedure Test_Generic_String_Object_Hash;
procedure Test_Single_Big_Hash_Pair_Pool();

implementation

uses SysUtils;

function IsEqual__(const Val1, Val2, Epsilon_: Single): boolean;
var
  Diff: single;
begin
  Diff := Val1 - Val2;
  Result := ((-Epsilon_ <= Diff) and (Diff <= Epsilon_));
end;

function IsEqual__(const Val1, Val2, Epsilon_: Double): boolean;
var
  Diff: single;
begin
  Diff := Val1 - Val2;
  Result := ((-Epsilon_ <= Diff) and (Diff <= Epsilon_));
end;

function TString_Big_Hash_Pair_Pool{$IFNDEF FPC}<T_>{$ENDIF FPC}.Get_Key_Hash(Key_: SystemString): THash;
begin
  Result := FastHashPSystemString(@Key_);
  Result := Get_CRC32(@Result, SizeOf(THash));
end;

function TString_Big_Hash_Pair_Pool{$IFNDEF FPC}<T_>{$ENDIF FPC}.Compare_Key(Key_1, Key_2: SystemString): Boolean;
begin
  Result := SameText(Key_1, Key_2);
end;

constructor TSingle_Big_Hash_Pair_Pool{$IFNDEF FPC}<T_>{$ENDIF FPC}.Create(HashSize_: integer; Null_Value_: T_; Epsilon_: Single);
begin
  inherited Create(HashSize_, Null_Value_);
  Epsilon := Epsilon_;
end;

function TSingle_Big_Hash_Pair_Pool{$IFNDEF FPC}<T_>{$ENDIF FPC}.Get_Key_Hash(Key_: Single): THash;
var
  tmp: Int64;
begin
  tmp := Round(Key_ * (1.0 / Epsilon));
  Result := Get_CRC32(@tmp, 8);
end;

function TSingle_Big_Hash_Pair_Pool{$IFNDEF FPC}<T_>{$ENDIF FPC}.Compare_Key(Key_1, Key_2: Single): Boolean;
begin
  Result := IsEqual__(Key_1, Key_2, Epsilon);
end;

constructor TDouble_Big_Hash_Pair_Pool{$IFNDEF FPC}<T_>{$ENDIF FPC}.Create(HashSize_: integer; Null_Value_: T_; Epsilon_: Double);
begin
  inherited Create(HashSize_, Null_Value_);
  Epsilon := Epsilon_;
end;

function TDouble_Big_Hash_Pair_Pool{$IFNDEF FPC}<T_>{$ENDIF FPC}.Get_Key_Hash(Key_: Double): THash;
var
  tmp: Int64;
begin
  tmp := Round(Key_ * (1.0 / Epsilon));
  Result := Get_CRC32(@tmp, 8);
end;

function TDouble_Big_Hash_Pair_Pool{$IFNDEF FPC}<T_>{$ENDIF FPC}.Compare_Key(Key_1, Key_2: Double): Boolean;
begin
  Result := IsEqual__(Key_1, Key_2, Epsilon);
end;

// **********************************************************************************************************

function TString_Critical_Big_Hash_Pair_Pool{$IFNDEF FPC}<T_>{$ENDIF FPC}.Get_Key_Hash(Key_: SystemString): THash;
begin
  Result := FastHashPSystemString(@Key_);
  Result := Get_CRC32(@Result, SizeOf(THash));
end;

function TString_Critical_Big_Hash_Pair_Pool{$IFNDEF FPC}<T_>{$ENDIF FPC}.Compare_Key(Key_1, Key_2: SystemString): Boolean;
begin
  Result := SameText(Key_1, Key_2);
end;

constructor TSingle_Critical_Big_Hash_Pair_Pool{$IFNDEF FPC}<T_>{$ENDIF FPC}.Create(HashSize_: integer; Null_Value_: T_; Epsilon_: Single);
begin
  inherited Create(HashSize_, Null_Value_);
  Epsilon := Epsilon_;
end;

function TSingle_Critical_Big_Hash_Pair_Pool{$IFNDEF FPC}<T_>{$ENDIF FPC}.Get_Key_Hash(Key_: Single): THash;
var
  tmp: Int64;
begin
  tmp := Round(Key_ * (1.0 / Epsilon));
  Result := Get_CRC32(@tmp, 8);
end;

function TSingle_Critical_Big_Hash_Pair_Pool{$IFNDEF FPC}<T_>{$ENDIF FPC}.Compare_Key(Key_1, Key_2: Single): Boolean;
begin
  Result := IsEqual__(Key_1, Key_2, Epsilon);
end;

constructor TDouble_Critical_Big_Hash_Pair_Pool{$IFNDEF FPC}<T_>{$ENDIF FPC}.Create(HashSize_: integer; Null_Value_: T_; Epsilon_: Double);
begin
  inherited Create(HashSize_, Null_Value_);
  Epsilon := Epsilon_;
end;

function TDouble_Critical_Big_Hash_Pair_Pool{$IFNDEF FPC}<T_>{$ENDIF FPC}.Get_Key_Hash(Key_: Double): THash;
var
  tmp: Int64;
begin
  tmp := Round(Key_ * (1.0 / Epsilon));
  Result := Get_CRC32(@tmp, 8);
end;

function TDouble_Critical_Big_Hash_Pair_Pool{$IFNDEF FPC}<T_>{$ENDIF FPC}.Compare_Key(Key_1, Key_2: Double): Boolean;
begin
  Result := IsEqual__(Key_1, Key_2, Epsilon);
end;

// **********************************************************************************************************

function TGeneric_String_Object_Hash{$IFNDEF FPC}<T_>{$ENDIF FPC}.GetCount: NativeInt;
begin
  Result := FHashList.Count;
end;

function TGeneric_String_Object_Hash{$IFNDEF FPC}<T_>{$ENDIF FPC}.GetIgnoreCase: Boolean;
begin
  Result := FHashList.IgnoreCase;
end;

procedure TGeneric_String_Object_Hash{$IFNDEF FPC}<T_>{$ENDIF FPC}.SetIgnoreCase(const Value: Boolean);
begin
  FHashList.IgnoreCase := Value;
end;

function TGeneric_String_Object_Hash{$IFNDEF FPC}<T_>{$ENDIF FPC}.GetKeyValue(const Name: SystemString): T_;
var
  pObjData: PGebnericHashListData;
begin
  pObjData := FHashList.NameValue[Name];
  if pObjData <> nil then
      Result := pObjData^.Obj as T_
  else
      Result := Default_Null_Value;
end;

procedure TGeneric_String_Object_Hash{$IFNDEF FPC}<T_>{$ENDIF FPC}.SetKeyValue(const Name: SystemString; const Value: T_);
begin
  Add(Name, Value);
end;

function TGeneric_String_Object_Hash{$IFNDEF FPC}<T_>{$ENDIF FPC}.GetOnChange(const Name: SystemString): TGebnericHashChangeEvent;
var
  pObjData: PGebnericHashListData;
begin
  pObjData := FHashList.NameValue[Name];
  if pObjData <> nil then
      Result := pObjData^.OnChnage
  else
      Result := nil;
end;

procedure TGeneric_String_Object_Hash{$IFNDEF FPC}<T_>{$ENDIF FPC}.SetOnChange(const Name: SystemString; const AValue: TGebnericHashChangeEvent);
var
  pObjData: PGebnericHashListData;
begin
  pObjData := FHashList.NameValue[Name];
  if pObjData = nil then
    begin
      new(pObjData);
      pObjData^.OnChnage := AValue;
      pObjData^.Obj := Default_Null_Value;
      FHashList.Add(Name, pObjData, False);
    end
  else
      pObjData^.OnChnage := AValue;
end;

function TGeneric_String_Object_Hash{$IFNDEF FPC}<T_>{$ENDIF FPC}.GetAccessOptimization: Boolean;
begin
  Result := FHashList.AccessOptimization;
end;

procedure TGeneric_String_Object_Hash{$IFNDEF FPC}<T_>{$ENDIF FPC}.SetAccessOptimization(const Value: Boolean);
begin
  FHashList.AccessOptimization := Value;
end;

procedure TGeneric_String_Object_Hash{$IFNDEF FPC}<T_>{$ENDIF FPC}.Do_HashList_DataFree(p: Pointer);
begin
  Dispose(PGebnericHashListData(p));
end;

procedure TGeneric_String_Object_Hash{$IFNDEF FPC}<T_>{$ENDIF FPC}.Do_Free_Obj(var Obj_: T_);
begin
  if Assigned(OnFree) then
      OnFree(Obj_);
  DisposeObject(Obj_);
end;

procedure TGeneric_String_Object_Hash{$IFNDEF FPC}<T_>{$ENDIF FPC}.DoInited;
begin
end;

constructor TGeneric_String_Object_Hash{$IFNDEF FPC}<T_>{$ENDIF FPC}.Create(AutoFreeData_: Boolean; HashPoolSize_: integer; Default_Null_Value_: T_);
begin
  inherited Create;
  FHashList := THashList.CustomCreate(HashPoolSize_);
  FHashList.AutoFreeData := True;
  FHashList.OnFreePtr := {$IFDEF FPC}@{$ENDIF FPC}Do_HashList_DataFree;
  FAutoFreeObject := AutoFreeData_;
  FIncremental := 0;
  Default_Null_Value := Default_Null_Value_;
  OnFree := nil;
  DoInited();
end;

destructor TGeneric_String_Object_Hash{$IFNDEF FPC}<T_>{$ENDIF FPC}.Destroy;
begin
  Clear;
  DisposeObject(FHashList);
  inherited Destroy;
end;

procedure TGeneric_String_Object_Hash{$IFNDEF FPC}<T_>{$ENDIF FPC}.Assign(sour: TRefClass_);
var
  i: integer;
  p: PHashListData;
begin
  Clear;
  if sour.HashList.Count > 0 then
    begin
      i := 0;
      p := sour.HashList.FirstPtr;
      while i < sour.HashList.Count do
        begin
          FastAdd(p^.OriginName, PGebnericHashListData(p^.Data)^.Obj);
          inc(i);
          p := p^.Next;
        end;
    end;
end;

procedure TGeneric_String_Object_Hash{$IFNDEF FPC}<T_>{$ENDIF FPC}.ProgressC(const OnProgress: TGebnericHashListLoop_C);
var
  i: integer;
  p: PHashListData;
begin
  if HashList.Count > 0 then
    begin
      i := 0;
      p := HashList.FirstPtr;
      while i < HashList.Count do
        begin
          try
              OnProgress(@p^.OriginName, PGebnericHashListData(p^.Data)^.Obj);
          except
          end;
          inc(i);
          p := p^.Next;
        end;
    end;
end;

procedure TGeneric_String_Object_Hash{$IFNDEF FPC}<T_>{$ENDIF FPC}.ProgressM(const OnProgress: TGebnericHashListLoop_M);
var
  i: integer;
  p: PHashListData;
begin
  if HashList.Count > 0 then
    begin
      i := 0;
      p := HashList.FirstPtr;
      while i < HashList.Count do
        begin
          try
              OnProgress(@p^.OriginName, PGebnericHashListData(p^.Data)^.Obj);
          except
          end;
          inc(i);
          p := p^.Next;
        end;
    end;
end;

procedure TGeneric_String_Object_Hash{$IFNDEF FPC}<T_>{$ENDIF FPC}.ProgressP(const OnProgress: TGebnericHashListLoop_P);
var
  i: integer;
  p: PHashListData;
begin
  if HashList.Count > 0 then
    begin
      i := 0;
      p := HashList.FirstPtr;
      while i < HashList.Count do
        begin
          try
              OnProgress(@p^.OriginName, PGebnericHashListData(p^.Data)^.Obj);
          except
          end;
          inc(i);
          p := p^.Next;
        end;
    end;
end;

procedure TGeneric_String_Object_Hash{$IFNDEF FPC}<T_>{$ENDIF FPC}.Clear;
var
  lst: TCore_List;
  pObjData: PGebnericHashListData;
  i: integer;
begin
  if FAutoFreeObject then
    begin
      lst := TCore_List.Create;
      FHashList.GetListData(lst);
      if lst.Count > 0 then
        for i := 0 to lst.Count - 1 do
          with PHashListData(lst[i])^ do
            begin
              pObjData := Data;
              if pObjData <> nil then
                if pObjData^.Obj <> Default_Null_Value then
                  begin
                    try
                        Do_Free_Obj(pObjData^.Obj);
                    except
                    end;
                  end;
            end;
      DisposeObject(lst);
    end;
  FHashList.Clear;
  FIncremental := 0;
end;

procedure TGeneric_String_Object_Hash{$IFNDEF FPC}<T_>{$ENDIF FPC}.GetNameList(OutputList: TCore_Strings);
var
  i: integer;
  p: PHashListData;
begin
  OutputList.Clear;
  if HashList.Count > 0 then
    begin
      i := 0;
      p := HashList.FirstPtr;
      while i < HashList.Count do
        begin
          OutputList.AddObject(p^.OriginName, PGebnericHashListData(p^.Data)^.Obj);
          inc(i);
          p := p^.Next;
        end;
    end;
end;

procedure TGeneric_String_Object_Hash{$IFNDEF FPC}<T_>{$ENDIF FPC}.GetNameList(OutputList: TListString);
var
  i: integer;
  p: PHashListData;
begin
  OutputList.Clear;
  if HashList.Count > 0 then
    begin
      i := 0;
      p := HashList.FirstPtr;
      while i < HashList.Count do
        begin
          OutputList.Add(p^.OriginName, PGebnericHashListData(p^.Data)^.Obj);
          inc(i);
          p := p^.Next;
        end;
    end;
end;

procedure TGeneric_String_Object_Hash{$IFNDEF FPC}<T_>{$ENDIF FPC}.GetNameList(OutputList: TListPascalString);
var
  i: integer;
  p: PHashListData;
begin
  OutputList.Clear;
  if HashList.Count > 0 then
    begin
      i := 0;
      p := HashList.FirstPtr;
      while i < HashList.Count do
        begin
          OutputList.Add(p^.OriginName, PGebnericHashListData(p^.Data)^.Obj);
          inc(i);
          p := p^.Next;
        end;
    end;
end;

procedure TGeneric_String_Object_Hash{$IFNDEF FPC}<T_>{$ENDIF FPC}.GetListData(OutputList: TCore_Strings);
var
  i: integer;
  p: PHashListData;
begin
  OutputList.Clear;
  if HashList.Count > 0 then
    begin
      i := 0;
      p := HashList.FirstPtr;
      while i < HashList.Count do
        begin
          OutputList.AddObject(p^.OriginName, PGebnericHashListData(p^.Data)^.Obj);
          inc(i);
          p := p^.Next;
        end;
    end;
end;

procedure TGeneric_String_Object_Hash{$IFNDEF FPC}<T_>{$ENDIF FPC}.GetListData(OutputList: TListString);
var
  i: integer;
  p: PHashListData;
begin
  OutputList.Clear;
  if HashList.Count > 0 then
    begin
      i := 0;
      p := HashList.FirstPtr;
      while i < HashList.Count do
        begin
          OutputList.Add(p^.OriginName, PGebnericHashListData(p^.Data)^.Obj);
          inc(i);
          p := p^.Next;
        end;
    end;
end;

procedure TGeneric_String_Object_Hash{$IFNDEF FPC}<T_>{$ENDIF FPC}.GetListData(OutputList: TListPascalString);
var
  i: integer;
  p: PHashListData;
begin
  OutputList.Clear;
  if HashList.Count > 0 then
    begin
      i := 0;
      p := HashList.FirstPtr;
      while i < HashList.Count do
        begin
          OutputList.Add(p^.OriginName, PGebnericHashListData(p^.Data)^.Obj);
          inc(i);
          p := p^.Next;
        end;
    end;
end;

procedure TGeneric_String_Object_Hash{$IFNDEF FPC}<T_>{$ENDIF FPC}.GetAsList(OutputList: TCore_ListForObj);
var
  i: integer;
  p: PHashListData;
begin
  OutputList.Clear;
  if HashList.Count > 0 then
    begin
      OutputList.Count := HashList.Count;
      i := 0;
      p := HashList.FirstPtr;
      while i < HashList.Count do
        begin
          OutputList[i] := PGebnericHashListData(p^.Data)^.Obj;
          inc(i);
          p := p^.Next;
        end;
    end;
end;

function TGeneric_String_Object_Hash{$IFNDEF FPC}<T_>{$ENDIF FPC}.GetObjAsName(Obj: T_): SystemString;
var
  i: integer;
  p: PHashListData;
begin
  Result := '';
  if HashList.Count > 0 then
    begin
      i := 0;
      p := HashList.FirstPtr;
      while i < HashList.Count do
        begin
          if PGebnericHashListData(p^.Data)^.Obj = Obj then
            begin
              Result := p^.OriginName;
              Exit;
            end;
          inc(i);
          p := p^.Next;
        end;
    end;
end;

procedure TGeneric_String_Object_Hash{$IFNDEF FPC}<T_>{$ENDIF FPC}.Delete(const Name: SystemString);
var
  pObjData: PGebnericHashListData;
begin
  if FAutoFreeObject then
    begin
      pObjData := FHashList.NameValue[Name];
      if pObjData <> nil then
        begin
          if pObjData^.Obj <> Default_Null_Value then
            begin
              try
                Do_Free_Obj(pObjData^.Obj);
                pObjData^.Obj := Default_Null_Value;
              except
              end;
            end;
        end;
    end;
  FHashList.Delete(Name);
end;

function TGeneric_String_Object_Hash{$IFNDEF FPC}<T_>{$ENDIF FPC}.Add(const Name: SystemString; Obj_: T_): T_;
var
  pObjData: PGebnericHashListData;
begin
  pObjData := FHashList.NameValue[Name];
  if pObjData <> nil then
    begin
      try
        if Assigned(pObjData^.OnChnage) then
            pObjData^.OnChnage(Self, Name, pObjData^.Obj, Obj_);
      except
      end;

      if (FAutoFreeObject) and (pObjData^.Obj <> Default_Null_Value) then
        begin
          try
            Do_Free_Obj(pObjData^.Obj);
            pObjData^.Obj := Default_Null_Value;
          except
          end;
        end;
    end
  else
    begin
      new(pObjData);
      pObjData^.OnChnage := nil;
      FHashList.Add(Name, pObjData, False);
    end;

  pObjData^.Obj := Obj_;
  Result := Obj_;
end;

function TGeneric_String_Object_Hash{$IFNDEF FPC}<T_>{$ENDIF FPC}.FastAdd(const Name: SystemString; Obj_: T_): T_;
var
  pObjData: PGebnericHashListData;
begin
  new(pObjData);
  pObjData^.OnChnage := nil;
  FHashList.Add(Name, pObjData, False);

  pObjData^.Obj := Obj_;
  Result := Obj_;
end;

function TGeneric_String_Object_Hash{$IFNDEF FPC}<T_>{$ENDIF FPC}.Find(const Name: SystemString): T_;
var
  pObjData: PGebnericHashListData;
begin
  pObjData := FHashList.Find(Name);
  if pObjData <> nil then
      Result := pObjData^.Obj
  else
      Result := Default_Null_Value;
end;

function TGeneric_String_Object_Hash{$IFNDEF FPC}<T_>{$ENDIF FPC}.Exists(const Name: SystemString): Boolean;
begin
  Result := FHashList.Exists(Name);
end;

function TGeneric_String_Object_Hash{$IFNDEF FPC}<T_>{$ENDIF FPC}.ExistsObject(Obj: T_): Boolean;
var
  lst: TCore_List;
  i: integer;
begin
  Result := False;
  lst := TCore_List.Create;
  FHashList.GetListData(lst);
  if lst.Count > 0 then
    for i := 0 to lst.Count - 1 do
      begin
        with PHashListData(lst[i])^ do
          begin
            if PGebnericHashListData(Data)^.Obj = Obj then
              begin
                Result := True;
                Break;
              end;
          end;
      end;
  DisposeObject(lst);
end;

procedure TGeneric_String_Object_Hash{$IFNDEF FPC}<T_>{$ENDIF FPC}.CopyFrom(const Source: TRefClass_);
var
  lst: TCore_List;
  pObjData: PGebnericHashListData;
  i: integer;
begin
  lst := TCore_List.Create;
  Source.HashList.GetListData(lst);
  if lst.Count > 0 then
    for i := 0 to lst.Count - 1 do
      begin
        with PHashListData(lst[i])^ do
          if Data <> nil then
            begin
              pObjData := Data;
              NameValue[OriginName] := pObjData^.Obj;
            end;
      end;
  DisposeObject(lst);
end;

function TGeneric_String_Object_Hash{$IFNDEF FPC}<T_>{$ENDIF FPC}.ReName(OLD_, New_: SystemString): Boolean;
var
  pObjData: PGebnericHashListData;
begin
  pObjData := FHashList.NameValue[OLD_];
  Result := (OLD_ <> New_) and (pObjData <> nil) and (FHashList.NameValue[New_] = nil);
  if Result then
    begin
      Add(New_, pObjData^.Obj);
      FHashList.Delete(OLD_);
    end;
end;

function TGeneric_String_Object_Hash{$IFNDEF FPC}<T_>{$ENDIF FPC}.MakeName: SystemString;
begin
  repeat
    inc(FIncremental);
    Result := umlIntToStr(FIncremental);
  until not Exists(Result);
end;

function TGeneric_String_Object_Hash{$IFNDEF FPC}<T_>{$ENDIF FPC}.MakeRefName(RefrenceName: SystemString): SystemString;
begin
  Result := RefrenceName;
  if not Exists(Result) then
      Exit;

  repeat
    inc(FIncremental);
    Result := RefrenceName + umlIntToStr(FIncremental);
  until not Exists(Result);
end;

procedure Test_Generic_String_Object_Hash;
type
  TSL = {$IFDEF FPC}specialize {$ENDIF FPC}TGeneric_String_Object_Hash<TCore_StringList>;
var
  L: TSL;
begin
  L := TSL.Create(True, 100, nil);
  L.Add('abc', TCore_StringList.Create).Text := '1'#10'2'#10'3';
  L.Add('abc1', TCore_StringList.Create).Text := '11'#10'222'#10'33';
  L.Add('abc2', TCore_StringList.Create).Text := '111'#10'222'#10'333';
  L.Add('abc3', TCore_StringList.Create).Text := '1111'#10'2222'#10'3333';
  DoStatus(L['abc'][0]);
  DoStatus(L['abc'][1]);
  DoStatus(L['abc'][2]);
  DoStatus(L['abc1'][0]);
  DoStatus(L['abc2'][0]);
  DoStatus(L['abc3'][0]);

  if not L.Exists('Abc') then
    begin
      raiseInfo('error');
    end;
  DisposeObject(L);
end;

procedure Test_Single_Big_Hash_Pair_Pool();
type
  T_Test = {$IFDEF FPC}specialize {$ENDIF FPC} TSingle_Big_Hash_Pair_Pool<integer>;
var
  tmp: T_Test;
  i: integer;
begin
  tmp := T_Test.Create(1000, 0, 0.01);
  for i := 1 to 10000 do
      tmp[i * 0.01] := i;
  for i := 1 to 10000 do
    if tmp[i * 0.01] <> i then
        raiseInfo('error');
  tmp.Free;
end;

end.
