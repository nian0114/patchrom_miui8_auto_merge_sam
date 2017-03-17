.class final Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
.super Ljava/lang/Object;
.source "AbstractDateTimeDV.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/datatypes/XSDateTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DateTimeData"
.end annotation


# instance fields
.field private canonical:Ljava/lang/String;

.field day:I

.field hour:I

.field minute:I

.field month:I

.field normalized:Z

.field private originalValue:Ljava/lang/String;

.field position:I

.field second:D

.field timezoneHr:I

.field timezoneMin:I

.field final type:Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

.field unNormDay:I

.field unNormHour:I

.field unNormMinute:I

.field unNormMonth:I

.field unNormSecond:D

.field unNormYear:I

.field utc:I

.field year:I


# direct methods
.method public constructor <init>(IIIIIDILjava/lang/String;ZLmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # D
    .param p8, "utc"    # I
    .param p9, "originalValue"    # Ljava/lang/String;
    .param p10, "normalized"    # Z
    .param p11, "type"    # Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    iput p1, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    iput p2, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    iput p3, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    iput p4, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    iput p5, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    iput-wide p6, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    iput p8, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    iput-object p11, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    iput-object p9, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->originalValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;)V
    .locals 1
    .param p1, "originalValue"    # Ljava/lang/String;
    .param p2, "type"    # Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->originalValue:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 12

    .prologue
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    iget v5, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    iget-wide v6, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    iget v8, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    iget-object v9, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->originalValue:Ljava/lang/String;

    iget-boolean v10, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    iget-object v11, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    invoke-direct/range {v0 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;-><init>(IIIIIDILjava/lang/String;ZLmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;)V

    .local v0, "dt":Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->canonical:Ljava/lang/String;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->canonical:Ljava/lang/String;

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->position:I

    iput v1, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->position:I

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    iput v1, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    iput v1, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormYear:I

    iput v1, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormYear:I

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormMonth:I

    iput v1, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormMonth:I

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormDay:I

    iput v1, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormDay:I

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormHour:I

    iput v1, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormHour:I

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormMinute:I

    iput v1, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormMinute:I

    iget-wide v2, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormSecond:D

    iput-wide v2, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormSecond:D

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    instance-of v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    if-nez v2, :cond_1

    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {v2, p0, p1, v1}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->compareDates(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Z)S

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getDays()I
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    instance-of v0, v0, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormDay:I

    goto :goto_0
.end method

.method public getDuration()Lmf/javax/xml/datatype/Duration;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->getDuration(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getHours()I
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    instance-of v0, v0, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormHour:I

    goto :goto_0
.end method

.method public getLexicalValue()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->originalValue:Ljava/lang/String;

    return-object v0
.end method

.method public getMinutes()I
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    instance-of v0, v0, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormMinute:I

    goto :goto_0
.end method

.method public getMonths()I
    .locals 2

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    instance-of v0, v0, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;

    if-eqz v0, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    mul-int/lit8 v0, v0, 0xc

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormMonth:I

    goto :goto_0
.end method

.method public getSeconds()D
    .locals 4

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    instance-of v0, v0, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;

    if-eqz v0, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    mul-int/lit8 v0, v0, 0x18

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    int-to-double v0, v0

    iget-wide v2, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    add-double/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormSecond:D

    goto :goto_0
.end method

.method public getTimeZoneHours()I
    .locals 1

    .prologue
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    return v0
.end method

.method public getTimeZoneMinutes()I
    .locals 1

    .prologue
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    return v0
.end method

.method public getXMLGregorianCalendar()Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->getXMLGregorianCalendar(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    return-object v0
.end method

.method public getYears()I
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    instance-of v0, v0, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormYear:I

    goto :goto_0
.end method

.method public hasTimeZone()Z
    .locals 1

    .prologue
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNormalized()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    return v0
.end method

.method public normalize()Lmf/org/apache/xerces/xs/datatypes/XSDateTime;
    .locals 2

    .prologue
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    .local v0, "dt":Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    .end local v0    # "dt":Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->canonical:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->dateToString(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->canonical:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->canonical:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
