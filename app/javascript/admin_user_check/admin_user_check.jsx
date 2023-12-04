class AdminCheckbox extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      isAdmin: false
    };
  }

  handleCheckboxChange = () => {
    this.setState((prevState) => ({
      isAdmin: !prevState.isAdmin
    }));
  };

  render() {
    return (
      <div>
        <label>
          管理者確認
          <input
            type="checkbox"
            checked={this.state.isAdmin}
            onChange={this.handleCheckboxChange}
          />
        </label>
        {this.state.isAdmin && <PasswordInput />}
      </div>
    );
  }
}

class PasswordInput extends React.Component {
  render() {
    return (
      <div>
        <label>パスワード</label>
        <input type="password" />
      </div>
    );
  }
}

// ReactコンポーネントをDOMにレンダリング
ReactDOM.render(<AdminCheckbox />, document.getElementById('react-root'));