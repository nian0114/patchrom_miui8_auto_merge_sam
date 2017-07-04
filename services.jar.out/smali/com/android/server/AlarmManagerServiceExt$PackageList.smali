.class Lcom/android/server/AlarmManagerServiceExt$PackageList;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageList"
.end annotation


# instance fields
.field mPackageSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mRegExpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 3634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3636
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mPackageSet:Ljava/util/HashSet;

    .line 3638
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mRegExpList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3641
    if-nez p1, :cond_1

    .line 3653
    :cond_0
    :goto_0
    return-void

    .line 3644
    :cond_1
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3645
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mRegExpList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3646
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mRegExpList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3649
    :cond_2
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3650
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 3686
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 3687
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mRegExpList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3688
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3670
    if-nez p1, :cond_1

    .line 3671
    const/4 v1, 0x0

    .line 3682
    :cond_0
    :goto_0
    return v1

    .line 3673
    :cond_1
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 3674
    .local v1, "match":Z
    if-nez v1, :cond_0

    .line 3675
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mRegExpList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3676
    .local v2, "regExp":Ljava/lang/String;
    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3677
    const/4 v1, 0x1

    .line 3678
    goto :goto_0
.end method

.method public loadAppSync3PlusBlackList()V
    .locals 1

    .prologue
    .line 3705
    const-string v0, ".*reminder.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3706
    const-string v0, ".*alert.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3707
    const-string v0, "com.sec.screencheck"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3708
    const-string v0, "com.sec.dsm.system"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3709
    const-string v0, "com.samsung.android.fmm"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3710
    const-string v0, "com.samsung.ssd.wolfserver"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3711
    const-string v0, "com.baidu.searchbox"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3712
    const-string v0, "ch.bitspin.timely"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3713
    const-string v0, "com.nhn.android.nmap"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3714
    const-string v0, "com.qihoo.security"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3715
    const-string v0, ".*vodafone.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3718
    const-string v0, ".*vzw.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3719
    const-string v0, ".*verizon.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3720
    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->VZW:Z

    if-eqz v0, :cond_0

    .line 3721
    const-string v0, ".*amazon.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3722
    const-string v0, "com.audible.application"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3723
    const-string v0, "com.imdb.mobile"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3724
    const-string v0, "com.amazon.fv"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3725
    const-string v0, "com.gotv.nflgamecenter.us.lite"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3726
    const-string v0, "com.slacker.radio"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3727
    const-string v0, "com.telecomsys.directedsms.android.SCG"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3728
    const-string v0, "com.LogiaGroup.LogiaDeck"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3729
    const-string v0, "com.vznavigator.Generic"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3730
    const-string v0, "com.cequint.ecid"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3731
    const-string v0, "com.vcast.mediamanager"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3732
    const-string v0, "com.sec.android.app.cmas"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3733
    const-string v0, "com.samsung.spg"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3734
    const-string v0, "com.sec.android.app.setupwizard"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3735
    const-string v0, "com.samsung.vvm"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3736
    const-string v0, "com.samsung.carrier.logcollector"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3737
    const-string v0, "com.samsung.sdm"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3738
    const-string v0, "com.samsung.syncmlservice"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3739
    const-string v0, "com.samsung.syncmlphonedataservice"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3740
    const-string v0, "com.samsung.sdm.sdmviewer"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3741
    const-string v0, "com.samsung.PAYGPrePayDetection"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3742
    const-string v0, "com.fusionone.android.sync.vzbuaclient"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3746
    :cond_0
    const-string v0, ".*att.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3747
    const-string v0, ".*mizmowireless.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3748
    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->ATT:Z

    if-eqz v0, :cond_1

    .line 3749
    const-string v0, "com.welldoc.diabetesmanager"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3750
    const-string/jumbo v0, "deezer.android.app"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3754
    :cond_1
    const-string v0, ".*sprint.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3755
    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->SPR:Z

    if-eqz v0, :cond_2

    .line 3756
    const-string v0, "com.airg"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3757
    const-string v0, "com.amazon.mShop"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3758
    const-string v0, "com.amazon.mShop.android"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3759
    const-string v0, "com.amazon.avod.thirdpartyclient"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3760
    const-string v0, "com.amazon.mp3"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3761
    const-string v0, "com.amazon.clouddrive.photos"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3762
    const-string v0, "com.boostmobile.boosttv"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3763
    const-string v0, "com.coremobility.app.vnotes"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3764
    const-string v0, "com.ebay.mobile"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3765
    const-string v0, "com.familyandco.framilywall"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3766
    const-string v0, "com.handmark.expressweather"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3767
    const-string v0, "com.itsoninc.android.itsonclient"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3768
    const-string v0, "com.itsoninc.android.itsonservice"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3769
    const-string v0, "com.itsoninc.android.uid"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3770
    const-string v0, "com.kineto.smartwifi"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3771
    const-string v0, "com.livewiremobile.musicstore.boost"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3772
    const-string v0, "com.locationlabs.sparkle.yellow.pre"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3773
    const-string v0, "com.lookout"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3774
    const-string v0, "com.nascar.nascarmobile"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3775
    const-string v0, "com.nbadigital.gametimelite"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3776
    const-string v0, "com.nextradioapp.nextradio"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3777
    const-string v0, "com.oem.smartwifisupport"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3778
    const-string v0, "com.pinsight.v1"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3779
    const-string v0, "com.smithmicro.EDM"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3780
    const-string v0, "com.smithmicro.mnd"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3781
    const-string v0, "com.soleo.numbersearch"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3782
    const-string v0, "com.spotify.music"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3783
    const-string v0, "com.telenav.app.android.scout_us"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3784
    const-string v0, "com.ubercab"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3785
    const-string v0, "com.wipit.android.boostwallet"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3786
    const-string/jumbo v0, "msgplus.jibe.sca"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3787
    const-string v0, "com.privacystar.android.spg"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3788
    const-string v0, "com.playphone.gamestore"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3789
    const-string v0, "com.livewiremobile.musicstore.vmu"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3793
    :cond_2
    const-string v0, ".*tmobile.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3794
    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->TMO:Z

    if-eqz v0, :cond_3

    .line 3795
    const-string v0, "com.amazon.mShop.android"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3796
    const-string v0, "com.lookout"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3797
    const-string v0, "com.customermobile.preload"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3801
    :cond_3
    const-string v0, ".*metro.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3802
    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->MPCS:Z

    if-eqz v0, :cond_4

    .line 3803
    const-string v0, "com.tmobile.pr.adapt"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3804
    const-string v0, "com.lookout"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3805
    const-string v0, "com.mobileposse.client"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3806
    const-string v0, "com.sec.tetheringprovision"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3810
    :cond_4
    const-string v0, ".*tracfone.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3813
    const-string v0, ".*uscc.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3814
    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->USCC:Z

    if-eqz v0, :cond_5

    .line 3815
    const-string v0, "com.cequint.ecid"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3816
    const-string v0, "com.synchronoss.sm"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3817
    const-string v0, "com.amazon.mShop.android"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3818
    const-string v0, "com.LogiaGroup.LogiaDeck"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3819
    const-string v0, "com.zed.TrdWapLauncher"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3820
    const-string v0, "com.amazon.windowshop"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3824
    :cond_5
    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->JAPAN:Z

    if-eqz v0, :cond_6

    .line 3825
    const-string v0, "com.nttdocomo.android.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3826
    const-string/jumbo v0, "jp.co.nttdocomo.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3827
    const-string v0, "com.ipg.gguide.dcm.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3828
    const-string v0, "com.uievolution.gguide.android"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3829
    const-string v0, "com.rsupport.rs.activity.ntt"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3830
    const-string v0, "com.mcafee.vsm_android_dcm"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3831
    const-string/jumbo v0, "jp.id_credit_sp.android"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3832
    const-string v0, "com.mcafee.safecall.docomo"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3833
    const-string/jumbo v0, "jp.dmapnavi.navi02"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3834
    const-string v0, "com.uievolution.gguide.android"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3835
    const-string v0, "com.showcasegig.devlawson"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3836
    const-string/jumbo v0, "jp.co.mcdonalds.android"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3837
    const-string/jumbo v0, "jp.co.lawson.activity"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3839
    :cond_6
    return-void
.end method

.method public loadAppSyncBlackList()V
    .locals 1

    .prologue
    .line 3691
    const-string v0, ".*alarm.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3692
    const-string v0, ".*clock.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3694
    const-string v0, "com.sec\\..*ims.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3695
    const-string v0, "com.samsung\\..*ims.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3696
    const-string v0, "com.iloen.melon"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3697
    const-string v0, "com.iloen.melon.tablet"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3698
    const-string v0, ".*knox.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3699
    const-string v0, "android"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3700
    const-string v0, ".*email.ui"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3701
    const-string v0, ".*shealth.*"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 3702
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 3657
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3659
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3660
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3661
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3663
    :cond_0
    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$PackageList;->mRegExpList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3664
    .local v2, "regExp":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3666
    .end local v2    # "regExp":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
