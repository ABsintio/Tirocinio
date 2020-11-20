within TestModel;
model MyModel

    Parameters Params;
    MyClass myclass;

    equation
        myclass.a = Params.a;
        myclass.b = Params.b;
        
end MyModel;
