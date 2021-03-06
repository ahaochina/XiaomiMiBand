.class public Lcom/xiaomi/hm/health/dataprocess/SportDay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ISO_FIRST_DAY_OF_WEEK:I = 0x2

.field private static final ISO_MINIMAL_DAYS_IN_FIRST_WEEK:I = 0x4

.field private static final US_FIRST_DAY_OF_WEEK:I = 0x1

.field private static final US_MINIMAL_DAYS_IN_FIRST_WEEK:I = 0x1

.field private static sFirstDayOfWeek:I = 0x0

.field private static sIsEnglish:Z = false

.field private static sMinimalDaysInFirstWeek:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public calendar:Ljava/util/Calendar;

.field public day:I

.field public mon:I

.field public year:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x2

    sput v0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->sFirstDayOfWeek:I

    const/4 v0, 0x4

    sput v0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->sMinimalDaysInFirstWeek:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->sIsEnglish:Z

    sget-boolean v0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->sIsEnglish:Z

    if-eqz v0, :cond_0

    sput v2, Lcom/xiaomi/hm/health/dataprocess/SportDay;->sFirstDayOfWeek:I

    sput v2, Lcom/xiaomi/hm/health/dataprocess/SportDay;->sMinimalDaysInFirstWeek:I

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/hm/health/dataprocess/SportDay;-><init>(Ljava/util/Calendar;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->year:I

    iput p2, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->mon:I

    iput p3, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->day:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->year:I

    iget v2, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->mon:I

    iget v3, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->day:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    sget v1, Lcom/xiaomi/hm/health/dataprocess/SportDay;->sFirstDayOfWeek:I

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    sget v1, Lcom/xiaomi/hm/health/dataprocess/SportDay;->sMinimalDaysInFirstWeek:I

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GMT+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    div-int/lit8 v2, v2, 0x3c

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    iput-object v0, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->calendar:Ljava/util/Calendar;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/hm/health/dataprocess/SportDay;)V
    .locals 3

    iget v0, p1, Lcom/xiaomi/hm/health/dataprocess/SportDay;->year:I

    iget v1, p1, Lcom/xiaomi/hm/health/dataprocess/SportDay;->mon:I

    iget v2, p1, Lcom/xiaomi/hm/health/dataprocess/SportDay;->day:I

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/hm/health/dataprocess/SportDay;-><init>(III)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->year:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->mon:I

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->day:I

    sget v0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->sFirstDayOfWeek:I

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    sget v0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->sMinimalDaysInFirstWeek:I

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GMT+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    div-int/lit8 v1, v1, 0x3c

    div-int/lit8 v1, v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    iput-object p1, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->calendar:Ljava/util/Calendar;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/xiaomi/hm/health/dataprocess/SportDay;
    .locals 4

    :try_start_0
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-instance v0, Lcom/xiaomi/hm/health/dataprocess/SportDay;

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/hm/health/dataprocess/SportDay;-><init>(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/xiaomi/hm/health/dataprocess/SportDay;

    invoke-direct {v0}, Lcom/xiaomi/hm/health/dataprocess/SportDay;-><init>()V

    goto :goto_0
.end method

.method public static getToday()Lcom/xiaomi/hm/health/dataprocess/SportDay;
    .locals 1

    new-instance v0, Lcom/xiaomi/hm/health/dataprocess/SportDay;

    invoke-direct {v0}, Lcom/xiaomi/hm/health/dataprocess/SportDay;-><init>()V

    return-object v0
.end method

.method public static onLocaleChanged(Z)V
    .locals 2

    const/4 v1, 0x1

    sget-boolean v0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->sIsEnglish:Z

    if-eq p0, v0, :cond_0

    sput-boolean p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->sIsEnglish:Z

    sget-boolean v0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->sIsEnglish:Z

    if-eqz v0, :cond_1

    sput v1, Lcom/xiaomi/hm/health/dataprocess/SportDay;->sFirstDayOfWeek:I

    sput v1, Lcom/xiaomi/hm/health/dataprocess/SportDay;->sMinimalDaysInFirstWeek:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    sput v0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->sFirstDayOfWeek:I

    const/4 v0, 0x4

    sput v0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->sMinimalDaysInFirstWeek:I

    goto :goto_0
.end method

.method public static toCalenday(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    :try_start_0
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x2

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/Calendar;->set(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public addDay(I)Lcom/xiaomi/hm/health/dataprocess/SportDay;
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->year:I

    iget v2, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->mon:I

    iget v3, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->day:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    new-instance v1, Lcom/xiaomi/hm/health/dataprocess/SportDay;

    invoke-direct {v1, v0}, Lcom/xiaomi/hm/health/dataprocess/SportDay;-><init>(Ljava/util/Calendar;)V

    return-object v1
.end method

.method public addMonth(I)Lcom/xiaomi/hm/health/dataprocess/SportDay;
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->year:I

    iget v2, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->mon:I

    iget v3, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->day:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    new-instance v1, Lcom/xiaomi/hm/health/dataprocess/SportDay;

    invoke-direct {v1, v0}, Lcom/xiaomi/hm/health/dataprocess/SportDay;-><init>(Ljava/util/Calendar;)V

    return-object v1
.end method

.method public addWeek(I)Lcom/xiaomi/hm/health/dataprocess/SportDay;
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->year:I

    iget v2, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->mon:I

    iget v3, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->day:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    new-instance v1, Lcom/xiaomi/hm/health/dataprocess/SportDay;

    invoke-direct {v1, v0}, Lcom/xiaomi/hm/health/dataprocess/SportDay;-><init>(Ljava/util/Calendar;)V

    return-object v1
.end method

.method public addYear(I)Lcom/xiaomi/hm/health/dataprocess/SportDay;
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->year:I

    iget v2, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->mon:I

    iget v3, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->day:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    new-instance v1, Lcom/xiaomi/hm/health/dataprocess/SportDay;

    invoke-direct {v1, v0}, Lcom/xiaomi/hm/health/dataprocess/SportDay;-><init>(Ljava/util/Calendar;)V

    return-object v1
.end method

.method public after(Lcom/xiaomi/hm/health/dataprocess/SportDay;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->year:I

    iget v3, p1, Lcom/xiaomi/hm/health/dataprocess/SportDay;->year:I

    if-le v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->year:I

    iget v3, p1, Lcom/xiaomi/hm/health/dataprocess/SportDay;->year:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->mon:I

    iget v3, p1, Lcom/xiaomi/hm/health/dataprocess/SportDay;->mon:I

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->mon:I

    iget v3, p1, Lcom/xiaomi/hm/health/dataprocess/SportDay;->mon:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->day:I

    iget v3, p1, Lcom/xiaomi/hm/health/dataprocess/SportDay;->day:I

    if-gt v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public before(Lcom/xiaomi/hm/health/dataprocess/SportDay;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->year:I

    iget v3, p1, Lcom/xiaomi/hm/health/dataprocess/SportDay;->year:I

    if-ge v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->year:I

    iget v3, p1, Lcom/xiaomi/hm/health/dataprocess/SportDay;->year:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->mon:I

    iget v3, p1, Lcom/xiaomi/hm/health/dataprocess/SportDay;->mon:I

    if-lt v2, v3, :cond_0

    iget v2, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->mon:I

    iget v3, p1, Lcom/xiaomi/hm/health/dataprocess/SportDay;->mon:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->day:I

    iget v3, p1, Lcom/xiaomi/hm/health/dataprocess/SportDay;->day:I

    if-lt v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public compare(Lcom/xiaomi/hm/health/dataprocess/SportDay;)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, -0x1

    iget v2, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->year:I

    iget v3, p1, Lcom/xiaomi/hm/health/dataprocess/SportDay;->year:I

    if-le v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->year:I

    iget v3, p1, Lcom/xiaomi/hm/health/dataprocess/SportDay;->year:I

    if-ge v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->mon:I

    iget v3, p1, Lcom/xiaomi/hm/health/dataprocess/SportDay;->mon:I

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->mon:I

    iget v3, p1, Lcom/xiaomi/hm/health/dataprocess/SportDay;->mon:I

    if-ge v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->day:I

    iget v3, p1, Lcom/xiaomi/hm/health/dataprocess/SportDay;->day:I

    if-gt v2, v3, :cond_0

    iget v0, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->day:I

    iget v2, p1, Lcom/xiaomi/hm/health/dataprocess/SportDay;->day:I

    if-ge v0, v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(III)Z
    .locals 1

    iget v0, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->day:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->mon:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->year:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Lcom/xiaomi/hm/health/dataprocess/SportDay;)Z
    .locals 2

    iget v0, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->day:I

    iget v1, p1, Lcom/xiaomi/hm/health/dataprocess/SportDay;->day:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->mon:I

    iget v1, p1, Lcom/xiaomi/hm/health/dataprocess/SportDay;->mon:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->year:I

    iget v1, p1, Lcom/xiaomi/hm/health/dataprocess/SportDay;->year:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/util/Calendar;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/hm/health/dataprocess/SportDay;->equals(III)Z

    move-result v0

    return v0
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/hm/health/dataprocess/SportDay;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMonthEndDay()Lcom/xiaomi/hm/health/dataprocess/SportDay;
    .locals 6

    invoke-virtual {p0}, Lcom/xiaomi/hm/health/dataprocess/SportDay;->getMonthStartDay()Lcom/xiaomi/hm/health/dataprocess/SportDay;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v0, 0x1

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_0
    const/4 v3, 0x4

    if-gt v1, v3, :cond_0

    rsub-int/lit8 v0, v1, 0x1f

    invoke-virtual {v2, v0}, Lcom/xiaomi/hm/health/dataprocess/SportDay;->addDay(I)Lcom/xiaomi/hm/health/dataprocess/SportDay;

    move-result-object v0

    iget v3, v0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->year:I

    iget v4, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->year:I

    if-ne v3, v4, :cond_1

    iget v3, v0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->mon:I

    iget v4, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->mon:I

    if-ne v3, v4, :cond_1

    :cond_0
    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getMonthStartDay()Lcom/xiaomi/hm/health/dataprocess/SportDay;
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->year:I

    iget v2, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->mon:I

    iget v3, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->day:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    new-instance v1, Lcom/xiaomi/hm/health/dataprocess/SportDay;

    invoke-direct {v1, v0}, Lcom/xiaomi/hm/health/dataprocess/SportDay;-><init>(Ljava/util/Calendar;)V

    return-object v1
.end method

.method public getTimestamp()J
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    iget v1, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->year:I

    iget v2, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->mon:I

    iget v3, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->day:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWeek()I
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method public getWeekStartDay()Lcom/xiaomi/hm/health/dataprocess/SportDay;
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iget v0, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->year:I

    iget v2, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->mon:I

    iget v3, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->day:I

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Calendar;->set(III)V

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sget v2, Lcom/xiaomi/hm/health/dataprocess/SportDay;->sFirstDayOfWeek:I

    sub-int/2addr v0, v2

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x7

    :cond_0
    const/4 v2, 0x6

    neg-int v0, v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->add(II)V

    new-instance v0, Lcom/xiaomi/hm/health/dataprocess/SportDay;

    invoke-direct {v0, v1}, Lcom/xiaomi/hm/health/dataprocess/SportDay;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public isToday()Z
    .locals 1

    new-instance v0, Lcom/xiaomi/hm/health/dataprocess/SportDay;

    invoke-direct {v0}, Lcom/xiaomi/hm/health/dataprocess/SportDay;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/health/dataprocess/SportDay;->offsetDay(Lcom/xiaomi/hm/health/dataprocess/SportDay;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isYesterday()Z
    .locals 2

    new-instance v0, Lcom/xiaomi/hm/health/dataprocess/SportDay;

    invoke-direct {v0}, Lcom/xiaomi/hm/health/dataprocess/SportDay;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xiaomi/hm/health/dataprocess/SportDay;->offsetDay(Lcom/xiaomi/hm/health/dataprocess/SportDay;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offsetDay(Lcom/xiaomi/hm/health/dataprocess/SportDay;)I
    .locals 9

    const/16 v8, 0xe

    const/16 v7, 0xd

    const/16 v6, 0xc

    const/16 v5, 0xb

    const/4 v4, 0x6

    iget-object v0, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->calendar:Ljava/util/Calendar;

    iget-object v1, p1, Lcom/xiaomi/hm/health/dataprocess/SportDay;->calendar:Ljava/util/Calendar;

    iget v2, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->year:I

    iget v3, p1, Lcom/xiaomi/hm/health/dataprocess/SportDay;->year:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->clear(I)V

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->clear(I)V

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->clear(I)V

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->clear(I)V

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->clear(I)V

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->clear(I)V

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->clear(I)V

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->clear(I)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public offsetMonth(Lcom/xiaomi/hm/health/dataprocess/SportDay;)I
    .locals 3

    iget v0, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->year:I

    iget v1, p1, Lcom/xiaomi/hm/health/dataprocess/SportDay;->year:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->mon:I

    iget v1, p1, Lcom/xiaomi/hm/health/dataprocess/SportDay;->mon:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->year:I

    iget v1, p1, Lcom/xiaomi/hm/health/dataprocess/SportDay;->year:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xc

    iget v1, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->mon:I

    iget v2, p1, Lcom/xiaomi/hm/health/dataprocess/SportDay;->mon:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public offsetWeek(Lcom/xiaomi/hm/health/dataprocess/SportDay;)I
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->calendar:Ljava/util/Calendar;

    iget-object v1, p1, Lcom/xiaomi/hm/health/dataprocess/SportDay;->calendar:Ljava/util/Calendar;

    iget v2, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->year:I

    iget v3, p1, Lcom/xiaomi/hm/health/dataprocess/SportDay;->year:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-lt v2, v3, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-lt v2, v3, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/hm/health/dataprocess/SportDay;->getWeekStartDay()Lcom/xiaomi/hm/health/dataprocess/SportDay;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/hm/health/dataprocess/SportDay;->getWeekStartDay()Lcom/xiaomi/hm/health/dataprocess/SportDay;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/hm/health/dataprocess/SportDay;->offsetDay(Lcom/xiaomi/hm/health/dataprocess/SportDay;)I

    move-result v0

    div-int/lit8 v0, v0, 0x7

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0xa

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->mon:I

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->mon:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->day:I

    if-ge v1, v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    iget v1, p0, Lcom/xiaomi/hm/health/dataprocess/SportDay;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
