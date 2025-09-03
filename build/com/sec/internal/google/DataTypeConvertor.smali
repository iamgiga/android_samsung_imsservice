.class public Lcom/sec/internal/google/DataTypeConvertor;
.super Ljava/lang/Object;
.source "DataTypeConvertor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertEccCatToURN(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "eccCatStr"    # Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    .line 55
    .local v0, "phoneId":I
    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 56
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "urn:service:sos"

    if-eqz v2, :cond_0

    .line 57
    return-object v3

    .line 59
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 60
    .local v2, "eccCat":I
    const/16 v4, 0xfe

    if-ne v2, v4, :cond_1

    .line 61
    const-string v3, "urn:service:unspecified"

    return-object v3

    .line 63
    :cond_1
    const/16 v4, 0x10

    if-ne v2, v4, :cond_2

    .line 64
    const-string v3, "urn:service:sos.mountain"

    return-object v3

    .line 66
    :cond_2
    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    .line 67
    const-string v3, "urn:service:sos.marine"

    return-object v3

    .line 69
    :cond_3
    const/4 v4, 0x4

    const-string v5, "urn:service:sos.fire"

    if-ne v2, v4, :cond_4

    .line 70
    return-object v5

    .line 72
    :cond_4
    const/4 v4, 0x2

    if-ne v2, v4, :cond_5

    .line 73
    const-string v3, "urn:service:sos.ambulance"

    return-object v3

    .line 75
    :cond_5
    const/4 v4, 0x1

    if-ne v2, v4, :cond_6

    .line 76
    const-string v3, "urn:service:sos.police"

    return-object v3

    .line 78
    :cond_6
    const/16 v4, 0x14

    if-ne v2, v4, :cond_7

    .line 79
    const-string v3, "urn:service:sos.traffic"

    return-object v3

    .line 81
    :cond_7
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isJpn()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x6

    if-ne v2, v4, :cond_8

    move-object v3, v5

    :cond_8
    return-object v3
.end method

.method public static convertEccCatToURNSpecificKor(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "eccCatStr"    # Ljava/lang/String;

    .line 85
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "urn:service:sos"

    if-eqz v0, :cond_0

    .line 86
    return-object v1

    .line 88
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 89
    .local v0, "eccCat":I
    const/16 v2, 0xfe

    if-ne v0, v2, :cond_1

    .line 90
    const-string v1, "urn:service:unspecified"

    return-object v1

    .line 92
    :cond_1
    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    .line 93
    const-string v1, "urn:service:sos.marine"

    return-object v1

    .line 95
    :cond_2
    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 96
    const-string v1, "urn:service:sos.fire"

    return-object v1

    .line 98
    :cond_3
    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 99
    const-string v1, "urn:service:sos.police"

    return-object v1

    .line 101
    :cond_4
    const/4 v2, 0x6

    if-eq v0, v2, :cond_a

    const/4 v2, 0x7

    if-ne v0, v2, :cond_5

    goto :goto_0

    .line 104
    :cond_5
    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    .line 105
    const-string v1, "urn:service:sos.country-specific.kr.113"

    return-object v1

    .line 107
    :cond_6
    const/16 v2, 0x12

    if-ne v0, v2, :cond_7

    .line 108
    const-string v1, "urn:service:sos.country-specific.kr.117"

    return-object v1

    .line 110
    :cond_7
    const/16 v2, 0x13

    if-ne v0, v2, :cond_8

    .line 111
    const-string v1, "urn:service:sos.country-specific.kr.118"

    return-object v1

    .line 113
    :cond_8
    const/16 v2, 0x9

    if-ne v0, v2, :cond_9

    const-string v1, "urn:service:sos.country-specific.kr.125"

    :cond_9
    return-object v1

    .line 102
    :cond_a
    :goto_0
    const-string v1, "urn:service:sos.country-specific.kr.111"

    return-object v1
.end method

.method public static convertToClirPrefix(I)Ljava/lang/String;
    .locals 1
    .param p0, "clirMode"    # I

    .line 117
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    .line 118
    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    .line 119
    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 120
    const/4 v0, 0x0

    return-object v0

    .line 122
    :cond_0
    const-string v0, "unknown"

    return-object v0

    .line 124
    :cond_1
    const-string v0, "*31#"

    return-object v0

    .line 126
    :cond_2
    const-string v0, "#31#"

    return-object v0
.end method

.method public static convertToGoogleCallType(I)I
    .locals 1
    .param p0, "type"    # I

    .line 173
    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_0

    .line 187
    :pswitch_0
    return v0

    .line 184
    :pswitch_1
    const/4 v0, 0x6

    return v0

    .line 182
    :pswitch_2
    const/4 v0, 0x5

    return v0

    .line 180
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 176
    :pswitch_4
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static convertToGoogleImsReason(I)Landroid/telephony/ims/ImsReasonInfo;
    .locals 4
    .param p0, "errorCode"    # I

    .line 22
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v1, 0x1

    const-string v2, ""

    const/16 v3, 0x3e8

    invoke-direct {v0, v3, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public static convertToGoogleMediaProfile(Lcom/sec/ims/volte2/data/MediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 6
    .param p0, "profile"    # Lcom/sec/ims/volte2/data/MediaProfile;

    .line 226
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 227
    .local v0, "convertedProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    const/4 v1, 0x0

    .line 228
    .local v1, "videoQuality":I
    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoQuality()I

    move-result v2

    .line 229
    .local v2, "profileVideoQuality":I
    if-nez v2, :cond_0

    .line 230
    const/4 v1, 0x0

    goto :goto_0

    .line 231
    :cond_0
    const/16 v3, 0xf

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    .line 232
    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    .line 233
    const/4 v1, 0x1

    goto :goto_0

    .line 234
    :cond_1
    const/16 v3, 0xd

    if-ne v2, v3, :cond_5

    .line 235
    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoOrientation()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 236
    const/4 v1, 0x2

    goto :goto_0

    .line 238
    :cond_2
    const/4 v1, 0x4

    goto :goto_0

    .line 241
    :cond_3
    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoOrientation()I

    move-result v3

    if-ne v3, v4, :cond_4

    .line 242
    const/16 v1, 0x8

    goto :goto_0

    .line 244
    :cond_4
    const/16 v1, 0x10

    .line 246
    :cond_5
    :goto_0
    const/4 v3, 0x1

    .line 247
    .local v3, "audioQuality":I
    sget-object v4, Lcom/sec/internal/google/DataTypeConvertor$1;->$SwitchMap$com$sec$ims$volte2$data$VolteConstants$AudioCodecType:[I

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/MediaProfile;->getAudioCodec()Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 266
    :pswitch_0
    const/16 v3, 0x14

    goto :goto_1

    .line 263
    :pswitch_1
    const/16 v3, 0x13

    .line 264
    goto :goto_1

    .line 260
    :pswitch_2
    const/16 v3, 0x12

    .line 261
    goto :goto_1

    .line 257
    :pswitch_3
    const/16 v3, 0x11

    .line 258
    goto :goto_1

    .line 253
    :pswitch_4
    const/4 v3, 0x2

    .line 254
    goto :goto_1

    .line 250
    :pswitch_5
    const/4 v3, 0x1

    .line 251
    nop

    .line 269
    :goto_1
    iput v3, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 270
    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 271
    const/4 v4, 0x3

    iput v4, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 272
    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoPause()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 273
    const/4 v4, 0x0

    iput v4, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_2

    .line 275
    :cond_6
    iput v4, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 277
    :goto_2
    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/MediaProfile;->getRttMode()I

    move-result v4

    iput v4, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 278
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToSecCallProfile(ILandroid/telephony/ims/ImsCallProfile;Z)Lcom/sec/ims/volte2/data/CallProfile;
    .locals 10
    .param p0, "phoneId"    # I
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "isTtyMode"    # Z

    .line 282
    new-instance v0, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {v0}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    .line 283
    .local v0, "convertedProfile":Lcom/sec/ims/volte2/data/CallProfile;
    invoke-virtual {v0, p0}, Lcom/sec/ims/volte2/data/CallProfile;->setPhoneId(I)V

    .line 284
    iget-object v1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v2, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 285
    .local v1, "oemExtras":Landroid/os/Bundle;
    const-string v2, ""

    .line 286
    .local v2, "eccCatStr":Ljava/lang/String;
    const-string v3, ""

    .line 287
    .local v3, "emergencyRat":Ljava/lang/String;
    const/4 v4, 0x0

    .line 288
    .local v4, "isGroupCall":Z
    if-eqz v1, :cond_2

    .line 289
    const-string v5, "EccCat"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 290
    const-string v5, "imsEmergencyRat"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 291
    const-string v5, "DisplayText"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 292
    .local v5, "letteringText":Ljava/lang/String;
    const-string v6, "com.samsung.telephony.extra.ALERT_INFO"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 293
    .local v6, "alertInfo":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 294
    invoke-virtual {v0, v5}, Lcom/sec/ims/volte2/data/CallProfile;->setLetteringText(Ljava/lang/String;)V

    .line 296
    :cond_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 297
    invoke-virtual {v0, v6}, Lcom/sec/ims/volte2/data/CallProfile;->setAlertInfo(Ljava/lang/String;)V

    .line 299
    :cond_1
    const-string v7, "com.samsung.telephony.extra.DIAL_CONFERENCE_CALL"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 301
    .end local v5    # "letteringText":Ljava/lang/String;
    .end local v6    # "alertInfo":Ljava/lang/String;
    :cond_2
    const-string v5, "e_call"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const/4 v7, 0x2

    if-nez v5, :cond_5

    iget v5, p1, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    if-ne v5, v7, :cond_3

    goto :goto_0

    .line 321
    :cond_3
    const-string v5, "dialstring"

    invoke-virtual {p1, v5, v6}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v5

    .line 322
    .local v5, "dialingString2":I
    if-ne v5, v7, :cond_4

    .line 323
    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    goto/16 :goto_4

    .line 325
    :cond_4
    iget v8, p1, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    iget v9, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v8, v9, p2, v4}, Lcom/sec/internal/google/DataTypeConvertor;->convertToSecCallType(IIZZ)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 326
    const-string v8, "oir"

    invoke-virtual {p1, v8, v6}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/sec/internal/google/DataTypeConvertor;->convertToClirPrefix(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sec/ims/volte2/data/CallProfile;->setCLI(Ljava/lang/String;)V

    goto :goto_4

    .line 302
    .end local v5    # "dialingString2":I
    :cond_5
    :goto_0
    iget v5, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 303
    .local v5, "dialingString":I
    invoke-static {v7, v5, p2, v4}, Lcom/sec/internal/google/DataTypeConvertor;->convertToSecCallType(IIZZ)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 304
    invoke-virtual {v0, v3}, Lcom/sec/ims/volte2/data/CallProfile;->setEmergencyRat(Ljava/lang/String;)V

    .line 305
    const-string v6, "VoWIFI"

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v8, "CallRadioTech"

    if-eqz v6, :cond_6

    .line 306
    const/16 v6, 0x12

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v8, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 308
    :cond_6
    const/16 v6, 0xe

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v8, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :goto_1
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v6

    .line 311
    .local v6, "mno":Lcom/sec/internal/constants/Mno;
    const-string v8, "persist.omc.sales_code"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 312
    .local v8, "salesCode":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 313
    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 315
    :cond_7
    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v9

    if-nez v9, :cond_9

    sget-object v9, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    if-ne v6, v9, :cond_8

    const-string v9, "KTC"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_2

    .line 318
    :cond_8
    invoke-static {v2}, Lcom/sec/internal/google/DataTypeConvertor;->convertEccCatToURN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/sec/ims/volte2/data/CallProfile;->setUrn(Ljava/lang/String;)V

    goto :goto_3

    .line 316
    :cond_9
    :goto_2
    invoke-static {v2}, Lcom/sec/internal/google/DataTypeConvertor;->convertEccCatToURNSpecificKor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/sec/ims/volte2/data/CallProfile;->setUrn(Ljava/lang/String;)V

    .line 320
    .end local v5    # "dialingString":I
    .end local v6    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v8    # "salesCode":Ljava/lang/String;
    :goto_3
    nop

    .line 329
    :goto_4
    if-eqz v4, :cond_a

    .line 330
    invoke-virtual {v0, v7}, Lcom/sec/ims/volte2/data/CallProfile;->setConferenceCall(I)V

    .line 332
    :cond_a
    iget-object v5, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-static {v5}, Lcom/sec/internal/google/DataTypeConvertor;->convertToSecMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/ims/volte2/data/CallProfile;->setMediaProfile(Lcom/sec/ims/volte2/data/MediaProfile;)V

    .line 333
    invoke-static {p1}, Lcom/sec/internal/google/DataTypeConvertor;->processCallComposerInfo(Landroid/telephony/ims/ImsCallProfile;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/ims/volte2/data/CallProfile;->setComposerData(Landroid/os/Bundle;)V

    .line 334
    return-object v0
.end method

.method public static convertToSecCallType(I)I
    .locals 1
    .param p0, "callType"    # I

    .line 130
    const/4 v0, 0x0

    invoke-static {v0, p0, v0, v0}, Lcom/sec/internal/google/DataTypeConvertor;->convertToSecCallType(IIZZ)I

    move-result v0

    return v0
.end method

.method public static convertToSecCallType(IIZZ)I
    .locals 3
    .param p0, "serviceType"    # I
    .param p1, "callType"    # I
    .param p2, "isTtyMode"    # Z
    .param p3, "isGroupCall"    # Z

    .line 134
    const/4 v0, 0x1

    const/4 v1, 0x7

    const/4 v2, 0x2

    packed-switch p1, :pswitch_data_0

    .line 148
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 165
    :pswitch_1
    if-ne p0, v2, :cond_0

    .line 166
    return v1

    .line 168
    :cond_0
    return v0

    .line 163
    :pswitch_2
    const/4 v0, 0x4

    return v0

    .line 160
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 151
    :pswitch_4
    if-ne p0, v2, :cond_1

    .line 152
    const/16 v0, 0x8

    return v0

    .line 154
    :cond_1
    if-eqz p3, :cond_2

    .line 155
    const/4 v0, 0x6

    return v0

    .line 157
    :cond_2
    return v2

    .line 136
    :pswitch_5
    if-ne p0, v2, :cond_3

    .line 137
    return v1

    .line 139
    :cond_3
    if-eqz p2, :cond_4

    .line 140
    const/16 v0, 0x9

    return v0

    .line 142
    :cond_4
    if-eqz p3, :cond_5

    .line 143
    const/4 v0, 0x5

    return v0

    .line 145
    :cond_5
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static convertToSecMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)Lcom/sec/ims/volte2/data/MediaProfile;
    .locals 8
    .param p0, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 192
    new-instance v0, Lcom/sec/ims/volte2/data/MediaProfile;

    invoke-direct {v0}, Lcom/sec/ims/volte2/data/MediaProfile;-><init>()V

    .line 193
    .local v0, "convertedProfile":Lcom/sec/ims/volte2/data/MediaProfile;
    const/4 v1, -0x1

    .line 194
    .local v1, "videoQuality":I
    const/4 v2, 0x0

    .line 195
    .local v2, "videoOrientation":I
    iget v3, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 196
    .local v3, "i":I
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v3, :cond_0

    .line 197
    const/4 v1, 0x0

    goto :goto_0

    .line 198
    :cond_0
    if-ne v3, v5, :cond_1

    .line 199
    const/16 v1, 0xc

    goto :goto_0

    .line 200
    :cond_1
    if-ne v3, v4, :cond_2

    .line 201
    const/16 v1, 0xd

    .line 202
    const/4 v2, 0x1

    goto :goto_0

    .line 203
    :cond_2
    const/4 v6, 0x4

    if-ne v3, v6, :cond_3

    .line 204
    const/16 v1, 0xd

    goto :goto_0

    .line 205
    :cond_3
    const/16 v6, 0x8

    if-ne v3, v6, :cond_4

    .line 206
    const/16 v1, 0xf

    .line 207
    const/4 v2, 0x1

    goto :goto_0

    .line 208
    :cond_4
    const/16 v6, 0x10

    if-ne v3, v6, :cond_5

    .line 209
    const/16 v1, 0xf

    .line 211
    :cond_5
    :goto_0
    sget-object v6, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_NONE:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 212
    .local v6, "audioCodec":Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;
    iget v7, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 213
    .local v7, "i2":I
    if-ne v7, v5, :cond_6

    .line 214
    sget-object v6, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_1

    .line 215
    :cond_6
    if-ne v7, v4, :cond_7

    .line 216
    sget-object v6, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 218
    :cond_7
    :goto_1
    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/MediaProfile;->setVideoQuality(I)V

    .line 219
    invoke-virtual {v0, v2}, Lcom/sec/ims/volte2/data/MediaProfile;->setVideoOrientation(I)V

    .line 220
    invoke-virtual {v0, v6}, Lcom/sec/ims/volte2/data/MediaProfile;->setAudioCodec(Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;)V

    .line 221
    invoke-virtual {p0}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/ims/volte2/data/MediaProfile;->setRttMode(I)V

    .line 222
    return-object v0
.end method

.method public static convertUrnToEccCat(Ljava/lang/String;)I
    .locals 3
    .param p0, "urn"    # Ljava/lang/String;

    .line 26
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 27
    return v1

    .line 29
    :cond_0
    const-string v0, "urn:service:unspecified"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0xfe

    if-eqz v0, :cond_1

    .line 30
    return v2

    .line 32
    :cond_1
    const-string v0, "urn:service:sos.mountain"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    const/16 v0, 0x10

    return v0

    .line 35
    :cond_2
    const-string v0, "urn:service:sos.marine"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 36
    const/16 v0, 0x8

    return v0

    .line 38
    :cond_3
    const-string v0, "urn:service:sos.fire"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 39
    const/4 v0, 0x4

    return v0

    .line 41
    :cond_4
    const-string v0, "urn:service:sos.ambulance"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 42
    const/4 v0, 0x2

    return v0

    .line 44
    :cond_5
    const-string v0, "urn:service:sos.police"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 45
    const/4 v0, 0x1

    return v0

    .line 47
    :cond_6
    const-string v0, "urn:service:sos.traffic"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 48
    const/16 v0, 0x14

    return v0

    .line 50
    :cond_7
    const-string v0, "urn:service:sos"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    move v1, v2

    :goto_0
    return v1
.end method

.method private static processCallComposerInfo(Landroid/telephony/ims/ImsCallProfile;)Landroid/os/Bundle;
    .locals 6
    .param p0, "imsprofile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 338
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 339
    .local v0, "cBundle":Landroid/os/Bundle;
    if-eqz p0, :cond_4

    .line 340
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 341
    .local v1, "callMainExtras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v2, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 342
    .local v2, "callExtras":Landroid/os/Bundle;
    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 343
    const-string v3, "EXTRA_CALL_IMPORTANCE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 344
    const-string v4, "importance"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 346
    :cond_1
    const-string v3, "EXTRA_CALL_SUBJECT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 347
    const-string v4, "subject"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_2
    const-string v3, "EXTRA_CALL_IMAGE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 350
    const-string v4, "image"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_3
    const-string v3, "EXTRA_CALL_LATITUDE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "EXTRA_CALL_LONGITUDE"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 353
    const-string v5, "longitude"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v4, "latitude"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v3, "EXTRA_CALL_RADIUS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 356
    const-string v4, "radius"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .end local v1    # "callMainExtras":Landroid/os/Bundle;
    .end local v2    # "callExtras":Landroid/os/Bundle;
    :cond_4
    return-object v0
.end method
