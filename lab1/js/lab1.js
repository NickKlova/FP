function Singelton(arg) { 
    return Array.of(arg)
}

function Null(list) {
    return Array.isArray(list);
}

function Snoc(list, arg) {
    if (!Array.isArray(list)){    
        throw new Error();
    }
    list.push(arg);    
    return list
}

function Length(list) {
    if (!Array.isArray(list)){    
        throw new Error();
    }

    // return list.length

    let count = 0;
    for (item of list){
        count++;
    }
    return count;
}