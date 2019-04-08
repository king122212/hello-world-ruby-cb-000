describe "Hello World" do
  it 'has a file hello_world.rb' do
    expect(File.exists?("hello_world.rb")).to be_truthy, 
  end

  it 'puts "Hello World!"' do
    puts "Hello World!"
    expect($stdout).to receive(:puts).with("Hello World!")
    load './hello_world.rb'
  end
end