package util;

import java.sql.Timestamp;

public class TimestampSpan {
    private static final long TO_SECONDS = 1000L;
    private static final long TO_MINUTES = TO_SECONDS * 60;
    private static final long TO_HOURS = TO_MINUTES * 60;
    private static final long TO_DAYS = TO_HOURS * 24;
    private static final long TO_MONTHS = TO_DAYS * 30;
    private static final long TO_YEARS = TO_MONTHS * 12;

    private int years;
    private int months;
    private int days;
    private int hours;
    private int minutes;
    private int seconds;
    private long milliseconds;
    private long start;
    private long end;

    public TimestampSpan(Timestamp start) {
        this.start = start.getTime();
        end = System.currentTimeMillis();
        milliseconds = end - this.start;
        setYears();
        setMonths();
        setDays();
        setHours();
        setMinutes();
        setSeconds();
    }

    public TimestampSpan(long start) {
        this.start = milliseconds;
        end = System.currentTimeMillis();
        milliseconds = end - start;
        setYears();
        setMonths();
        setDays();
        setHours();
        setMinutes();
        setSeconds();
    }

    public int getYears() {
        return years;
    }

    public int getMonths() {
        return months;
    }

    public int getDays() {
        return days;
    }

    public int getHours() {
        return hours;
    }

    public int getMinutes() {
        return minutes;
    }

    public int getSeconds() {
        return seconds;
    }

    private void setYears() {
        if(milliseconds > 0) {
            years = (int)(milliseconds / TimestampSpan.TO_YEARS);
            milliseconds -= (years * TimestampSpan.TO_YEARS);
        }
    }

    private void setMonths() {
        if(milliseconds > 0) {
            months = (int)(milliseconds / TimestampSpan.TO_MONTHS);
            milliseconds -= (months * TimestampSpan.TO_MONTHS);
        }
    }

    private void setDays() {
        if(milliseconds > 0) {
            days = (int)(milliseconds / TimestampSpan.TO_DAYS);
            milliseconds -= (days * TimestampSpan.TO_DAYS);
        }
    }

    private void setHours() {
        if(milliseconds > 0) {
            hours = (int)(milliseconds / TimestampSpan.TO_HOURS);
            milliseconds -= (hours * TimestampSpan.TO_HOURS);
        }
    }

    private void setMinutes() {
        if(milliseconds > 0) {
            minutes = (int)(milliseconds / TimestampSpan.TO_MINUTES);
            milliseconds -= (minutes * TimestampSpan.TO_MINUTES);
        }
    }

    private void setSeconds() {
        if(milliseconds > 0) {
            seconds = (int)(milliseconds / TimestampSpan.TO_SECONDS);
            milliseconds -= (seconds * TimestampSpan.TO_SECONDS);
        }
    }

    private void setStart() {
        this.start = start;
    }

    private void setEnd() {
        this.end = end;
    }

    public String getDifferenceString() {
        String differenceString;
        String stringToFormat = "%s %s ago";

        if(years > 0) {
            if(years == 1 && months <= 6) {
                differenceString = String.format(stringToFormat, years, "year");
            } else {
                differenceString = String.format(
                        stringToFormat,
                        (months > 6 ? "about " + (years + 1) : years),
                        "years"
                );
            }
        } else if(months > 0) {
            if(months == 1 && days <= 15) {
                differenceString = String.format(stringToFormat, months, "month");
            } else {
                differenceString = String.format(
                        stringToFormat,
                        (days > 15 ? "about " + (months + 1) : months),
                        "months"
                );
            }
            //differenceString = String.format("%s months ago", (days > 15 ? "about " + (months + 1) : months));
        } else if(days > 0) {
            if(days == 1 && hours <= 12) {
                differenceString = String.format(stringToFormat, days, "day");
            } else {
                differenceString = String.format(
                        stringToFormat,
                        (hours > 12 ? "about " + (days + 1) : days),
                        "days"
                );
            }
            //differenceString = String.format("%s days ago", (hours > 12 ? "about " + (days + 1) : days));
        } else if(hours > 0) {
            if(hours == 1 && minutes <= 30) {
                differenceString = String.format(stringToFormat, hours, "hour");
            } else {
                differenceString = String.format(
                        stringToFormat,
                        (minutes > 30 ? "about " + (hours + 1) : hours),
                        "hours"
                );
            }
            //differenceString = String.format("%s hours ago", (minutes > 30 ? "about " + (hours + 1) : hours));
        } else if(minutes > 0) {
            if(minutes == 1 && seconds <= 30) {
                differenceString = String.format(stringToFormat, minutes, "minute");
            } else {
                differenceString = String.format(
                        stringToFormat,
                        (seconds > 30 ? "about " + (minutes + 1) : minutes),
                        "minutes"
                );
            }
            //differenceString = String.format("%s minutes ago", (seconds > 30 ? "about " + (minutes + 1) : minutes));
        } else if(seconds > 30) {
            differenceString = String.format("%d seconds ago", seconds);
        } else {
            differenceString = "a few moments ago";
        }

        return differenceString;
    }
}
