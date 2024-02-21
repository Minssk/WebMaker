function Slider(target, type) {
    console.log('#### Active Banner ####');
    let index = 1;
    let isMoved = true;
    const speed = 1000;

    const transform = "transform " + speed / 1000 + "s";
    let translate = (i) => "translateX(-" + 100 * i + "%)";
    if (type === "V") {
        translate = (i) => "translateY(-" + 100 * i + "%)";
    }

    const slider = document.querySelector(target);
    const sliderRects = slider.getClientRects()[0];
    slider.style["overflow"] = "hidden";

    const container = document.createElement("div");
    container.style["display"] = "flex";
    container.style["flex-direction"] = type === "V" ? "column" : "row";
    container.style["width"] = sliderRects.width + "px";
    container.style["height"] = sliderRects.height + "px";
    container.style["transform"] = translate(index);

    let boxes = [].slice.call(slider.children);
    let originsize = boxes.length;
    boxes = [].concat(boxes[boxes.length - 1], boxes, boxes[0]);

    const size = boxes.length;
    for (let i = 0; i < size; i++) {
        const box = boxes[i];
        box.style["flex"] = "none";
        box.style["flex-wrap"] = "wrap";
        box.style["height"] = "100%";
        box.style["width"] = "100%";
        container.appendChild(box.cloneNode(true));
    }

    for(let i = 0; i < originsize; i++){
        let buttonwrap = document.querySelector('.banner-button-wrap');
        let movebutton = document.createElement("span");
        movebutton.setAttribute("id", "banner-btn-"+(i+1));
        movebutton.setAttribute("class", "banner-btn");
        if(i==0){
            movebutton.classList.add("banner-active");
        }
        movebutton.addEventListener('click', () => {
            switch (target) {
                case '#slider1':
                    s1.move(i+1);
                    break;
                default:
                    alert('오류 발생');
                    break;
            }
        });
        buttonwrap.appendChild(movebutton);
    }


    container.addEventListener("transitionstart", function () {
        isMoved = false;
        setTimeout(() => {
        isMoved = true;
        }, speed);
    });
    container.addEventListener("transitionend", function () {

        if (index === size - 1) {
        index = 1;
        container.style["transition"] = "none";
        container.style["transform"] = translate(index);
        }

        if (index === 0) {
        index = size - 2;
        container.style["transition"] = "none";
        container.style["transform"] = translate(index);
        }
    });

    slider.innerHTML = "";
    slider.appendChild(container);

    return {
        move: function (i) {
        if (isMoved === true) {
            index = i;
            container.style["transition"] = transform;
            container.style["transform"] = translate(index);
            selected(index)
        }
        },
        next: function () {
        if (isMoved === true) {
            index = (index + 1) % size;
            container.style["transition"] = transform;
            container.style["transform"] = translate(index);
            selected(index)
        }
        },
        prev: function () {
        if (isMoved === true) {
            index = index === 0 ? index + size : index;
            index = (index - 1) % size;
            container.style["transition"] = transform;
            container.style["transform"] = translate(index);
            elected(index)
        }
        }
    };
}

function selected(index){
    let btns = document.querySelectorAll('.banner-btn');
    btns.forEach(btn => {
        btn.classList.remove('banner-active');
    });
    let appending = document.querySelector('#banner-btn-'+index);
    if(!appending){
        appending = document.querySelector('#banner-btn-1');
    }
    appending.classList.add('banner-active');
}

const s1 = new Slider("#slider1", "H");
setInterval(() => {
    s1.next();
}, 5000);