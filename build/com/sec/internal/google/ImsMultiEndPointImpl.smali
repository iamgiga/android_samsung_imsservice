.class public Lcom/sec/internal/google/ImsMultiEndPointImpl;
.super Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
.source "ImsMultiEndPointImpl.java"


# instance fields
.field private mDialogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 24
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/google/ImsMultiEndPointImpl;->mDialogList:Ljava/util/List;

    .line 25
    iput p1, p0, Lcom/sec/internal/google/ImsMultiEndPointImpl;->mPhoneId:I

    .line 26
    return-void
.end method

.method private getOirExtraFromDialingNumber(Ljava/lang/String;)I
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .line 110
    const-string v0, "unknown"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x3

    return v0

    .line 113
    :cond_0
    const-string v0, "RESTRICTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "anonymous"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 116
    :cond_1
    const-string v0, "Coin line/payphone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    const/4 v0, 0x4

    return v0

    .line 119
    :cond_2
    const/4 v0, 0x2

    return v0

    .line 114
    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getExternalCallStateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/sec/internal/google/ImsMultiEndPointImpl;->mDialogList:Ljava/util/List;

    return-object v0
.end method

.method public requestImsExternalCallStateInfo()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/sec/internal/google/ImsMultiEndPointImpl;->mDialogList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/sec/internal/google/ImsMultiEndPointImpl;->onImsExternalCallStateUpdate(Ljava/util/List;)V

    .line 34
    return-void
.end method

.method public setDialogInfo(Lcom/sec/ims/DialogEvent;I)V
    .locals 19
    .param p1, "de"    # Lcom/sec/ims/DialogEvent;
    .param p2, "cmcType"    # I

    .line 37
    move-object/from16 v1, p0

    move/from16 v2, p2

    iget-object v0, v1, Lcom/sec/internal/google/ImsMultiEndPointImpl;->mDialogList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, v1, Lcom/sec/internal/google/ImsMultiEndPointImpl;->mDialogList:Ljava/util/List;

    new-instance v10, Landroid/telephony/ims/ImsExternalCallState;

    const-string v3, ""

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Landroid/telephony/ims/ImsExternalCallState;-><init>(ILandroid/net/Uri;ZIIZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    return-void

    .line 42
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/sec/ims/Dialog;

    .line 43
    .local v5, "info":Lcom/sec/ims/Dialog;
    const/4 v6, -0x1

    .line 44
    .local v6, "dialogId":I
    const/4 v7, 0x1

    .line 45
    .local v7, "addDispName":Z
    if-eqz v5, :cond_c

    .line 46
    iget v0, v1, Lcom/sec/internal/google/ImsMultiEndPointImpl;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v8

    .line 47
    .local v8, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v8, v0, :cond_1

    .line 48
    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->getIdForString(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    .line 51
    :cond_1
    :try_start_0
    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->getDialogId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v0

    .line 53
    goto :goto_1

    .line 52
    :catch_0
    move-exception v0

    .line 55
    :goto_1
    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->getRemoteUri()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "remoteUri":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    const-string v9, ":"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 57
    const-string v10, "tel:"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 58
    const-string v11, "sip:"

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 60
    :cond_2
    const/4 v10, 0x4

    const/4 v11, 0x2

    const/16 v12, 0x8

    if-eq v2, v11, :cond_3

    if-eq v2, v10, :cond_3

    if-ne v2, v12, :cond_4

    :cond_3
    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->getRemoteDispName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->getRemoteDispName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 61
    const/4 v7, 0x0

    .line 63
    :cond_4
    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->getRemoteDispName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    if-eqz v7, :cond_5

    .line 64
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";displayName="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->getRemoteDispName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_5
    if-eq v2, v11, :cond_6

    if-eq v2, v10, :cond_6

    if-ne v2, v12, :cond_b

    .line 67
    :cond_6
    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v9, v4

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "tmpRemoteUri":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 69
    invoke-direct {v1, v4}, Lcom/sec/internal/google/ImsMultiEndPointImpl;->getOirExtraFromDialingNumber(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 70
    .local v9, "oir":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";oir="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    const-string v10, "Conference call"

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v10

    const/4 v11, 0x5

    if-eq v10, v11, :cond_9

    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v10

    const/4 v11, 0x6

    if-ne v10, v11, :cond_7

    goto :goto_2

    .line 73
    :cond_7
    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v10

    const/4 v11, 0x7

    if-eq v10, v11, :cond_8

    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v10

    if-ne v10, v12, :cond_a

    .line 74
    :cond_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";cmc_pd_state=2"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 72
    :cond_9
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";cmc_pd_state=1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .end local v9    # "oir":Ljava/lang/String;
    :cond_a
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";cmc_type=2"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .end local v4    # "tmpRemoteUri":Ljava/lang/String;
    :cond_b
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 80
    .local v4, "address":Landroid/net/Uri;
    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v9

    invoke-static {v9}, Lcom/sec/internal/google/DataTypeConvertor;->convertToGoogleCallType(I)I

    move-result v16

    .line 81
    .local v16, "callType":I
    iget-object v15, v1, Lcom/sec/internal/google/ImsMultiEndPointImpl;->mDialogList:Ljava/util/List;

    new-instance v14, Landroid/telephony/ims/ImsExternalCallState;

    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->isPullAvailable()Z

    move-result v12

    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->getState()I

    move-result v13

    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->isHeld()Z

    move-result v17

    move-object v9, v14

    move v10, v6

    move-object v11, v4

    move-object/from16 v18, v0

    move-object v0, v14

    .end local v0    # "remoteUri":Ljava/lang/String;
    .local v18, "remoteUri":Ljava/lang/String;
    move/from16 v14, v16

    move-object v2, v15

    move/from16 v15, v17

    invoke-direct/range {v9 .. v15}, Landroid/telephony/ims/ImsExternalCallState;-><init>(ILandroid/net/Uri;ZIIZ)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .end local v4    # "address":Landroid/net/Uri;
    .end local v5    # "info":Lcom/sec/ims/Dialog;
    .end local v6    # "dialogId":I
    .end local v7    # "addDispName":Z
    .end local v8    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v16    # "callType":I
    .end local v18    # "remoteUri":Ljava/lang/String;
    :cond_c
    move/from16 v2, p2

    goto/16 :goto_0

    .line 85
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DE="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "crLogBuf":Ljava/lang/StringBuilder;
    iget-object v2, v1, Lcom/sec/internal/google/ImsMultiEndPointImpl;->mDialogList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsExternalCallState;

    .line 87
    .local v3, "iecs":Landroid/telephony/ims/ImsExternalCallState;
    const-string v5, "["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v3}, Landroid/telephony/ims/ImsExternalCallState;->getCallId()I

    move-result v5

    const v6, 0x186a0

    rem-int/2addr v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v3}, Landroid/telephony/ims/ImsExternalCallState;->getCallState()I

    move-result v6

    const-string v7, "T"

    if-ne v6, v4, :cond_e

    const-string v6, "C"

    goto :goto_5

    :cond_e
    move-object v6, v7

    :goto_5
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v3}, Landroid/telephony/ims/ImsExternalCallState;->isCallHeld()Z

    move-result v6

    if-eqz v6, :cond_f

    const-string v6, "H"

    goto :goto_6

    :cond_f
    const-string v6, "A"

    :goto_6
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v3}, Landroid/telephony/ims/ImsExternalCallState;->isCallPullable()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 95
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 97
    :cond_10
    const-string v5, "F"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :goto_7
    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .end local v3    # "iecs":Landroid/telephony/ims/ImsExternalCallState;
    goto :goto_4

    .line 101
    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "crLog":Ljava/lang/String;
    const v3, 0x30000038

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 103
    return-void
.end method

.method public setP2pPushDialogInfo(Lcom/sec/ims/DialogEvent;I)V
    .locals 11
    .param p1, "de"    # Lcom/sec/ims/DialogEvent;
    .param p2, "cmcType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/sec/internal/google/ImsMultiEndPointImpl;->mDialogList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 124
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/Dialog;

    .line 125
    .local v1, "info":Lcom/sec/ims/Dialog;
    if-eqz v1, :cond_0

    .line 127
    :try_start_0
    invoke-virtual {v1}, Lcom/sec/ims/Dialog;->getDialogId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 128
    .local v4, "dialogId":I
    const-string v2, "sip:D2D@samsungims.com;d2d.push"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 129
    .local v5, "address":Landroid/net/Uri;
    invoke-virtual {v1}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/google/DataTypeConvertor;->convertToGoogleCallType(I)I

    move-result v8

    .line 130
    .local v8, "callType":I
    iget-object v2, p0, Lcom/sec/internal/google/ImsMultiEndPointImpl;->mDialogList:Ljava/util/List;

    new-instance v10, Landroid/telephony/ims/ImsExternalCallState;

    invoke-virtual {v1}, Lcom/sec/ims/Dialog;->isPullAvailable()Z

    move-result v6

    invoke-virtual {v1}, Lcom/sec/ims/Dialog;->getState()I

    move-result v7

    invoke-virtual {v1}, Lcom/sec/ims/Dialog;->isHeld()Z

    move-result v9

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Landroid/telephony/ims/ImsExternalCallState;-><init>(ILandroid/net/Uri;ZIIZ)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    nop

    .end local v4    # "dialogId":I
    .end local v5    # "address":Landroid/net/Uri;
    .end local v8    # "callType":I
    goto :goto_1

    .line 131
    :catch_0
    move-exception v2

    .line 134
    .end local v1    # "info":Lcom/sec/ims/Dialog;
    :cond_0
    :goto_1
    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/google/ImsMultiEndPointImpl;->requestImsExternalCallStateInfo()V

    .line 136
    return-void
.end method
