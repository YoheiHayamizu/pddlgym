
(define (problem footwear) (:domain footwear)
  (:objects
        beach0 - place
	beach1 - place
	beach2 - place
	beach3 - place
	beach4 - place
	beach5 - place
	foot1 - foot
	foot2 - foot
	forest0 - place
	forest1 - place
	forest2 - place
	forest3 - place
	forest4 - place
	forest5 - place
	gym0 - place
	gym1 - place
	gym2 - place
	gym3 - place
	gym4 - place
	gym5 - place
	home - place
	office0 - place
	office1 - place
	office2 - place
	office3 - place
	office4 - place
	office5 - place
	shoe0 - shoe
	shoe1 - shoe
	shoe10 - shoe
	shoe11 - shoe
	shoe12 - shoe
	shoe13 - shoe
	shoe14 - shoe
	shoe15 - shoe
	shoe16 - shoe
	shoe17 - shoe
	shoe18 - shoe
	shoe19 - shoe
	shoe2 - shoe
	shoe20 - shoe
	shoe21 - shoe
	shoe22 - shoe
	shoe23 - shoe
	shoe24 - shoe
	shoe25 - shoe
	shoe26 - shoe
	shoe27 - shoe
	shoe28 - shoe
	shoe29 - shoe
	shoe3 - shoe
	shoe30 - shoe
	shoe31 - shoe
	shoe32 - shoe
	shoe33 - shoe
	shoe34 - shoe
	shoe35 - shoe
	shoe36 - shoe
	shoe37 - shoe
	shoe38 - shoe
	shoe39 - shoe
	shoe4 - shoe
	shoe40 - shoe
	shoe41 - shoe
	shoe42 - shoe
	shoe43 - shoe
	shoe44 - shoe
	shoe45 - shoe
	shoe5 - shoe
	shoe6 - shoe
	shoe7 - shoe
	shoe8 - shoe
	shoe9 - shoe
	sock0 - sock
	sock1 - sock
	sock10 - sock
	sock11 - sock
	sock12 - sock
	sock13 - sock
	sock14 - sock
	sock15 - sock
	sock16 - sock
	sock17 - sock
	sock18 - sock
	sock19 - sock
	sock2 - sock
	sock20 - sock
	sock21 - sock
	sock22 - sock
	sock23 - sock
	sock24 - sock
	sock25 - sock
	sock26 - sock
	sock27 - sock
	sock28 - sock
	sock29 - sock
	sock3 - sock
	sock30 - sock
	sock31 - sock
	sock32 - sock
	sock33 - sock
	sock34 - sock
	sock35 - sock
	sock36 - sock
	sock37 - sock
	sock38 - sock
	sock39 - sock
	sock4 - sock
	sock40 - sock
	sock41 - sock
	sock42 - sock
	sock43 - sock
	sock44 - sock
	sock45 - sock
	sock5 - sock
	sock6 - sock
	sock7 - sock
	sock8 - sock
	sock9 - sock
  )
  (:init 
	(at home)
	(beach beach0)
	(beach beach1)
	(beach beach2)
	(beach beach3)
	(beach beach4)
	(beach beach5)
	(forest forest0)
	(forest forest1)
	(forest forest2)
	(forest forest3)
	(forest forest4)
	(forest forest5)
	(gym gym0)
	(gym gym1)
	(gym gym2)
	(gym gym3)
	(gym gym4)
	(gym gym5)
	(home home)
	(isbare foot1)
	(isbare foot2)
	(isblue sock0)
	(isblue sock10)
	(isblue sock11)
	(isblue sock12)
	(isblue sock13)
	(isblue sock16)
	(isblue sock17)
	(isblue sock18)
	(isblue sock19)
	(isblue sock1)
	(isblue sock22)
	(isblue sock23)
	(isblue sock28)
	(isblue sock29)
	(isblue sock2)
	(isblue sock30)
	(isblue sock31)
	(isblue sock32)
	(isblue sock33)
	(isblue sock36)
	(isblue sock37)
	(isblue sock3)
	(isblue sock40)
	(isblue sock41)
	(isblue sock42)
	(isblue sock43)
	(isblue sock44)
	(isblue sock45)
	(isblue sock4)
	(isblue sock5)
	(isblue sock6)
	(isblue sock7)
	(isblue sock8)
	(isblue sock9)
	(isboot shoe0)
	(isboot shoe12)
	(isboot shoe13)
	(isboot shoe14)
	(isboot shoe15)
	(isboot shoe16)
	(isboot shoe17)
	(isboot shoe1)
	(isboot shoe28)
	(isboot shoe29)
	(isboot shoe2)
	(isboot shoe32)
	(isboot shoe33)
	(isboot shoe34)
	(isboot shoe35)
	(isboot shoe3)
	(isboot shoe44)
	(isboot shoe45)
	(isdressshoe shoe22)
	(isdressshoe shoe23)
	(isdressshoe shoe36)
	(isdressshoe shoe37)
	(isdressshoe shoe40)
	(isdressshoe shoe41)
	(isdressshoe shoe42)
	(isdressshoe shoe43)
	(isplain sock0)
	(isplain sock12)
	(isplain sock13)
	(isplain sock16)
	(isplain sock17)
	(isplain sock18)
	(isplain sock19)
	(isplain sock1)
	(isplain sock26)
	(isplain sock27)
	(isplain sock2)
	(isplain sock30)
	(isplain sock31)
	(isplain sock32)
	(isplain sock33)
	(isplain sock38)
	(isplain sock39)
	(isplain sock3)
	(isplain sock40)
	(isplain sock41)
	(isplain sock44)
	(isplain sock45)
	(isplain sock4)
	(isplain sock5)
	(isred sock14)
	(isred sock15)
	(isred sock20)
	(isred sock21)
	(isred sock24)
	(isred sock25)
	(isred sock26)
	(isred sock27)
	(isred sock34)
	(isred sock35)
	(isred sock38)
	(isred sock39)
	(issandle shoe10)
	(issandle shoe11)
	(issandle shoe18)
	(issandle shoe19)
	(issandle shoe30)
	(issandle shoe31)
	(issandle shoe6)
	(issandle shoe7)
	(issneaker shoe20)
	(issneaker shoe21)
	(issneaker shoe24)
	(issneaker shoe25)
	(issneaker shoe26)
	(issneaker shoe27)
	(issneaker shoe38)
	(issneaker shoe39)
	(issneaker shoe4)
	(issneaker shoe5)
	(issneaker shoe8)
	(issneaker shoe9)
	(isstriped sock10)
	(isstriped sock11)
	(isstriped sock14)
	(isstriped sock15)
	(isstriped sock20)
	(isstriped sock21)
	(isstriped sock22)
	(isstriped sock23)
	(isstriped sock24)
	(isstriped sock25)
	(isstriped sock28)
	(isstriped sock29)
	(isstriped sock34)
	(isstriped sock35)
	(isstriped sock36)
	(isstriped sock37)
	(isstriped sock42)
	(isstriped sock43)
	(isstriped sock6)
	(isstriped sock7)
	(isstriped sock8)
	(isstriped sock9)
	(office office0)
	(office office1)
	(office office2)
	(office office3)
	(office office4)
	(office office5)
	(shoefree shoe0)
	(shoefree shoe10)
	(shoefree shoe11)
	(shoefree shoe12)
	(shoefree shoe13)
	(shoefree shoe14)
	(shoefree shoe15)
	(shoefree shoe16)
	(shoefree shoe17)
	(shoefree shoe18)
	(shoefree shoe19)
	(shoefree shoe1)
	(shoefree shoe20)
	(shoefree shoe21)
	(shoefree shoe22)
	(shoefree shoe23)
	(shoefree shoe24)
	(shoefree shoe25)
	(shoefree shoe26)
	(shoefree shoe27)
	(shoefree shoe28)
	(shoefree shoe29)
	(shoefree shoe2)
	(shoefree shoe30)
	(shoefree shoe31)
	(shoefree shoe32)
	(shoefree shoe33)
	(shoefree shoe34)
	(shoefree shoe35)
	(shoefree shoe36)
	(shoefree shoe37)
	(shoefree shoe38)
	(shoefree shoe39)
	(shoefree shoe3)
	(shoefree shoe40)
	(shoefree shoe41)
	(shoefree shoe42)
	(shoefree shoe43)
	(shoefree shoe44)
	(shoefree shoe45)
	(shoefree shoe4)
	(shoefree shoe5)
	(shoefree shoe6)
	(shoefree shoe7)
	(shoefree shoe8)
	(shoefree shoe9)
	(sockfree sock0)
	(sockfree sock10)
	(sockfree sock11)
	(sockfree sock12)
	(sockfree sock13)
	(sockfree sock14)
	(sockfree sock15)
	(sockfree sock16)
	(sockfree sock17)
	(sockfree sock18)
	(sockfree sock19)
	(sockfree sock1)
	(sockfree sock20)
	(sockfree sock21)
	(sockfree sock22)
	(sockfree sock23)
	(sockfree sock24)
	(sockfree sock25)
	(sockfree sock26)
	(sockfree sock27)
	(sockfree sock28)
	(sockfree sock29)
	(sockfree sock2)
	(sockfree sock30)
	(sockfree sock31)
	(sockfree sock32)
	(sockfree sock33)
	(sockfree sock34)
	(sockfree sock35)
	(sockfree sock36)
	(sockfree sock37)
	(sockfree sock38)
	(sockfree sock39)
	(sockfree sock3)
	(sockfree sock40)
	(sockfree sock41)
	(sockfree sock42)
	(sockfree sock43)
	(sockfree sock44)
	(sockfree sock45)
	(sockfree sock4)
	(sockfree sock5)
	(sockfree sock6)
	(sockfree sock7)
	(sockfree sock8)
	(sockfree sock9)
	(socksmatch sock0 sock1)
	(socksmatch sock10 sock11)
	(socksmatch sock11 sock10)
	(socksmatch sock12 sock13)
	(socksmatch sock13 sock12)
	(socksmatch sock14 sock15)
	(socksmatch sock15 sock14)
	(socksmatch sock16 sock17)
	(socksmatch sock17 sock16)
	(socksmatch sock18 sock19)
	(socksmatch sock19 sock18)
	(socksmatch sock1 sock0)
	(socksmatch sock20 sock21)
	(socksmatch sock21 sock20)
	(socksmatch sock22 sock23)
	(socksmatch sock23 sock22)
	(socksmatch sock24 sock25)
	(socksmatch sock25 sock24)
	(socksmatch sock26 sock27)
	(socksmatch sock27 sock26)
	(socksmatch sock28 sock29)
	(socksmatch sock29 sock28)
	(socksmatch sock2 sock3)
	(socksmatch sock30 sock31)
	(socksmatch sock31 sock30)
	(socksmatch sock32 sock33)
	(socksmatch sock33 sock32)
	(socksmatch sock34 sock35)
	(socksmatch sock35 sock34)
	(socksmatch sock36 sock37)
	(socksmatch sock37 sock36)
	(socksmatch sock38 sock39)
	(socksmatch sock39 sock38)
	(socksmatch sock3 sock2)
	(socksmatch sock40 sock41)
	(socksmatch sock41 sock40)
	(socksmatch sock42 sock43)
	(socksmatch sock43 sock42)
	(socksmatch sock44 sock45)
	(socksmatch sock45 sock44)
	(socksmatch sock4 sock5)
	(socksmatch sock5 sock4)
	(socksmatch sock6 sock7)
	(socksmatch sock7 sock6)
	(socksmatch sock8 sock9)
	(socksmatch sock9 sock8)
  )
  (:goal (and
	(presentationdoneat office2)
	(hikedat forest4)
	(presentationdoneat office1)
	(workedoutat gym5)
	(workedoutat gym0)
	(workedoutat gym3)))
)