function showService(value) {
    let v = value.value;
    switch (v) {
        case "Villa":
            document.getElementById("standard").style.display="block";
            document.getElementById("convenience").style.display="block";
            document.getElementById("pool").style.display="block";
            document.getElementById("floors").style.display="block";
            document.getElementById("sv-free").style.display="none";
            break;
        case "House":
            document.getElementById("standard").style.display="block";
            document.getElementById("convenience").style.display="block";
            document.getElementById("pool").style.display="block";
            document.getElementById("floors").style.display="none";
            document.getElementById("sv-free").style.display="none";
            break;
        case "Room":
            document.getElementById("standard").style.display="none";
            document.getElementById("convenience").style.display="none";
            document.getElementById("pool").style.display="none";
            document.getElementById("floors").style.display="none";
            document.getElementById("sv-free").style.display="block";
            break;
    }
}