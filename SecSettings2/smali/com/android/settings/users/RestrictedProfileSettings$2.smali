.class Lcom/android/settings_ex/users/RestrictedProfileSettings$2;
.super Ljava/lang/Object;
.source "RestrictedProfileSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/users/RestrictedProfileSettings;->removeUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/users/RestrictedProfileSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/users/RestrictedProfileSettings;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings_ex/users/RestrictedProfileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings_ex/users/RestrictedProfileSettings;

    iget-object v0, v0, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings_ex/users/RestrictedProfileSettings;

    iget-object v1, v1, Lcom/android/settings_ex/users/RestrictedProfileSettings;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z

    .line 174
    iget-object v0, p0, Lcom/android/settings_ex/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings_ex/users/RestrictedProfileSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/users/RestrictedProfileSettings;->finishFragment()V

    .line 175
    return-void
.end method
