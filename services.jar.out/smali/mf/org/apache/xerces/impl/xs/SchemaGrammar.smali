.class public Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
.super Ljava/lang/Object;
.source "SchemaGrammar.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/grammars/XSGrammar;
.implements Lmf/org/apache/xerces/xs/XSNamespaceItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinAttrDecl;,
        Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;,
        Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;,
        Lmf/org/apache/xerces/impl/xs/SchemaGrammar$XSAnyType;
    }
.end annotation


# static fields
.field private static final BASICSET_COUNT:I = 0x1d

.field private static final FULLSET_COUNT:I = 0x2e

.field private static final GLOBAL_COMP:[Z

.field private static final GRAMMAR_XS:I = 0x1

.field private static final GRAMMAR_XSI:I = 0x2

.field private static final INC_SIZE:I = 0x10

.field private static final INITIAL_SIZE:I = 0x10

.field private static final MAX_COMP_IDX:S = 0x10s

.field private static final REDEFINED_GROUP_INIT_SIZE:I = 0x2

.field public static final SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

.field private static final SG_SchemaNSExtended:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

.field public static final SG_XSI:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

.field public static final fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

.field public static final fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;


# instance fields
.field fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

.field private fCTCount:I

.field private fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

.field private fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

.field private fComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

.field private fComponentsExt:[Lmf/org/apache/xerces/xs/datatypes/ObjectList;

.field private fDOMParser:Ljava/lang/ref/SoftReference;

.field private fDocuments:Ljava/util/Vector;

.field fFullChecked:Z

.field fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalAttrDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalAttrGrpDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalGroupDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalIDConstraintDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalNotationDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

.field fGlobalTypeDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

.field fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

.field fImported:Ljava/util/Vector;

.field private fIsImmutable:Z

.field private fLocations:Ljava/util/Vector;

.field fNumAnnotations:I

.field private fRGCount:I

.field private fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

.field private fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

.field private fSAXParser:Ljava/lang/ref/SoftReference;

.field private fSubGroupCount:I

.field private fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field fTargetNamespace:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1173
    new-instance v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$XSAnyType;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$XSAnyType;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 1296
    new-instance v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    invoke-direct {v0, v2, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;-><init>(IS)V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    .line 1297
    new-instance v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    invoke-direct {v0, v2, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;-><init>(IS)V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNSExtended:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    .line 1299
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    const-string v1, "anySimpleType"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    sput-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 1302
    new-instance v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    invoke-direct {v0, v3, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;-><init>(IS)V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_XSI:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    .line 1341
    const/16 v0, 0x11

    new-array v0, v0, [Z

    .line 1342
    aput-boolean v2, v0, v2

    .line 1343
    aput-boolean v2, v0, v3

    const/4 v1, 0x3

    .line 1344
    aput-boolean v2, v0, v1

    const/4 v1, 0x5

    .line 1346
    aput-boolean v2, v0, v1

    const/4 v1, 0x6

    .line 1347
    aput-boolean v2, v0, v1

    const/16 v1, 0xa

    .line 1351
    aput-boolean v2, v0, v1

    const/16 v1, 0xb

    .line 1352
    aput-boolean v2, v0, v1

    const/16 v1, 0xf

    .line 1356
    aput-boolean v2, v0, v1

    const/16 v1, 0x10

    .line 1357
    aput-boolean v2, v0, v1

    .line 1341
    sput-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->GLOBAL_COMP:[Z

    .line 1358
    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    .line 113
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    .line 119
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 121
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSAXParser:Ljava/lang/ref/SoftReference;

    .line 122
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDOMParser:Ljava/lang/ref/SoftReference;

    .line 125
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fIsImmutable:Z

    .line 800
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fImported:Ljava/util/Vector;

    .line 1062
    iput v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    .line 1063
    new-array v0, v3, [Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 1064
    new-array v0, v3, [Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    .line 1069
    iput v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    .line 1070
    const/4 v0, 0x2

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    .line 1071
    const/4 v0, 0x1

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    .line 1075
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fFullChecked:Z

    .line 1159
    iput v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroupCount:I

    .line 1160
    new-array v0, v3, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 1361
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    .line 1362
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponentsExt:[Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    .line 1366
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDocuments:Ljava/util/Vector;

    .line 1367
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fLocations:Ljava/util/Vector;

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/XSDDescription;Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 4
    .param p1, "targetNamespace"    # Ljava/lang/String;
    .param p2, "grammarDesc"    # Lmf/org/apache/xerces/impl/xs/XSDDescription;
    .param p3, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    .line 113
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    .line 119
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 121
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSAXParser:Ljava/lang/ref/SoftReference;

    .line 122
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDOMParser:Ljava/lang/ref/SoftReference;

    .line 125
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fIsImmutable:Z

    .line 800
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fImported:Ljava/util/Vector;

    .line 1062
    iput v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    .line 1063
    new-array v0, v3, [Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 1064
    new-array v0, v3, [Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    .line 1069
    iput v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    .line 1070
    const/4 v0, 0x2

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    .line 1071
    const/4 v0, 0x1

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    .line 1075
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fFullChecked:Z

    .line 1159
    iput v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroupCount:I

    .line 1160
    new-array v0, v3, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 1361
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    .line 1362
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponentsExt:[Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    .line 1366
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDocuments:Ljava/util/Vector;

    .line 1367
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fLocations:Ljava/util/Vector;

    .line 144
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    .line 145
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    .line 146
    iput-object p3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 151
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 152
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 153
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 154
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 155
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 156
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 159
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 160
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 161
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 162
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 163
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 164
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 165
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 168
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 173
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 174
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 177
    :goto_0
    return-void

    .line 176
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_0
.end method

.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 7
    .param p1, "grammar"    # Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .prologue
    const/16 v3, 0x10

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    .line 113
    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    .line 119
    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 121
    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSAXParser:Ljava/lang/ref/SoftReference;

    .line 122
    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDOMParser:Ljava/lang/ref/SoftReference;

    .line 125
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fIsImmutable:Z

    .line 800
    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fImported:Ljava/util/Vector;

    .line 1062
    iput v5, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    .line 1063
    new-array v2, v3, [Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 1064
    new-array v2, v3, [Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    .line 1069
    iput v5, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    .line 1070
    const/4 v2, 0x2

    new-array v2, v2, [Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    .line 1071
    const/4 v2, 0x1

    new-array v2, v2, [Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    .line 1075
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fFullChecked:Z

    .line 1159
    iput v5, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroupCount:I

    .line 1160
    new-array v2, v3, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 1361
    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    .line 1362
    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponentsExt:[Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    .line 1366
    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDocuments:Ljava/util/Vector;

    .line 1367
    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fLocations:Ljava/util/Vector;

    .line 181
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    .line 182
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->makeClone()Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    .line 184
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 186
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 187
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 188
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 189
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 190
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 191
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 192
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 195
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 196
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 197
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 198
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 199
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 200
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 201
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 204
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 207
    iget v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fNumAnnotations:I

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fNumAnnotations:I

    .line 208
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fNumAnnotations:I

    if-lez v2, :cond_0

    .line 209
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    array-length v2, v2

    new-array v2, v2, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    .line 210
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fNumAnnotations:I

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    :cond_0
    iget v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroupCount:I

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroupCount:I

    .line 215
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroupCount:I

    if-lez v2, :cond_1

    .line 216
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    array-length v2, v2

    new-array v2, v2, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 217
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroupCount:I

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    :cond_1
    iget v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    .line 222
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    if-lez v2, :cond_2

    .line 223
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    array-length v2, v2

    new-array v2, v2, [Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 224
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    array-length v2, v2

    new-array v2, v2, [Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    .line 225
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    :cond_2
    iget v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    .line 231
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    if-lez v2, :cond_3

    .line 232
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    array-length v2, v2

    new-array v2, v2, [Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    .line 233
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    array-length v2, v2

    new-array v2, v2, [Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    .line 234
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    :cond_3
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fImported:Ljava/util/Vector;

    if-eqz v2, :cond_4

    .line 240
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fImported:Ljava/util/Vector;

    .line 241
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fImported:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_6

    .line 247
    .end local v0    # "i":I
    :cond_4
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fLocations:Ljava/util/Vector;

    if-eqz v2, :cond_5

    .line 248
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_1
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fLocations:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_7

    .line 253
    .end local v1    # "k":I
    :cond_5
    return-void

    .line 242
    .restart local v0    # "i":I
    :cond_6
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fImported:Ljava/util/Vector;

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fImported:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    .end local v0    # "i":I
    .restart local v1    # "k":I
    :cond_7
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fLocations:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v6, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addDocument(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getS4SGrammar(S)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 1
    .param p0, "schemaVersion"    # S

    .prologue
    .line 1305
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 1306
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    .line 1309
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNSExtended:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    goto :goto_0
.end method

.method static final resize([Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;I)[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .locals 3
    .param p0, "oldArray"    # [Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .param p1, "newSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 1314
    new-array v0, p1, [Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 1315
    .local v0, "newArray":[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1316
    return-object v0
.end method

.method static final resize([Lmf/org/apache/xerces/impl/xs/XSElementDecl;I)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .locals 3
    .param p0, "oldArray"    # [Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .param p1, "newSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 1326
    new-array v0, p1, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 1327
    .local v0, "newArray":[Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1328
    return-object v0
.end method

.method static final resize([Lmf/org/apache/xerces/impl/xs/XSGroupDecl;I)[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    .locals 3
    .param p0, "oldArray"    # [Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    .param p1, "newSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 1320
    new-array v0, p1, [Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    .line 1321
    .local v0, "newArray":[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1322
    return-object v0
.end method

.method static final resize([Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;I)[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;
    .locals 3
    .param p0, "oldArray"    # [Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;
    .param p1, "newSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 1332
    new-array v0, p1, [Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    .line 1333
    .local v0, "newArray":[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1334
    return-object v0
.end method


# virtual methods
.method public addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V
    .locals 4
    .param p1, "annotation"    # Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    .prologue
    const/4 v3, 0x0

    .line 1676
    if-nez p1, :cond_0

    .line 1688
    :goto_0
    return-void

    .line 1679
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    if-nez v1, :cond_2

    .line 1680
    const/4 v1, 0x2

    new-array v1, v1, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    .line 1687
    :cond_1
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fNumAnnotations:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fNumAnnotations:I

    aput-object p1, v1, v2

    goto :goto_0

    .line 1682
    :cond_2
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fNumAnnotations:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    array-length v2, v2

    if-ne v1, v2, :cond_1

    .line 1683
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fNumAnnotations:I

    shl-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    .line 1684
    .local v0, "newArray":[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fNumAnnotations:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1685
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    goto :goto_1
.end method

.method public addComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)V
    .locals 3
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .param p2, "locator"    # Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    .prologue
    .line 1081
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 1082
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    add-int/lit8 v1, v1, 0x10

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;I)[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 1083
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    add-int/lit8 v1, v1, 0x10

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;I)[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    .line 1085
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    aput-object p2, v0, v1

    .line 1086
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    aput-object p1, v0, v1

    .line 1087
    return-void
.end method

.method public declared-synchronized addDocument(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "document"    # Ljava/lang/Object;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 1370
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDocuments:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 1371
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDocuments:Ljava/util/Vector;

    .line 1372
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fLocations:Ljava/util/Vector;

    .line 1374
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDocuments:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1375
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fLocations:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1376
    monitor-exit p0

    return-void

    .line 1370
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;)V
    .locals 2
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .prologue
    .line 821
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 822
    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    .line 823
    return-void
.end method

.method public addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;Ljava/lang/String;)V
    .locals 3
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 826
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .end local p2    # "location":Ljava/lang/String;
    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 827
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 828
    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    .line 830
    :cond_0
    return-void

    .line 826
    .restart local p2    # "location":Ljava/lang/String;
    :cond_1
    const-string p2, ""

    goto :goto_0
.end method

.method public addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V
    .locals 2
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    .prologue
    .line 836
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 837
    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    .line 838
    return-void
.end method

.method public addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;)V
    .locals 3
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 841
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .end local p2    # "location":Ljava/lang/String;
    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 842
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 843
    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    .line 845
    :cond_0
    return-void

    .line 841
    .restart local p2    # "location":Ljava/lang/String;
    :cond_1
    const-string p2, ""

    goto :goto_0
.end method

.method public addGlobalComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)V
    .locals 2
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .prologue
    .line 934
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 935
    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    .line 936
    return-void
.end method

.method public addGlobalComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Ljava/lang/String;)V
    .locals 3
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 939
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .end local p2    # "location":Ljava/lang/String;
    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 940
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 941
    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    .line 943
    :cond_0
    return-void

    .line 939
    .restart local p2    # "location":Ljava/lang/String;
    :cond_1
    const-string p2, ""

    goto :goto_0
.end method

.method public addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 2
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .prologue
    .line 864
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 865
    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    .line 866
    return-void
.end method

.method public addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Ljava/lang/String;)V
    .locals 3
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 869
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .end local p2    # "location":Ljava/lang/String;
    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 870
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 871
    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    .line 873
    :cond_0
    return-void

    .line 869
    .restart local p2    # "location":Ljava/lang/String;
    :cond_1
    const-string p2, ""

    goto :goto_0
.end method

.method public addGlobalElementDeclAll(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 3
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .prologue
    .line 851
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 852
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 855
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fSubGroup:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v0, :cond_1

    .line 856
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroupCount:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 857
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroupCount:I

    add-int/lit8 v1, v1, 0x10

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/XSElementDecl;I)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 858
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroupCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroupCount:I

    aput-object p1, v0, v1

    .line 861
    :cond_1
    return-void
.end method

.method public addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;)V
    .locals 2
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    .prologue
    .line 879
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 880
    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    .line 881
    return-void
.end method

.method public addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Ljava/lang/String;)V
    .locals 3
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 884
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .end local p2    # "location":Ljava/lang/String;
    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 885
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 886
    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    .line 888
    :cond_0
    return-void

    .line 884
    .restart local p2    # "location":Ljava/lang/String;
    :cond_1
    const-string p2, ""

    goto :goto_0
.end method

.method public addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;)V
    .locals 2
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    .prologue
    .line 894
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->fName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 895
    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    .line 896
    return-void
.end method

.method public addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;Ljava/lang/String;)V
    .locals 3
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 899
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .end local p2    # "location":Ljava/lang/String;
    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->fName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 900
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 901
    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    .line 903
    :cond_0
    return-void

    .line 899
    .restart local p2    # "location":Ljava/lang/String;
    :cond_1
    const-string p2, ""

    goto :goto_0
.end method

.method public addGlobalSimpleTypeDecl(Lmf/org/apache/xerces/impl/dv/XSSimpleType;)V
    .locals 2
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .prologue
    .line 949
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 950
    instance-of v0, p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v0, :cond_0

    .line 951
    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .end local p1    # "decl":Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    .line 953
    :cond_0
    return-void
.end method

.method public addGlobalSimpleTypeDecl(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Ljava/lang/String;)V
    .locals 3
    .param p1, "decl"    # Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 956
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .end local p2    # "location":Ljava/lang/String;
    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 957
    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;

    move-result-object v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v0, :cond_0

    .line 958
    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .end local p1    # "decl":Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    .line 960
    :cond_0
    return-void

    .line 956
    .restart local p1    # "decl":Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .restart local p2    # "location":Ljava/lang/String;
    :cond_1
    const-string p2, ""

    goto :goto_0
.end method

.method public addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V
    .locals 2
    .param p1, "decl"    # Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .prologue
    .line 909
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 910
    instance-of v0, p1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eqz v0, :cond_1

    .line 911
    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .end local p1    # "decl":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    .line 916
    :cond_0
    :goto_0
    return-void

    .line 913
    .restart local p1    # "decl":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :cond_1
    instance-of v0, p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v0, :cond_0

    .line 914
    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .end local p1    # "decl":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    goto :goto_0
.end method

.method public addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/lang/String;)V
    .locals 3
    .param p1, "decl"    # Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 919
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .end local p2    # "location":Ljava/lang/String;
    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 920
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 921
    instance-of v0, p1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eqz v0, :cond_2

    .line 922
    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .end local p1    # "decl":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    .line 928
    :cond_0
    :goto_1
    return-void

    .line 919
    .restart local p1    # "decl":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .restart local p2    # "location":Ljava/lang/String;
    :cond_1
    const-string p2, ""

    goto :goto_0

    .line 924
    .end local p2    # "location":Ljava/lang/String;
    :cond_2
    instance-of v0, p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v0, :cond_0

    .line 925
    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .end local p1    # "decl":Lmf/org/apache/xerces/xs/XSTypeDefinition;
    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    goto :goto_1
.end method

.method public final addIDConstraintDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V
    .locals 2
    .param p1, "elmDecl"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .param p2, "decl"    # Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    .prologue
    .line 966
    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->addIDConstraint(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    .line 967
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 968
    return-void
.end method

.method public final addIDConstraintDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;Ljava/lang/String;)V
    .locals 3
    .param p1, "elmDecl"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .param p2, "decl"    # Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
    .param p3, "location"    # Ljava/lang/String;

    .prologue
    .line 971
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    .end local p3    # "location":Ljava/lang/String;
    :goto_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 972
    return-void

    .line 971
    .restart local p3    # "location":Ljava/lang/String;
    :cond_0
    const-string p3, ""

    goto :goto_0
.end method

.method public addRedefinedGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)V
    .locals 3
    .param p1, "derived"    # Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    .param p2, "base"    # Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    .param p3, "locator"    # Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    .prologue
    .line 1093
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 1095
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/XSGroupDecl;I)[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    .line 1096
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;I)[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    .line 1098
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    div-int/lit8 v1, v1, 0x2

    aput-object p3, v0, v1

    .line 1099
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    aput-object p1, v0, v1

    .line 1100
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    aput-object p2, v0, v1

    .line 1101
    return-void
.end method

.method public getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 3

    .prologue
    .line 1669
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fNumAnnotations:I

    if-nez v0, :cond_0

    .line 1670
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    .line 1672
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fNumAnnotations:I

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    goto :goto_0
.end method

.method public getAttributeDeclaration(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeDeclaration;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1575
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeGroup(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeGroupDefinition;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1595
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getComponents(S)Lmf/org/apache/xerces/xs/XSNamedMap;
    .locals 4
    .param p1, "objectType"    # S

    .prologue
    const/16 v2, 0x10

    .line 1456
    monitor-enter p0

    if-lez p1, :cond_0

    if-gt p1, v2, :cond_0

    .line 1457
    :try_start_0
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->GLOBAL_COMP:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_1

    .line 1458
    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->EMPTY_MAP:Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1504
    :goto_0
    monitor-exit p0

    return-object v1

    .line 1461
    :cond_1
    :try_start_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    if-nez v1, :cond_2

    .line 1462
    const/16 v1, 0x11

    new-array v1, v1, [Lmf/org/apache/xerces/xs/XSNamedMap;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    .line 1465
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    aget-object v1, v1, p1

    if-nez v1, :cond_4

    .line 1466
    const/4 v0, 0x0

    .line 1467
    .local v0, "table":Lmf/org/apache/xerces/util/SymbolHash;
    packed-switch p1, :pswitch_data_0

    .line 1495
    :goto_1
    :pswitch_0
    const/16 v1, 0xf

    if-eq p1, v1, :cond_3

    .line 1496
    if-ne p1, v2, :cond_5

    .line 1497
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    new-instance v2, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    invoke-direct {v2, v3, v0, p1}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolHash;S)V

    aput-object v2, v1, p1

    .line 1504
    .end local v0    # "table":Lmf/org/apache/xerces/util/SymbolHash;
    :cond_4
    :goto_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    aget-object v1, v1, p1

    goto :goto_0

    .line 1471
    .restart local v0    # "table":Lmf/org/apache/xerces/util/SymbolHash;
    :pswitch_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 1472
    goto :goto_1

    .line 1474
    :pswitch_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 1475
    goto :goto_1

    .line 1477
    :pswitch_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 1478
    goto :goto_1

    .line 1480
    :pswitch_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 1481
    goto :goto_1

    .line 1483
    :pswitch_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 1484
    goto :goto_1

    .line 1486
    :pswitch_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    .line 1487
    goto :goto_1

    .line 1489
    :pswitch_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_1

    .line 1500
    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    new-instance v2, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolHash;)V

    aput-object v2, v1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1456
    .end local v0    # "table":Lmf/org/apache/xerces/util/SymbolHash;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1467
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized getComponentsExt(S)Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    .locals 5
    .param p1, "objectType"    # S

    .prologue
    .line 1508
    monitor-enter p0

    if-lez p1, :cond_0

    const/16 v2, 0x10

    if-gt p1, v2, :cond_0

    .line 1509
    :try_start_0
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->GLOBAL_COMP:[Z

    aget-boolean v2, v2, p1

    if-nez v2, :cond_1

    .line 1510
    :cond_0
    sget-object v2, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1549
    :goto_0
    monitor-exit p0

    return-object v2

    .line 1513
    :cond_1
    :try_start_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponentsExt:[Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    if-nez v2, :cond_2

    .line 1514
    const/16 v2, 0x11

    new-array v2, v2, [Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponentsExt:[Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    .line 1517
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponentsExt:[Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    aget-object v2, v2, p1

    if-nez v2, :cond_3

    .line 1518
    const/4 v1, 0x0

    .line 1519
    .local v1, "table":Lmf/org/apache/xerces/util/SymbolHash;
    packed-switch p1, :pswitch_data_0

    .line 1545
    :goto_1
    :pswitch_0
    invoke-virtual {v1}, Lmf/org/apache/xerces/util/SymbolHash;->getEntries()[Ljava/lang/Object;

    move-result-object v0

    .line 1546
    .local v0, "entries":[Ljava/lang/Object;
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponentsExt:[Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    new-instance v3, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;

    array-length v4, v0

    invoke-direct {v3, v0, v4}, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;-><init>([Ljava/lang/Object;I)V

    aput-object v3, v2, p1

    .line 1549
    .end local v0    # "entries":[Ljava/lang/Object;
    .end local v1    # "table":Lmf/org/apache/xerces/util/SymbolHash;
    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponentsExt:[Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    aget-object v2, v2, p1

    goto :goto_0

    .line 1523
    .restart local v1    # "table":Lmf/org/apache/xerces/util/SymbolHash;
    :pswitch_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 1524
    goto :goto_1

    .line 1526
    :pswitch_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 1527
    goto :goto_1

    .line 1529
    :pswitch_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 1530
    goto :goto_1

    .line 1532
    :pswitch_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 1533
    goto :goto_1

    .line 1535
    :pswitch_5
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 1536
    goto :goto_1

    .line 1538
    :pswitch_6
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    .line 1539
    goto :goto_1

    .line 1541
    :pswitch_7
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1508
    .end local v1    # "table":Lmf/org/apache/xerces/util/SymbolHash;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1519
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method declared-synchronized getDOMParser()Lmf/org/apache/xerces/parsers/DOMParser;
    .locals 4

    .prologue
    .line 1398
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDOMParser:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_0

    .line 1399
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDOMParser:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/parsers/DOMParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1400
    .local v1, "parser":Lmf/org/apache/xerces/parsers/DOMParser;
    if-eqz v1, :cond_0

    .line 1419
    :goto_0
    monitor-exit p0

    return-object v1

    .line 1406
    .end local v1    # "parser":Lmf/org/apache/xerces/parsers/DOMParser;
    :cond_0
    :try_start_1
    new-instance v0, Lmf/org/apache/xerces/parsers/XML11Configuration;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0, v2}, Lmf/org/apache/xerces/parsers/XML11Configuration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;)V

    .line 1410
    .local v0, "config":Lmf/org/apache/xerces/parsers/XML11Configuration;
    const-string v2, "http://xml.org/sax/features/namespaces"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setFeature(Ljava/lang/String;Z)V

    .line 1411
    const-string v2, "http://xml.org/sax/features/validation"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setFeature(Ljava/lang/String;Z)V

    .line 1413
    new-instance v1, Lmf/org/apache/xerces/parsers/DOMParser;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/parsers/DOMParser;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1415
    .restart local v1    # "parser":Lmf/org/apache/xerces/parsers/DOMParser;
    :try_start_2
    const-string v2, "http://apache.org/xml/features/dom/defer-node-expansion"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1418
    :goto_1
    :try_start_3
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDOMParser:Ljava/lang/ref/SoftReference;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1398
    .end local v0    # "config":Lmf/org/apache/xerces/parsers/XML11Configuration;
    .end local v1    # "parser":Lmf/org/apache/xerces/parsers/DOMParser;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1417
    .restart local v0    # "config":Lmf/org/apache/xerces/parsers/XML11Configuration;
    .restart local v1    # "parser":Lmf/org/apache/xerces/parsers/DOMParser;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public getDocumentLocations()Lmf/org/apache/xerces/xs/StringList;
    .locals 2

    .prologue
    .line 1631
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fLocations:Ljava/util/Vector;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;-><init>(Ljava/util/Vector;)V

    return-object v0
.end method

.method public getElementDeclaration(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSElementDeclaration;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1585
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    return-object v0
.end method

.method public final getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    .locals 1
    .param p1, "declName"    # Ljava/lang/String;

    .prologue
    .line 978
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    return-object v0
.end method

.method public final getGlobalAttributeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    .locals 3
    .param p1, "declName"    # Ljava/lang/String;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 982
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .end local p2    # "location":Ljava/lang/String;
    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    return-object v0

    .restart local p2    # "location":Ljava/lang/String;
    :cond_0
    const-string p2, ""

    goto :goto_0
.end method

.method public final getGlobalAttributeGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .locals 1
    .param p1, "declName"    # Ljava/lang/String;

    .prologue
    .line 989
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    return-object v0
.end method

.method public final getGlobalAttributeGroupDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .locals 3
    .param p1, "declName"    # Ljava/lang/String;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 993
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .end local p2    # "location":Ljava/lang/String;
    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    return-object v0

    .restart local p2    # "location":Ljava/lang/String;
    :cond_0
    const-string p2, ""

    goto :goto_0
.end method

.method public final getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .locals 1
    .param p1, "declName"    # Ljava/lang/String;

    .prologue
    .line 1000
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    return-object v0
.end method

.method public final getGlobalElementDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .locals 3
    .param p1, "declName"    # Ljava/lang/String;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 1004
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .end local p2    # "location":Ljava/lang/String;
    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    return-object v0

    .restart local p2    # "location":Ljava/lang/String;
    :cond_0
    const-string p2, ""

    goto :goto_0
.end method

.method public final getGlobalGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    .locals 1
    .param p1, "declName"    # Ljava/lang/String;

    .prologue
    .line 1011
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    return-object v0
.end method

.method public final getGlobalGroupDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    .locals 3
    .param p1, "declName"    # Ljava/lang/String;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 1015
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .end local p2    # "location":Ljava/lang/String;
    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    return-object v0

    .restart local p2    # "location":Ljava/lang/String;
    :cond_0
    const-string p2, ""

    goto :goto_0
.end method

.method public final getGlobalNotationDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    .locals 1
    .param p1, "declName"    # Ljava/lang/String;

    .prologue
    .line 1022
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    return-object v0
.end method

.method public final getGlobalNotationDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    .locals 3
    .param p1, "declName"    # Ljava/lang/String;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 1026
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .end local p2    # "location":Ljava/lang/String;
    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    return-object v0

    .restart local p2    # "location":Ljava/lang/String;
    :cond_0
    const-string p2, ""

    goto :goto_0
.end method

.method public final getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .locals 1
    .param p1, "declName"    # Ljava/lang/String;

    .prologue
    .line 1033
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    return-object v0
.end method

.method public final getGlobalTypeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .locals 3
    .param p1, "declName"    # Ljava/lang/String;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 1037
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .end local p2    # "location":Ljava/lang/String;
    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    return-object v0

    .restart local p2    # "location":Ljava/lang/String;
    :cond_0
    const-string p2, ""

    goto :goto_0
.end method

.method public getGrammarDescription()Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    return-object v0
.end method

.method public getIDCDefinition(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSIDCDefinition;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1621
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getIDConstraintDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v0

    return-object v0
.end method

.method public final getIDConstraintDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
    .locals 1
    .param p1, "declName"    # Ljava/lang/String;

    .prologue
    .line 1044
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    return-object v0
.end method

.method public final getIDConstraintDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
    .locals 3
    .param p1, "declName"    # Ljava/lang/String;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 1048
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .end local p2    # "location":Ljava/lang/String;
    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    return-object v0

    .restart local p2    # "location":Ljava/lang/String;
    :cond_0
    const-string p2, ""

    goto :goto_0
.end method

.method public getImportedGrammars()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fImported:Ljava/util/Vector;

    return-object v0
.end method

.method public getModelGroupDefinition(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSModelGroupDefinition;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1606
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v0

    return-object v0
.end method

.method public getNotationDeclaration(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSNotationDeclaration;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1617
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v0

    return-object v0
.end method

.method final getRGLocators()[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;
    .locals 2

    .prologue
    .line 1140
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1141
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/XSGroupDecl;I)[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    .line 1142
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;I)[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    .line 1144
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    return-object v0
.end method

.method final getRedefinedGroupDecls()[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    .locals 2

    .prologue
    .line 1129
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1130
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/XSGroupDecl;I)[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    .line 1131
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGCount:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;I)[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRGLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    .line 1133
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fRedefinedGroupDecls:[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    return-object v0
.end method

.method declared-synchronized getSAXParser()Lmf/org/apache/xerces/parsers/SAXParser;
    .locals 4

    .prologue
    .line 1423
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSAXParser:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_0

    .line 1424
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSAXParser:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/parsers/SAXParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1425
    .local v1, "parser":Lmf/org/apache/xerces/parsers/SAXParser;
    if-eqz v1, :cond_0

    .line 1439
    :goto_0
    monitor-exit p0

    return-object v1

    .line 1431
    .end local v1    # "parser":Lmf/org/apache/xerces/parsers/SAXParser;
    :cond_0
    :try_start_1
    new-instance v0, Lmf/org/apache/xerces/parsers/XML11Configuration;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0, v2}, Lmf/org/apache/xerces/parsers/XML11Configuration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;)V

    .line 1435
    .local v0, "config":Lmf/org/apache/xerces/parsers/XML11Configuration;
    const-string v2, "http://xml.org/sax/features/namespaces"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setFeature(Ljava/lang/String;Z)V

    .line 1436
    const-string v2, "http://xml.org/sax/features/validation"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setFeature(Ljava/lang/String;Z)V

    .line 1437
    new-instance v1, Lmf/org/apache/xerces/parsers/SAXParser;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/parsers/SAXParser;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    .line 1438
    .restart local v1    # "parser":Lmf/org/apache/xerces/parsers/SAXParser;
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSAXParser:Ljava/lang/ref/SoftReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1423
    .end local v0    # "config":Lmf/org/apache/xerces/parsers/XML11Configuration;
    .end local v1    # "parser":Lmf/org/apache/xerces/parsers/SAXParser;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getSchemaNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1393
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    return-object v0
.end method

.method final getSubstitutionGroups()[Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .locals 2

    .prologue
    .line 1166
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroupCount:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1167
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroupCount:I

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/XSElementDecl;I)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 1168
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fSubGroups:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    return-object v0
.end method

.method public final getTargetNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeDefinition(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1565
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    return-object v0
.end method

.method final getUncheckedCTLocators()[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;
    .locals 2

    .prologue
    .line 1118
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1119
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;I)[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 1120
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;I)[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    .line 1122
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    return-object v0
.end method

.method final getUncheckedComplexTypeDecls()[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .locals 2

    .prologue
    .line 1107
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1108
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;I)[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 1109
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;I)[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    .line 1111
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    return-object v0
.end method

.method public final hasIDConstraints()Z
    .locals 1

    .prologue
    .line 1055
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImmutable()Z
    .locals 1

    .prologue
    .line 1695
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fIsImmutable:Z

    return v0
.end method

.method public isNamespaceAware()Z
    .locals 1

    .prologue
    .line 797
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized removeDocument(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1379
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDocuments:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 1380
    if-ltz p1, :cond_0

    .line 1381
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDocuments:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1382
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fDocuments:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 1383
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fLocations:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElementAt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1385
    :cond_0
    monitor-exit p0

    return-void

    .line 1379
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetComponents()V
    .locals 1

    .prologue
    .line 1553
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    .line 1554
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComponentsExt:[Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1555
    monitor-exit p0

    return-void

    .line 1553
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setImmutable(Z)V
    .locals 0
    .param p1, "isImmutable"    # Z

    .prologue
    .line 1691
    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fIsImmutable:Z

    .line 1692
    return-void
.end method

.method public setImportedGrammars(Ljava/util/Vector;)V
    .locals 0
    .param p1, "importedGrammars"    # Ljava/util/Vector;

    .prologue
    .line 803
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fImported:Ljava/util/Vector;

    .line 804
    return-void
.end method

.method final setUncheckedTypeNum(I)V
    .locals 2
    .param p1, "newSize"    # I

    .prologue
    .line 1152
    iput p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    .line 1153
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;I)[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fComplexTypeDecls:[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 1154
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTCount:I

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->resize([Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;I)[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fCTLocators:[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    .line 1155
    return-void
.end method

.method public toXSModel()Lmf/org/apache/xerces/xs/XSModel;
    .locals 3

    .prologue
    .line 1641
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;

    const/4 v1, 0x1

    new-array v1, v1, [Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;-><init>([Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    return-object v0
.end method

.method public toXSModel([Lmf/org/apache/xerces/xni/grammars/XSGrammar;)Lmf/org/apache/xerces/xs/XSModel;
    .locals 5
    .param p1, "grammars"    # [Lmf/org/apache/xerces/xni/grammars/XSGrammar;

    .prologue
    .line 1645
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    .line 1646
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->toXSModel()Lmf/org/apache/xerces/xs/XSModel;

    move-result-object v4

    .line 1662
    :goto_0
    return-object v4

    .line 1648
    :cond_1
    array-length v3, p1

    .line 1649
    .local v3, "len":I
    const/4 v1, 0x0

    .line 1650
    .local v1, "hasSelf":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v3, :cond_3

    .line 1657
    :goto_2
    if-eqz v1, :cond_5

    move v4, v3

    :goto_3
    new-array v0, v4, [Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .line 1658
    .local v0, "gs":[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    const/4 v2, 0x0

    :goto_4
    if-lt v2, v3, :cond_6

    .line 1660
    if-nez v1, :cond_2

    .line 1661
    aput-object p0, v0, v3

    .line 1662
    :cond_2
    new-instance v4, Lmf/org/apache/xerces/impl/xs/XSModelImpl;

    invoke-direct {v4, v0}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;-><init>([Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    goto :goto_0

    .line 1651
    .end local v0    # "gs":[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    :cond_3
    aget-object v4, p1, v2

    if-ne v4, p0, :cond_4

    .line 1652
    const/4 v1, 0x1

    .line 1653
    goto :goto_2

    .line 1650
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1657
    :cond_5
    add-int/lit8 v4, v3, 0x1

    goto :goto_3

    .line 1659
    .restart local v0    # "gs":[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    :cond_6
    aget-object v4, p1, v2

    check-cast v4, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aput-object v4, v0, v2

    .line 1658
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method
