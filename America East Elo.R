library(EloRating)
xdata <- AE.xdata
seqcheck(winner=xdata$winner, loser=xdata$loser, Date=xdata$Date)
res <- elo.seq(winner=xdata$winner, loser=xdata$loser, Date=xdata$Date, k=24, startvalue=1500, runcheck=TRUE)
summary(res)
extract.elo(res, "2017-03-11")
eloplot(res)
eloplot(res,ids=c("Vermont", "Albany (NY)", "Stony Brook", "New Hampshire", "Maryland-Baltimore County", "Hartford", "Massachusetts-Lowell", "Maine", "Binghamton"), from="2001-12-29", to="2017-03-11")
data(adv)
creatematrix(res, daterange=NULL, drawmethod="omit", onlyinteracting=FALSE)
print(eloplot(res))
traj.elo(res, "Binghamton")
stab.elo(res, from="2016-12-25", to="2017-03-11")
eloplot(res,ids=c("Vermont", "Albany (NY)", "Stony Brook", "New Hampshire", "Maryland-Baltimore County", "Hartford", "Massachusetts-Lowell", "Maine", "Binghamton"), from="2016-12-29", to="2017-03-11")
eloplot(res,ids=c("Vermont", "Albany (NY)", "Stony Brook", "New Hampshire", "Maryland-Baltimore County", "Hartford", "Massachusetts-Lowell", "Maine", "Binghamton"), from="2015-12-29", to="2016-03-11")
creatematrix(res, daterange=c("2016-12-29", "2017-03-11"), drawmethod="omit", onlyinteracting=TRUE)
pew <- print(res$mat)
write.csv(pew, "AE_Elo.csv")
write.csv(res$truedates, "AE_Dates.csv")
winprob()
###Presence Data###
names(aepres2) <- c("Date", "Northeastern", "Binghamton", "Stony Brook", "New Hampshire", "Vermont", "Albany (NY)", "Hartford", "Maine", "Boston University", "Maryland-Baltimore County", "Massachusetts-Lowell")
aepres2[, 1] <- as.Date(as.character(aepres[, 1]))
seqcheck(winner=xdata$winner, loser=xdata$loser, Date=xdata$Date, presence=aepres2)
res2 <- elo.seq(winner = xdata$winner, loser = xdata$loser, Date = xdata$Date, presence = aepres2)
eloplot(res2)
pew2 <- print(res2$mat)
write.csv(pew2, "aepres_Elo.csv")
extract.elo(res, "2009-03-14")
#Export year end elo
elo2002 <- extract.elo(res, "2002-03-25")
elo2003 <- extract.elo(res, "2003-03-25")
elo2004 <- extract.elo(res, "2004-03-25")
elo2005 <- extract.elo(res, "2005-03-25")
elo2006 <- extract.elo(res, "2006-03-25")
elo2007 <- extract.elo(res, "2007-03-25")
elo2008 <- extract.elo(res, "2008-03-25")
elo2009 <- extract.elo(res, "2009-03-25")
elo2010 <- extract.elo(res, "2010-03-25")
elo2011 <- extract.elo(res, "2011-03-25")
elo2012 <- extract.elo(res, "2012-03-25")
elo2013 <- extract.elo(res, "2013-03-25")
elo2014 <- extract.elo(res, "2014-03-25")
elo2015 <- extract.elo(res, "2015-03-25")
elo2016 <- extract.elo(res, "2016-03-25")
elo2017 <- extract.elo(res, "2017-03-11")
write.csv(elo2004, "AE_Elo2004.csv")
write.csv(elo2005, "AE_Elo2005.csv")
write.csv(elo2006, "AE_Elo2006.csv")
write.csv(elo2007, "AE_Elo2007.csv")
write.csv(elo2008, "AE_Elo2008.csv")
write.csv(elo2009, "AE_Elo2009.csv")
write.csv(elo2010, "AE_Elo2010.csv")
write.csv(elo2011, "AE_Elo2011.csv")
write.csv(elo2012, "AE_Elo2012.csv")
write.csv(elo2013, "AE_Elo2013.csv")
write.csv(elo2014, "AE_Elo2014.csv")
write.csv(elo2015, "AE_Elo2015.csv")
write.csv(elo2016, "AE_Elo2016.csv")
write.csv(elo2017, "AE_Elo2017.csv")