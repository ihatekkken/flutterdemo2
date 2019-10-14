class Post{
  const Post({
    this.title,
    this.author,
    this.imageUrl,
  });
  final String title;
  final String author;
  final String imageUrl;
}
final List<Post> posts = [
  Post(
    title:'Florian Olivo',
    author:'lucy',
    imageUrl: 'https://images.unsplash.com/photo-1570747469921-3bae6818e5c7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60' 
  ),
  Post(
    title:'Jonatan Pie',
    author:'tom',
    imageUrl: 'https://images.unsplash.com/photo-1570749955221-c155789232b7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  ),
  Post(
    title:'David Monje',
    author:'gary',
    imageUrl: 'https://images.unsplash.com/photo-1570751485906-b0bbe415db74?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  ),
  Post(
    title:'hello',
    author:'lucy',
    imageUrl: 'https://images.unsplash.com/photo-1570996739868-4274295174ae?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80' 
  ),
  Post(
    title:'world',
    author:'happy',
    imageUrl: 'https://images.unsplash.com/photo-1570994730617-a38f4499ad87?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80' 
  ),
];