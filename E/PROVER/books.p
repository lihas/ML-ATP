dom(U) <- chapter(U).
dom(U) <- book(U).
book(U) <- chapter(U).
dom(a) <- chapter(U).
<- chapter(a).
dom(a).
