import SwiftUI

//MARK: - ContentView Previews

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VStack_Nesting()
//            .previewInterfaceOrientation(.landscapeLeft) - альбомная ориентация.
    }
}

//MARK: - Short Introduction to Symbols

struct SymbolsIntro: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Images")
                .font(.largeTitle)
            Text("Using SF Symbols")
                .foregroundColor(.gray)
            
            Text("You will see I use icons or symbols to add clarity to what I'm demonstrating.These come from Apple's new symbol font library which you can browse using an app called 'SF Symbols'.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundColor(Color.white)
            
            Image(systemName: "hand.thumbsup.fill")
                .font(.largeTitle) // Увеличивает размер иконки
        }
        .font(.title)
        .ignoresSafeArea(edges: .bottom) // Ignore the bottom screen border
    }
}

//MARK: - Layers

struct Layers: View {
    var body: some View {
        VStack(spacing: 40) {
            
            Text("Layers")
                .font(.largeTitle)
            
            Text("The Basics")
                .foregroundColor(.gray)
            
            Text("With SwiftUI views, you can add layers on top (.overlay) and behind (.background) the view.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundColor(Color.white)
            
            Image("image1") // Show an image from Assets.xcassets
                .opacity(0.7) // Make image only 70% solid
                .background(Color.red.opacity(0.3)) // Layer behind image
                .background(Color.yellow.opacity(0.3)) // Layer behind red
                .background(Color.blue.opacity(0.3)) // Layer behind yellow
                .overlay(Text("KisiMisi")) // Layer on top of image
        }
        .font(.title)
    }
}

//MARK: - Short Introduction to Shapes

struct Shapes: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Shapes")
                .font(.largeTitle)
            Text("Short Introduction")
                .foregroundColor(.gray)
            Text("I'll make shapes, give them color and put them behind other views justfor decoration.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundColor(Color.white)
            Text("This text has a rounded rectangle behind it")
                .foregroundColor(Color.white)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 20) // Создаем фигуру
                        .foregroundColor(Color.blue)) // Цвет голубой
                .padding()
            Text("But sometimes I'll use color and a corner radius:")
            Text("This text has a color with a corner radius")
                .foregroundColor(Color.white)
                .padding()
                .background(Color.blue) // Используем цвет для смены фона
                .cornerRadius(20) // Закругленные края по всему текст view
        }
        .font(.title)
    }
}

//MARK: - Some Views Pull In


struct ViewSizes_Pull_In: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Layout Behavior").font(.largeTitle)
            Text("Втягивающиеся вьюхи").foregroundColor(Color.gray)
            Text("Некоторые вьюхи минимизируют размер frame size, поэтому он равен размеру содержимого внутри него.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.purple)
                .foregroundColor(Color.white)
            
            Image(systemName: "arrow.down.to.line.alt")
            
            HStack {
                Image(systemName: "arrow.right.to.line.alt")
                Text("Тут наш текст")
                Image(systemName: "arrow.left.to.line.alt")
            }
            
            Image(systemName: "arrow.up.to.line.alt")
            
            Text("Pull-In вьюхи имеют тенденцию центрироваться по отношению к родительской вьюхи")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.purple)
                .foregroundColor(Color.white)
            
        }
    }
}


//MARK: - Some Views Push Out

struct ViewSizes_Push_Out: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Layout Behavior")
                .foregroundColor(Color.black)
            Text("Views that Push Out")
                .font(.title).foregroundColor(.gray)
            Text("Некоторые вьюхи растягиваются, чтобы заполнить все доступное пространство внутри своего родителя.")
                .frame(maxWidth: .infinity).padding().font(.title)
                .background(Color.purple)
            
            Color.purple     //     Цвет растягивается на весь экран
            
                .overlay(
                    Image(systemName: "arrow.up.left")
                        .padding(), alignment: .topLeading)
                .overlay(
                    Image(systemName: "arrow.up.right")
                        .padding(), alignment: .topTrailing)
                .overlay(
                    Image(systemName: "arrow.down.left")
                        .padding(), alignment: .bottomLeading)
                .overlay(
                    Image(systemName: "arrow.down.right")
                        .padding(), alignment: .bottomTrailing)
                .overlay(Text("Colors это Push-Out вьюха"))
            
        }
        .font(.largeTitle)
        .foregroundColor(Color.white)
    }
}

//MARK: - VStack

//"VStack pull-in container view, max 10 view"


struct VStack_Intro : View {
    var body: some View {
        VStack(spacing: 20) {
            Text("View 0")
            Text("View 1")
            Text("View 2")
            Text("View 3")
            Text("View 4")
            Text("View 5")
            Text("View 6")
            Text("View 7")
            Text("View 8")
            Text("View 9")
            //  Text("View 10") -   уже ошибку выдаст, максимум 10 элементов VStack
        }
        .font(.title)
    }
    
}


//MARK: - VStack Nesting Вложения

struct VStack_Nesting: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Hello")
                .font(.largeTitle)
            
            VStack {
                Text("VStack внутри VStack'a")
                Divider()
                Text("Вложенность может быть полезно изза ограничения в 10 штук")
                Divider()
                Text("Иначе ошибка")
            }
            .padding()
            .foregroundColor(Color.white)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color.purple))
            .padding()
        }
        .font(.title)
    }
}


